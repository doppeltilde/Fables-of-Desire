/// Copyright (c) 2021 Jona T. Feucht and The SmallDreams Authors.

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:fablesofdesire/routes/routes.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await DesktopWindow.setMinWindowSize(Size(1000, 700));
  } else {}

  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(
      // EasyLocalization(
      // saveLocale: true,
      // supportedLocales: [
      //   Locale('en'),
      //   Locale('de'),
      //   // Locale('fr'),
      // ],
      // path: 'assets/languages',
      // assetLoader: YamlAssetLoader(),
      // fallbackLocale: Locale('en'),
      // useOnlyLangCode: true,
      Home(),
    );
    // ));
  });
}
