import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
void main() {
  runApp(const XylophoneApp());
}
class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[500],
      body: Center(
        child: GestureDetector(
          onTap: (){
            AssetsAudioPlayer.newPlayer().open(
              Audio("assets/audio/B.wav"),
            );
          },
          child: Text("Click Me!",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      ),
    );
  }
}

