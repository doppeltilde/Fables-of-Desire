/*

Copyright 2021 Jona Feucht & SmallDreams

*/

import 'package:desktop_window/desktop_window.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:fablesofdesire/routes/routes.dart';
import 'package:flutter/services.dart';
import 'package:universal_io/io.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux) {
    await DesktopWindow.setMinWindowSize(Size(800, 500));
  } else if (Platform.isMacOS) {
    await DesktopWindow.setMinWindowSize(Size(800, 500));
    FlameAudio.bgm.initialize();
  } else {
    FlameAudio.bgm.initialize();
  }

  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) {
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
  });
}
