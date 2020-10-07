import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void getTuneNum(int tuneNum) {
    final player = AudioCache();
    player.play('music_files/note$tuneNum.wav');
  }

  Expanded playTune({Color color, int tuneNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          getTuneNum(tuneNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            playTune(color: Colors.red, tuneNum: 1),
            playTune(color: Colors.orange, tuneNum: 2),
            playTune(color: Colors.yellow, tuneNum: 3),
            playTune(color: Colors.green, tuneNum: 4),
            playTune(color: Colors.blue, tuneNum: 5),
            playTune(color: Colors.indigo, tuneNum: 6),
            playTune(color: Colors.blueAccent, tuneNum: 7),
          ],
        ),
      ),
    );
  }
}
