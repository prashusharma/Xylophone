import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Xylophone',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.green, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.blue, soundNumber: 4),
              buildKey(color: Colors.deepOrange, soundNumber: 5),
              buildKey(color: Colors.indigo, soundNumber: 6),
              buildKey(color: Colors.redAccent, soundNumber: 7),

              // Expanded(
              //   child: FlatButton(
              //     color: Colors.red,
              //     onPressed: () {
              //       playSound(1);
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.green,
              //     onPressed: () {
              //       playSound(2);
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.yellow,
              //     onPressed: () {
              //       playSound(3);
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.blue,
              //     onPressed: () {
              //       playSound(4);
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.deepOrange,
              //     onPressed: () {
              //       playSound(5);
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.indigo,
              //     onPressed: () {
              //       playSound(6);
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.redAccent,
              //     onPressed: () {
              //       playSound(7);
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
