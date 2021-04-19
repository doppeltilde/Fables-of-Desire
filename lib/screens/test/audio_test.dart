import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

AudioPlayer player = new AudioPlayer();
late AudioCache _audioCache;

class TestSound extends StatefulWidget {
  final String s;
  final String p;

  TestSound(this.s, this.p);

  @override
  _InterludeSoundState createState() => _InterludeSoundState();
}

class _InterludeSoundState extends State<TestSound> {
  bool? isNoti;
  @override
  void initState() {
    super.initState();
    _audioCache = AudioCache(prefix: widget.p, duckAudio: true);
  }

  Future<Null> getSound() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
      playAudio();
      stopAudio();
    } else {
      //_audioCache.play('pop.mp3', volume: 0);
    }
  }

  void playAudio() async {
    player = await _audioCache.play(widget.s + '.mp3');
  }

  void stopAudio() {
    player.stop();
  }

  @override
  Widget build(BuildContext context) {
    getSound();

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [Text("Sound Test")],
      ),
    ));
  }
}
