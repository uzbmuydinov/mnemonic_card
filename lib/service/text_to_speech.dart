
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:mnemonic_card/view/app_colors.dart';
class TextToSpeach extends StatefulWidget {
  const TextToSpeach({Key? key}) : super(key: key);

  @override
  State<TextToSpeach> createState() => _TextToSpeachState();
}

class _TextToSpeachState extends State<TextToSpeach> {
  final FlutterTts flutterTts=FlutterTts();
  
  // for speak text
  
  void speak(String text) async{
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(0.5);
    await flutterTts.setSpeechRate(0.8);
    await flutterTts.speak(text);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      body: Scaffold(
        appBar: AppBar(
          title: Text("Text to speech"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            speak("Nimadirlar");
          },
        ),
      ),
    );
  }
}
