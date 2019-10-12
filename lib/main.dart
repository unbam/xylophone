import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color soundColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: soundColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 1, soundColor: Colors.red),
              buildKey(soundNumber: 2, soundColor: Colors.orange),
              buildKey(soundNumber: 3, soundColor: Colors.yellow),
              buildKey(soundNumber: 4, soundColor: Colors.green),
              buildKey(soundNumber: 5, soundColor: Colors.teal),
              buildKey(soundNumber: 6, soundColor: Colors.blue),
              buildKey(soundNumber: 7, soundColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
