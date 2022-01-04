import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: createKeys(),
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}

List<Widget> createKeys() {
  List<Widget> keys = [];
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.brown,
  ];

  for (var i = 0; i < colors.length; i++) {
    keys.add(
      Expanded(
        child: TextButton(
          onPressed: () {
            final player = AudioCache();
            player.play('note${i + 1}.wav');
          },
          style: TextButton.styleFrom(
            backgroundColor: colors[i],
          ),
        ),
      ),
    );
  }
  return keys;
}
