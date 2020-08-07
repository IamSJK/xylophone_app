import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Xylophone(),
    ),
  );
}

class Xylophone extends StatelessWidget {
  void playMusic(int number) {
    final audioPlayer = AudioCache(); // runtime 'final' , compile time 'const'
    audioPlayer.play('note$number.wav');
  }

  Expanded builtKey({Color colour, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: colour,
        onPressed: () {
          playMusic(soundNumber);
        },
        child: Text('Press Me'),
      ),
    );
  }

//  Expanded builtKey({Color colour,})
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            builtKey(colour: Colors.deepPurple, soundNumber: 1),
            builtKey(colour: Colors.blueAccent, soundNumber: 2),
            builtKey(colour: Colors.lightBlueAccent, soundNumber: 3),
            builtKey(colour: Colors.green, soundNumber: 4),
            builtKey(colour: Colors.yellow, soundNumber: 5),
            builtKey(colour: Colors.orange, soundNumber: 6),
            builtKey(colour: Colors.red, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
