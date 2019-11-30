import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'white_key.dart';
import 'black_key.dart';

class Keyboard extends StatefulWidget {
  @override
  _KeyboardState createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  AudioCache _audioCache;

  AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

  @override
  void initState() {
    super.initState();
    // create this only once
    _audioCache = AudioCache(prefix: "audio/", fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sinatra',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyKeyboard(title: 'Sinatra'),
    );
  }
}

class MyKeyboard extends StatefulWidget {
  MyKeyboard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyKeyboardState createState() => _MyKeyboardState();
}

class _MyKeyboardState extends State<MyKeyboard> {
  AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    // create this only once
    _audioCache = AudioCache(prefix: "audio/", fixedPlayer: AudioPlayer());
  }

  void _playNote(String path) {
    _audioCache.fixedPlayer.stop();
    _audioCache.play(path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(children: [

        // white keys

        Positioned(
          top: 0,
          left: 0,
          width: 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height,
          child: 
              WhiteKey(
                onPressed: () =>  _playNote('C2.mp3'),
              ),
        ),
        Positioned(
          top: 0,
          left: MediaQuery.of(context).size.width / 100 + 93 * MediaQuery.of(context).size.width / 800,
          width: 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height,
          child: 
              WhiteKey(
                onPressed: () => _playNote('D2.mp3'),
              ),
        ),
        Positioned(
          top: 0,
          left: 2 * (MediaQuery.of(context).size.width / 100 + 93 * MediaQuery.of(context).size.width / 800),
          width: 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height,
          child: 
              WhiteKey(
                onPressed: () => _playNote('E2.mp3'),
              ),
        ),
        Positioned(
          top: 0,
          left: 3 * (MediaQuery.of(context).size.width / 100 + 93 * MediaQuery.of(context).size.width / 800),
          width: 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height,
          child: 
              WhiteKey(
                onPressed: () => _playNote('F2.mp3'),
              ),
        ),
        Positioned(
          top: 0,
          left: 4 * (MediaQuery.of(context).size.width / 100 + 93 * MediaQuery.of(context).size.width / 800),
          width: 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height,
          child: 
              WhiteKey(
                onPressed: () => _playNote('G2.mp3'),
              ),
        ),
        Positioned(
          top: 0,
          left: 5 * (MediaQuery.of(context).size.width / 100 + 93 * MediaQuery.of(context).size.width / 800),
          width: 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height,
          child: 
              WhiteKey(
                onPressed: () => _playNote('A2.mp3'),
              ),
        ),
        Positioned(
          top: 0,
          left: 6 * (MediaQuery.of(context).size.width / 100 + 93 * MediaQuery.of(context).size.width / 800),
          width: 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height,
          child: 
              WhiteKey(
                onPressed: () => _playNote('B2.mp3'),
              ),
        ),
        Positioned(
          top: 0,
          left: 7 * (MediaQuery.of(context).size.width / 100 + 93 * MediaQuery.of(context).size.width / 800),
          width: 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height,
          child: 
              WhiteKey(
                onPressed: () => _playNote('C3.mp3'),
              ),
        ),

        // black keys
        
        Positioned(
          top: 0,
          left: 93 * MediaQuery.of(context).size.width / 800 + MediaQuery.of(context).size.width / 200 - (60 / 100) * 93 * MediaQuery.of(context).size.width / 1600,
          width: (60 / 100) * 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height * (46 / 100),
          child: 
              BlackKey(
                onPressed: () => _playNote('Db2.mp3'),
              ),
        ),
        Positioned(
          top: 0,
          left: 2 * 93 * MediaQuery.of(context).size.width / 800 + MediaQuery.of(context).size.width / 100 + MediaQuery.of(context).size.width / 200 - (60 / 100) * 93 * MediaQuery.of(context).size.width / 1600,
          width: (60 / 100) * 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height * (46 / 100),
          child: 
              BlackKey(
                onPressed: () => _playNote('Eb2.mp3'),
              ),
        ),
        Positioned(
          top: 0,
          left: 4 * 93 * MediaQuery.of(context).size.width / 800 + 3 * MediaQuery.of(context).size.width / 100 + MediaQuery.of(context).size.width / 200 - (60 / 100) * 93 * MediaQuery.of(context).size.width / 1600,
          width: (60 / 100) * 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height * (46 / 100),
          child: 
              BlackKey(
                onPressed: () => _playNote('Gb2.mp3'),
              ),
        ),
        Positioned(
          top: 0,
          left: 5 * 93 * MediaQuery.of(context).size.width / 800 + 4 * MediaQuery.of(context).size.width / 100 + MediaQuery.of(context).size.width / 200 - (60 / 100) * 93 * MediaQuery.of(context).size.width / 1600,
          width: (60 / 100) * 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height * (46 / 100),
          child: 
              BlackKey(
                onPressed: () => _playNote('Ab2.mp3'),
              ),
        ),
        Positioned(
          top: 0,
          left: 6 * 93 * MediaQuery.of(context).size.width / 800 + 5 * MediaQuery.of(context).size.width / 100 + MediaQuery.of(context).size.width / 200 - (60 / 100) * 93 * MediaQuery.of(context).size.width / 1600,
          width: (60 / 100) * 93 * MediaQuery.of(context).size.width / 800,
          height: MediaQuery.of(context).size.height * (46 / 100),
          child: 
              BlackKey(
                onPressed: () => _playNote('Bb2.mp3'),
              ),
        ),]
      ),
    );
  }
}