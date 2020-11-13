import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(xylow());
}

class xylow extends StatelessWidget {
  void play_sound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded creat_button(int number, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          play_sound(number);
        },
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
            children: [
              creat_button(1, Colors.red),
              creat_button(2, Colors.blue),
              creat_button(3, Colors.green),
              creat_button(4, Colors.limeAccent),
              creat_button(5, Colors.deepPurple),
              creat_button(6, Colors.lightBlueAccent),
              creat_button(7, Colors.teal),
            ],
          ),
        ),
      ),
    );
  }
}
