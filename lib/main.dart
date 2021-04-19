/*

Copyright 2021 Jona Feucht & SmallDreams

*/

import 'package:easy_localization/easy_localization.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:fablesofdesire/global/theme.dart';
import 'package:fablesofdesire/routes/routes.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  FlameAudio.bgm.initialize();

  final appDocumentDirectory =
      await pathProvider.getApplicationDocumentsDirectory();

  Hive.init(appDocumentDirectory.path);

  final settings = await Hive.openBox('settings');
  bool isLightTheme = settings.get('isLightTheme') ?? true;

  runApp(
    EasyLocalization(
      saveLocale: true,
      supportedLocales: [
        Locale('en'),
        Locale('de'),
        // Locale('fr'),
      ],
      path: 'assets/languages',
      fallbackLocale: Locale('en'),
      useOnlyLangCode: true,
      child: ChangeNotifierProvider(
        create: (_) => ThemeProvider(isLightTheme: isLightTheme),
        child: Home(),
      ),
    ),
  );
}
