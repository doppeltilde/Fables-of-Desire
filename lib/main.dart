/*

Copyright 2021 Jona Feucht & SmallDreams

*/

import 'package:desktop_window/desktop_window.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:fablesofdesire/routes/routes.dart';
import 'package:flutter/services.dart';
import 'package:universal_io/io.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await DesktopWindow.setMinWindowSize(Size(800, 500));
  } else {}

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
      assetLoader: YamlAssetLoader(),
      fallbackLocale: Locale('en'),
      useOnlyLangCode: true,
      child: Home(),
    ));
  });
}
