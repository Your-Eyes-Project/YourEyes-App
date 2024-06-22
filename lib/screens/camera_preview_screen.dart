import 'dart:math' as math;

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../services/client_streaming_service.dart';
import '../services/speech_to_text_service.dart';
import '../services/text_to_speech_service.dart';

class CameraPreviewScreen extends StatefulWidget {
  const CameraPreviewScreen({super.key});

  @override
  CameraPreviewScreenState createState() => CameraPreviewScreenState();
}

class CameraPreviewScreenState extends State<CameraPreviewScreen> {
  late ClientStreamingService client;
  late SpeechToTextService speechToText;
  late TextToSpeechService textToSpeech;

  late final int width;
  late final int height;

  CameraController? controller;
  List<CameraDescription>? cameras;

  int capturedFrames = 1;
  int skipRate = 75;

  bool areFramesCaptured = false;
  bool isUserPromptProcessing = false;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    cameras = await availableCameras();
    CameraDescription? backCamera = cameras?.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.back);
    controller = CameraController(backCamera!, ResolutionPreset.medium);

    speechToText = SpeechToTextService();
    textToSpeech = TextToSpeechService();

    client = ClientStreamingService('IP Address', 0);
    client.sendConfiguration("", false);

    controller!.initialize().then((_) {
      if (!mounted) return;
      setState(() {});

      controller!.startImageStream((CameraImage image) {
        if (capturedFrames % skipRate == 0 &&
            !textToSpeech.isSpeaking &&
            !speechToText.isListening) {
          capturedFrames = 1;

          if (areFramesCaptured == false) {
            setState(() {
              width = image.width;
              height = image.height;
              areFramesCaptured = true;
            });
          }

          streamVideo(image);
        }
        capturedFrames++;
      });
    });
  }

  Future<void> streamVideo(CameraImage image) async {
    String text = await client.streamVideo(image);
    if (!textToSpeech.isSpeaking) {
      textToSpeech.speak(text);
    }
  }

  void startListening() async {
    if (textToSpeech.isSpeaking) {
      await textToSpeech.stop();
    }
    setState(() {});
    speechToText.text = "";
    speechToText.startListening();
  }

  Future<void> stopListening() async {
    setState(() {});
    speechToText.stopListening();

    isUserPromptProcessing = true;
    await client.sendConfiguration(speechToText.text, true);
    isUserPromptProcessing = false;
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null ||
        !controller!.value.isInitialized ||
        areFramesCaptured == false) {
      return const Center(child: CircularProgressIndicator());
    }

    return AspectRatio(
      aspectRatio: controller!.value.aspectRatio,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: areFramesCaptured
                      ? width.toDouble()
                      : MediaQuery.of(context).size.width,
                  height: areFramesCaptured
                      ? height.toDouble()
                      : MediaQuery.of(context).size.height,
                  child: Transform.rotate(
                    angle: math.pi / 2, // Adjust the angle as needed
                    child: AspectRatio(
                      aspectRatio: controller!.value.aspectRatio,
                      child: CameraPreview(controller!),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed:
                    speechToText.isListening ? stopListening : startListening,
                tooltip: 'Listen',
                backgroundColor: Colors.red,
                child: Icon(
                  speechToText.isListening ? Icons.mic : Icons.mic_off,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
