import 'package:fablesofdesire/global/audio/bgm_web.dart';
import 'package:universal_platform/universal_platform.dart';
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
  bool isPlaying = false;

  Future<void> getBGM(String musicName) async {
    isPlaying = true;
    if (UniversalPlatform.isWindows || UniversalPlatform.isLinux) {
      if (GameAudioDesktop.playAudio.isPlaying == false) {
        GameAudioDesktop.playAudio.play(musicName);
      } else {
        GameAudioDesktop.playAudio.stop();
        GameAudioDesktop.playAudio.play(musicName);
      }
    } else {
      if (GameAudioMobile.playAudio.isPlaying == false) {
        GameAudioMobile.playAudio.play(musicName);
      } else {
        GameAudioMobile.playAudio.stop();
        GameAudioMobile.playAudio.play(musicName);
      }
    }
  }

  Future<void> stopAudio() async {
    //isPlaying = false;
    if (UniversalPlatform.isWindows || UniversalPlatform.isLinux) {
      GameAudioDesktop.playAudio.stop();
    } else {
      GameAudioMobile.playAudio.stop();
    }
  }

  // @override
  // void didChangeDependencies() {
  //   if (UniversalPlatform.isWindows || UniversalPlatform.isLinux) {
  //     super.didChangeDependencies();
  //     GameAudioDesktop.playAudio.player = Player(
  //       id: 0,
  //     );
  //   }
  // }
}
