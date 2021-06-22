import 'package:easy_localization/easy_localization.dart';
import 'package:fablesofdesire/routes/route_observer.dart';
import 'package:fablesofdesire/routes/splash_screen.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki1.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki10.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki11.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki12.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki13.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki14.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki15.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki16.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki17.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki18.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki19.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki2.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki20.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki3.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki4.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki5.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki6.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki7.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki8.dart';
import 'package:fablesofdesire/screens/act2/naoki/naoki9.dart';
import 'package:fablesofdesire/screens/chapter1/chapter1.dart';
import 'package:fablesofdesire/screens/chapter1/chapter2.dart';
import 'package:fablesofdesire/screens/intro.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

/*
    REAL INTRO
*/

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Fables of Desire',
      //initialRoute: '/',
      navigatorObservers: <NavigatorObserver>[
        MyRouteObserver(),
      ],

      routes: {
        '/': (_) {
          return SplashScreen();
        },
        HomePage.currentRoute: (_) {
          return HomePage();
        },
        '/intro': (_) {
          return Intro();
        },
        '/1': (_) {
          return VN1();
        },
        '/2': (_) {
          return VN2();
        },
        // todo: here Naoki routes
        "/naoki1": (_) {
          return Naoki1();
        },
        "/naoki2": (_) {
          return Naoki2();
        },
        "/naoki3": (_) {
          return Naoki3();
        },
        "/naoki4": (_) {
          return Naoki4();
        },
        "/naoki5": (_) {
          return Naoki5();
        },
        "/naoki6": (_) {
          return Naoki6();
        },
        "/naoki7": (_) {
          return Naoki7();
        },
        "/naoki8": (_) {
          return Naoki8();
        },
        "/naoki9": (_) {
          return Naoki9();
        },
        "/naoki10": (_) {
          return Naoki10();
        },
        "/naoki11": (_) {
          return Naoki11();
        },
        "/naoki12": (_) {
          return Naoki12();
        },
        "/naoki13": (_) {
          return Naoki13();
        },
        "/naoki14": (_) {
          return Naoki14();
        },
        "/naoki15": (_) {
          return Naoki15();
        },
        "/naoki16": (_) {
          return Naoki16();
        },
        "/naoki17": (_) {
          return Naoki17();
        },
        "/naoki18": (_) {
          return Naoki18();
        },
        "/naoki19": (_) {
          return Naoki19();
        },
        "/naoki20": (_) {
          return Naoki20();
        },
      },
    );
  }
}
