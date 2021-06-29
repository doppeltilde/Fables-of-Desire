/// Copyright (c) 2021 Jona T. Feucht and The SmallDreams Authors.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:fablesofdesire/routes/routes.dart';
import 'package:window_size/window_size.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (UniversalPlatform.isWindows ||
      UniversalPlatform.isLinux ||
      UniversalPlatform.isMacOS) {
    setWindowMinSize(const Size(1000, 600));
    setWindowMaxSize(Size.infinite);
  }

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
