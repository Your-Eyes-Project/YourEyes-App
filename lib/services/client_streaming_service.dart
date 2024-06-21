import 'dart:async';

import 'package:camera/camera.dart';
import 'package:grpc/grpc.dart';

import 'generate/videostream.pbgrpc.dart';

class ClientStreamingService {
  late ClientChannel channel;
  late VideoStreamerClient videoStub;
  late ConfigurationServiceClient configurationStub;

  ClientStreamingService(String host, int port) {
    channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    videoStub = VideoStreamerClient(channel);
    configurationStub = ConfigurationServiceClient(channel);
  }

  Future<String> streamVideo(CameraImage image) async {
    StreamController<VideoFrame> controller = StreamController<VideoFrame>();
    VideoFrame frame;
    Plane firstPlane = image.planes[0];
    Plane secondPlane = image.planes[1];
    Plane thirdPlane = image.planes[2];
    String output = "";

    frame = VideoFrame()
      ..yPlane = firstPlane.bytes
      ..uPlane = secondPlane.bytes
      ..vPlane = thirdPlane.bytes
      ..yWidth = image.width
      ..yHeight = image.height;

    controller.add(frame);

    try {
      await for (var status in videoStub.streamVideo(controller.stream)) {
        for (var detection in status.detections) {
          output += 'Detection: ${detection.label}, Direction: '
              '${detection.direction}, Distance: ${detection.distance} meters';
        }
        return output;
      }
    } catch (e) {
      return "Please check your connection";
    } finally {
      await controller.close();
    }

    return output;
  }


  Future<void> sendConfiguration(String configuration, bool flag) async {
    var config = SetupRequest()
      ..userQuestion = configuration
      ..filterObjects = flag;

    await configurationStub.setupDetection(config);
  }

  void shutdown() async {
    await channel.shutdown();
  }
}
