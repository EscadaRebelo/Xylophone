import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
      XylophoneApp()
  );
}

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color, required int soundNumber, required String noteLetter}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(
          noteLetter,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1, noteLetter: 'Dó'),
              buildKey(color: Colors.orange, soundNumber: 2, noteLetter: 'Ré'),
              buildKey(color: Colors.yellow, soundNumber: 3, noteLetter: 'Mi'),
              buildKey(color: Colors.green, soundNumber: 4, noteLetter: 'Fá'),
              buildKey(color: Colors.teal, soundNumber: 5, noteLetter: 'Sol'),
              buildKey(color: Colors.blue, soundNumber: 6, noteLetter: 'Lá'),
              buildKey(color: Colors.purple, soundNumber: 7, noteLetter: 'Si'),
              buildKey(color: Colors.pink, soundNumber: 8, noteLetter: 'Dó'),
            ],
          ),
        ),
      ),
    );
  }
}
