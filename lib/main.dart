import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playAudio(String file) {
    final player = AudioCache();
    player.play(file);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    playAudio("note1.wav");
                  },
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    playAudio("note2.wav");
                  },
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    playAudio("note3.wav");
                  },
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    playAudio("note4.wav");
                  },
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    playAudio("note5.wav");
                  },
                  child: Container(
                    color: Colors.brown,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
