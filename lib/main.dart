/*

Copyright 2021 Jona Feucht & SmallDreams

*/

import 'package:dart_vlc/dart_vlc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:fablesofdesire/routes/routes.dart';
import 'package:universal_io/io.dart';

Future<void> main() async {
  Player? player;
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux) {
    player?.open(
      await Media.asset('assets/audio/warmth-of-the-sun-adi-goldstein.mp3'),
    );
    player?.play();
  } else {
    FlameAudio.bgm.initialize();
  }

  runApp(EasyLocalization(
    saveLocale: true,
    supportedLocales: [
      Locale('en'),
      Locale('de'),
      // Locale('fr'),
    ],
    path: 'assets/languages',
    fallbackLocale: Locale('en'),
    useOnlyLangCode: true,
    child: Home(),
  ));
}
