import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//
// AUDIO EXAMPLE
//

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    // create this only once
    _audioCache = AudioCache(
        prefix: "audio/",
        fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Music play")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => _audioCache.play('main.mp3'),
            child: Text("Play Audio"),
          ),
          ElevatedButton(
            onPressed: () => _audioCache.play('start.mp3'),
            child: Text("Play Audio"),
          ),
          ElevatedButton(
            onPressed: () => _audioCache.play('mars2.mp3'),
            child: Text("Play Audio"),
          ),
        ],
      ),
    ));
  }
}

late AudioCache _audioCache;
AudioPlayer player = new AudioPlayer();
bool? isNoti;

Future<Null> getSound() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isNoti = (prefs.getBool("notiState"));
  if (isNoti == true) {
    playAudio();
  } else {}
}

void playAudio() async {
  player = await _audioCache.play('city2.mp3', volume: 0.5);
}

void stopAudio() {
  player.stop();
}
