import 'dart:io';
import 'package:fablesofdesire/global/audio/game_audio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlobalAudio {
  final musicName;
  GlobalAudio({this.musicName});
  static final playAudio = PlayAudio();
}

class PlayAudio with WidgetsBindingObserver {
  String? notHome;
  SharedPreferences? sharedPreferences;

  Future<void> persistNotHome(String value) async {
    notHome = value;
    sharedPreferences?.setString("notHome", value);
  }

  Future<void> getAudio(String musicName) async {
    if (Platform.isWindows || Platform.isLinux) {
      if (GameAudioDesktop.playAudio.isPlaying == false) {
        GameAudioDesktop.playAudio.play(musicName);
      }
    } else {
      if (GameAudio.bgm.isPlaying == false) {
        GameAudio.bgm.play(musicName);
      }
    }
  }

  // @override
  // void didChangeDependencies() {
  //   if (Platform.isWindows || Platform.isLinux) {
  //     super.didChangeDependencies();
  //     GameAudioDesktop.playAudio.player = Player(
  //       id: 0,
  //     );
  //   }
  // }
}
