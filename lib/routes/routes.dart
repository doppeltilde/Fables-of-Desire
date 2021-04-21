import 'package:easy_localization/easy_localization.dart';
import 'package:fablesofdesire/routes/route_observer.dart';
import 'package:fablesofdesire/routes/splash_screen.dart';
import 'package:fablesofdesire/screens/chapter1/chapter1.dart';
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
        '/': (context) {
          return SplashScreen();
        },
        '/home': (context) {
          return HomePage();
        },
        '/1': (context) {
          return VN1();
        },
      },
    );
  }
}
