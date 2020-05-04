import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
//  method to play the sound
  void ring(int colorNumber) {
    final player = AudioCache();
    player.play('note$colorNumber.wav');
  }

//  return the Expanded widget
  Expanded buildKey({Color color, int keyNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          ring(keyNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.blue, keyNumber: 1),
                buildKey(color: Colors.red, keyNumber: 2),
                buildKey(color: Colors.green, keyNumber: 3),
                buildKey(color: Colors.yellow, keyNumber: 4),
                buildKey(color: Colors.lightBlue, keyNumber: 5),
                buildKey(color: Colors.lightGreen, keyNumber: 6),
                buildKey(color: Colors.teal, keyNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
