import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:fablesofdesire/global/audio/bgm.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GameAudio {
  /// Access a shared instance of the [AudioCache] class.
  static AudioCache audioCache = AudioCache(prefix: 'assets/audio/');

  /// Plays a single run of the given [file], with a given [volume].
  static Future<AudioPlayer> play(String file, {double volume = 1.0}) {
    return audioCache.play(file, volume: volume, mode: PlayerMode.LOW_LATENCY);
  }

  /// Plays, and keep looping the given [file]
  static Future<AudioPlayer> loop(String file, {double volume = 1.0}) {
    return audioCache.loop(file, volume: volume, mode: PlayerMode.LOW_LATENCY);
  }

  /// Plays a single run of the given file [file]
  /// This method supports long audio files
  static Future<AudioPlayer> playLongAudio(String file, {double volume = 1.0}) {
    return audioCache.play(file, volume: volume);
  }

  static Future<AudioPlayer> playBubble(String file) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? bubbleValue = prefs.getDouble('bubbleValue');
    return audioCache.play(file,
        volume: bubbleValue ?? 1.0, mode: PlayerMode.LOW_LATENCY);
  }

  /// Plays, and keep looping the given [file]
  /// This method supports long audio files
  ///
  /// NOTE: Length audio files on Android have an audio gap between loop
  /// iterations, this happens due to limitations on Android's native media
  /// player features, if you need a gapless loop, prefer the loop method
  static Future<AudioPlayer> loopLongAudio(String file, {double volume = 1.0}) {
    return audioCache.loop(file, volume: volume);
  }

  /// Access a shared instance of the [Bgm] class.
  ///
  /// This will use the same global audio cache from [FlameAudio].
  static late final Bgm bgm = Bgm(audioCache: audioCache);
}

class GameAudioTea {
  /// Access a shared instance of the [AudioCache] class.
  static AudioCache audioCache = AudioCache(prefix: 'assets/audio/tea/');

  /// Plays a single run of the given [file], with a given [volume].
  static Future<AudioPlayer> play(String file, {double volume = 1.0}) {
    return audioCache.play(file, volume: volume, mode: PlayerMode.LOW_LATENCY);
  }

  /// Plays, and keep looping the given [file]
  static Future<AudioPlayer> loop(String file, {double volume = 1.0}) {
    return audioCache.loop(file, volume: volume, mode: PlayerMode.LOW_LATENCY);
  }

  /// Plays a single run of the given file [file]
  /// This method supports long audio files
  static Future<AudioPlayer> playLongAudio(String file, {double volume = 1.0}) {
    return audioCache.play(file, volume: volume);
  }

  static Future<AudioPlayer> playBubble(String file) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? bubbleValue = prefs.getDouble('bubbleValue');
    return audioCache.play(file,
        volume: bubbleValue ?? 1.0, mode: PlayerMode.LOW_LATENCY);
  }

  /// Plays, and keep looping the given [file]
  /// This method supports long audio files
  ///
  /// NOTE: Length audio files on Android have an audio gap between loop
  /// iterations, this happens due to limitations on Android's native media
  /// player features, if you need a gapless loop, prefer the loop method
  static Future<AudioPlayer> loopLongAudio(String file, {double volume = 1.0}) {
    return audioCache.loop(file, volume: volume);
  }

  static late final PlayAudio playAudio = PlayAudio(audioCache: audioCache);
}

class PlayAudio extends WidgetsBindingObserver {
  bool _isRegistered = false;
  late AudioCache audioCache;
  AudioPlayer? audioPlayer;
  bool isPlaying = false;

  PlayAudio({AudioCache? audioCache}) : audioCache = audioCache ?? AudioCache();

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
  Future<void> play(String filename, {double volume = 2.0}) async {
    //AudioService service = Provider.of<AudioService>(context);
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // double? vol = prefs.getDouble('volValue');
    // print(vol);
    final currentPlayer = audioPlayer;
    if (currentPlayer != null && currentPlayer.state != PlayerState.STOPPED) {
      currentPlayer.stop();
    }

    isPlaying = true;
    audioPlayer = await audioCache.play(filename, volume: 2.0);
  }

  /// Stops the currently playing background music track (if any).
  Future<void> stop() async {
    isPlaying = false;
    if (audioPlayer != null) {
      await audioPlayer!.stop();
    }
  }

  /// Resumes the currently played (but resumed) background music.
  Future<void> resume() async {
    if (audioPlayer != null) {
      isPlaying = true;
      await audioPlayer!.resume();
    }
  }

  /// Pauses the background music without unloading or resetting the audio
  /// player.
  Future<void> pause() async {
    if (audioPlayer != null) {
      isPlaying = false;
      await audioPlayer!.pause();
    }
  }

  Future<void> volume(volume) async {
    await audioPlayer!.setVolume(volume);
  }

  /// Pre-fetch an audio and store it in the cache.
  ///
  /// Alias of `audioCache.load();`.
  Future<Uri> load(String file) => audioCache.load(file);

  /// Pre-fetch an audio and store it in the cache.
  ///
  /// Alias of `audioCache.loadAsFile();`.
  Future<File> loadAsFile(String file) => audioCache.loadAsFile(file);

  /// Pre-fetch a list of audios and store them in the cache.
  ///
  /// Alias of `audioCache.loadAll();`.
  Future<List<Uri>> loadAll(List<String> files) => audioCache.loadAll(files);

  /// Clears the file in the cache.
  ///
  /// Alias of `audioCache.clear();`.
  void clear(Uri file) => audioCache.clear(file);

  /// Clears all the audios in the cache.
  ///
  /// Alias of `audioCache.clearAll();`.
  void clearAll() => audioCache.clearAll();

  /// Handler for AppLifecycleState changes.
  ///
  /// This function handles the automatic pause and resume when the app
  /// lifecycle state changes. There is NO NEED to call this function directly
  /// directly.
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (isPlaying && audioPlayer?.state == PlayerState.PAUSED) {
        audioPlayer?.resume();
      }
    } else {
      audioPlayer?.pause();
    }
  }
}
