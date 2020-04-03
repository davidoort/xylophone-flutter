import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              XyloNote(noteNumber: '1'),
              XyloNote(noteNumber: '2'),
              XyloNote(noteNumber: '3'),
              XyloNote(noteNumber: '4'),
              XyloNote(noteNumber: '5'),
              XyloNote(noteNumber: '6'),
              XyloNote(noteNumber: '7'),
            ],
          ),
        ),
      ),
    );
  }
}

class XyloNote extends StatelessWidget {
  final String noteNumber;
  XyloNote({@required this.noteNumber});
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.zero,
        color: Colors.blue[900 - int.parse(noteNumber) * 100],
        child: null,
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNumber.wav');
        },
      ),
    );
  }
}
