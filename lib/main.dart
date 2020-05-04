import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note1.wav');
                    },
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note2.wav');
                    },
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note3.wav');
                    },
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note4.wav');
                    },
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note5.wav');
                    },
                    child: Container(
                      color: Colors.cyan,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note6.wav');
                    },
                    child: Container(
                      color: Colors.lightGreen,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note7.wav');
                    },
                    child: Container(
                      color: Colors.teal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
