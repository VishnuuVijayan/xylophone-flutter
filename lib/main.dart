import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int code) {
    final player = AudioCache();
    player.play('note$code.wav');
  }

  Expanded buildKey({int code, Color color}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(code);
          }),
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
              buildKey(code: 1, color: Colors.red),
              buildKey(code: 2, color: Colors.orange),
              buildKey(code: 3, color: Colors.yellow),
              buildKey(code: 4, color: Colors.green),
              buildKey(code: 5, color: Colors.teal),
              buildKey(code: 6, color: Colors.blue),
              buildKey(code: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
