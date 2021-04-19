import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fablesofdesire/globals/route_observer.dart';
import 'package:fablesofdesire/globals/theme.dart';
import 'package:fablesofdesire/screens/pages/book1/chapter1/chapter1-10.dart';
import 'package:fablesofdesire/screens/pages/book1/chapter1/chapter1-2.dart';
import 'package:fablesofdesire/screens/pages/book1/chapter1/chapter1-4.dart';
import 'package:fablesofdesire/screens/pages/book1/chapter1/chapter1-5.dart';
import 'package:fablesofdesire/screens/pages/book1/chapter1/chapter1-6.dart';
import 'package:fablesofdesire/screens/pages/book1/chapter1/chapter1intro.dart';
import 'package:fablesofdesire/screens/pages/more/chapters.dart';
import 'package:fablesofdesire/screens/pages/more/endcredits.dart';
import 'package:fablesofdesire/screens/pages/more/endcredits_sad.dart';
import 'package:fablesofdesire/screens/pages/more/lettertoTea.dart';
import 'package:fablesofdesire/screens/test/pref_test.dart';
import 'package:fablesofdesire/screens/test/sprite_test.dart';
import 'package:fablesofdesire/settings/settings_ingame.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';

/*
    REAL INTRO
*/

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      theme: themeProvider.themeData(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Dance of Love',
      //initialRoute: '/',
      navigatorObservers: <NavigatorObserver>[
        MyRouteObserver(),
      ],

      routes: {
        '/': (context) {
          return SplashScreen();
        },
        '/home': (context) {
          return HomePage();
        },
        '/endcredits': (context) {
          return EndCredits();
        },
        '/badendcredits': (context) {
          return EndCreditsSad();
        },
        '/settings': (context) {
          return ThemeChange();
        },
        '/chapters': (context) {
          return Chapters();
        },
        "/PrefTestName": (context) {
          return PrefTestName();
        },
        "/SpriteTest": (context) {
          return SpriteTest();
        },

        // Chapter 1
        '/1': (context) {
          return ChapterOneIntro();
        },

        '/2': (context) {
          return ChoiceTwo();
        },
        '/episode1-4.1': (context) {
          return ChoiceFour1();
        },
        '/episode1-4.2': (context) {
          return ChoiceFour2();
        },
        '/episode5': (context) {
          return ChoiceFive();
        },
        '/episode1-6': (context) {
          return Choice6();
        },

        '/episode1-12': (context) {
          return ChapterOneEnding();
        },
        '/episode1-13': (context) {
          return ChapterOneEnding2();
        },
        '/episode1-14': (context) {
          return ChapterOneEnding3();
        },
        '/episode1-15': (context) {
          return ChapterOneEnding4();
        },

        '/lettertotea': (context) {
          return LetterToTea();
        },
      },
    );
  }
}
