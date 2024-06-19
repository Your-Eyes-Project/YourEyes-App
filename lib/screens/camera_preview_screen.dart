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

  CameraController? controller;
  List<CameraDescription>? cameras;

  int capturedFrames = 1;
  int skipRate = 2;
  bool isUserPromptProcessing = false;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async{
    cameras = await availableCameras();
    CameraDescription? backCamera = cameras?.firstWhere((camera) => camera.lensDirection == CameraLensDirection.back);
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
          streamVideo(image);
        }
        capturedFrames++;
      });
    });
  }

  Future<void> streamVideo(CameraImage image) async {
    String text = await client.streamVideo(image);
    print("Image Frame Sent");
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
    if (controller == null || !controller!.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return AspectRatio(
      aspectRatio: controller!.value.aspectRatio,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: CameraPreview(controller!),
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
