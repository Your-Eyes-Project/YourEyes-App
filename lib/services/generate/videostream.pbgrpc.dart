//
//  Generated code. Do not modify.
//  source: videostream.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'videostream.pb.dart' as $0;

export 'videostream.pb.dart';

@$pb.GrpcServiceName('videostream.VideoStreamer')
class VideoStreamerClient extends $grpc.Client {
  static final _$streamVideo = $grpc.ClientMethod<$0.VideoFrame, $0.StreamStatus>(
      '/videostream.VideoStreamer/StreamVideo',
      ($0.VideoFrame value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StreamStatus.fromBuffer(value));

  VideoStreamerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.StreamStatus> streamVideo($async.Stream<$0.VideoFrame> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamVideo, request, options: options);
  }
}

@$pb.GrpcServiceName('videostream.VideoStreamer')
abstract class VideoStreamerServiceBase extends $grpc.Service {
  $core.String get $name => 'videostream.VideoStreamer';

  VideoStreamerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.VideoFrame, $0.StreamStatus>(
        'StreamVideo',
        streamVideo,
        true,
        true,
        ($core.List<$core.int> value) => $0.VideoFrame.fromBuffer(value),
        ($0.StreamStatus value) => value.writeToBuffer()));
  }

  $async.Stream<$0.StreamStatus> streamVideo($grpc.ServiceCall call, $async.Stream<$0.VideoFrame> request);
}
@$pb.GrpcServiceName('videostream.ConfigurationService')
class ConfigurationServiceClient extends $grpc.Client {
  static final _$setupDetection = $grpc.ClientMethod<$0.SetupRequest, $0.SetupResponse>(
      '/videostream.ConfigurationService/SetupDetection',
      ($0.SetupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetupResponse.fromBuffer(value));

  ConfigurationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.SetupResponse> setupDetection($0.SetupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setupDetection, request, options: options);
  }
}

@$pb.GrpcServiceName('videostream.ConfigurationService')
abstract class ConfigurationServiceBase extends $grpc.Service {
  $core.String get $name => 'videostream.ConfigurationService';

  ConfigurationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SetupRequest, $0.SetupResponse>(
        'SetupDetection',
        setupDetection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetupRequest.fromBuffer(value),
        ($0.SetupResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SetupResponse> setupDetection_Pre($grpc.ServiceCall call, $async.Future<$0.SetupRequest> request) async {
    return setupDetection(call, await request);
  }

  $async.Future<$0.SetupResponse> setupDetection($grpc.ServiceCall call, $0.SetupRequest request);
}
