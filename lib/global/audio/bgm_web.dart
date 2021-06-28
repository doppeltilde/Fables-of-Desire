import 'package:flutter/widgets.dart';
import 'package:just_audio/just_audio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GameAudioMobile {
  static late final BGMWeb playAudio = BGMWeb();
}

/// The looping background music class.
///
/// This class helps with looping background music management that reacts to
/// application lifecycle state changes. On construction, the instance is added
/// as an observer to the [WidgetsBinding] instance. A [dispose] function is
/// provided in case this functionality needs to be unloaded but the app needs
/// to keep running.
class BGMWeb extends WidgetsBindingObserver {
  bool _isRegistered = false;
  late AudioPlayer audioPlayer;
  bool isPlaying = false;
  BGMWeb({AudioPlayer? audioPlayer})
      : audioPlayer = audioPlayer ?? AudioPlayer();

  /// Registers a [WidgetsBinding] observer.
  ///
  /// This must be called for auto-pause and resume to work properly.
  void initialize() {
    if (_isRegistered) {
      return;
    }
    _isRegistered = true;
    WidgetsBinding.instance?.addObserver(this);
  }

  /// Dispose the [WidgetsBinding] observer.
  void dispose() {
    if (!_isRegistered) {
      return;
    }
    WidgetsBinding.instance?.removeObserver(this);
    _isRegistered = false;
  }

  /// Plays and loops a background music file specified by [filename].
  ///
  /// The volume can be specified in the optional named parameter [volume]
  /// where `0` means off and `1` means max.
  ///
  /// It is safe to call this function even when a current BGM track is
  /// playing.
  Future<void> play(String filename, {double volume = 1.0}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? vol = prefs.getDouble('volValue');
    print(vol);
    final currentPlayer = audioPlayer;
    if (currentPlayer.playerState.playing == true) {
      currentPlayer.stop();
    }

    isPlaying = true;
    if (filename.isNotEmpty) {
      audioPlayer
        ..setAsset("assets/audio/" + filename + ".mp3")
        ..play()
        ..setVolume(vol ?? 1.0)
        ..setLoopMode(LoopMode.one);
      //  audioPlayer =
      //      await audioCache.loop(filename + ".mp3", volume: vol ?? 1.0);
    } else {
      print("BGM continuation");
      // String? notHome = prefs.getString("notHome");
      // audioPlayer =
      //     await audioCache.loop(notHome! + ".mp3", volume: vol ?? 1.0);
    }
  }

  /// Stops the currently playing background music track (if any).
  Future<void> stop() async {
    await audioPlayer.stop();
  }

  Future<void> resume() async {
    await audioPlayer.play();
  }

  /// Resumes the currently played (but resumed) background music.

  /// Pauses the background music without unloading or resetting the audio
  /// player.
  Future<void> pause() async {
    isPlaying = false;
    await audioPlayer.pause();
  }

  Future<void> volume(volume) async {
    await audioPlayer.setVolume(volume);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (isPlaying && audioPlayer.playerState.playing == false) {
        audioPlayer.play();
      }
    } else {
      audioPlayer.pause();
    }
  }
}
