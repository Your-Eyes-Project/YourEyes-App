import 'package:speech_to_text/speech_to_text.dart';

class SpeechToTextService {
  late SpeechToText speechToText;
  bool isListening = false;
  String text = 'Press the button and start speaking';
  Function(String text)? onResult;
  Function(bool isListening)? onListeningChanged;

  SpeechToTextService({this.onResult, this.onListeningChanged}) {
    speechToText = SpeechToText();
  }

  Future<void> initialize() async {
    bool available = await speechToText.initialize(
      onStatus: (status) {
        if (status == 'notListening') {
          onListeningChanged?.call(false);
        }
      },
      onError: (errorNotification) {
      },
    );
    if (!available) {
    } else {
    }
  }

  void startListening() async {
    if (!isListening && await speechToText.initialize()) {
      speechToText.listen(
        onResult: (result) {
          text = result.recognizedWords;
          onResult?.call(text);
        },
        listenFor: const Duration(minutes: 1),

      );
      isListening = true;
      onListeningChanged?.call(true);
    }
  }

  void stopListening() {
    if (isListening) {
      speechToText.stop();
      isListening = false;
      onListeningChanged?.call(false);
    }
  }
}
