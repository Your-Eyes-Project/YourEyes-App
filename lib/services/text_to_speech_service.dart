import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeechService {
  final FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  TextToSpeechService() {
    flutterTts.setStartHandler(() {
      isSpeaking = true;
    });

    flutterTts.setCompletionHandler(() {
      isSpeaking = false;
    });

    flutterTts.setErrorHandler((msg) {
      isSpeaking = false;
    });

    flutterTts.setCancelHandler(() {
      isSpeaking = false;
    });

    initializeTts();
  }

  void initializeTts() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.setVolume(1.0);
  }

  Future speak(String text) async {
    if (text.isNotEmpty && !isSpeaking) {
      await flutterTts.speak(text);
    }
  }

  Future stop() async {
    await flutterTts.stop();
  }
}
