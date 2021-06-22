import 'package:dart_vlc/dart_vlc.dart';
import 'package:fablesofdesire/global/audio/game_audio.dart';
import 'package:fablesofdesire/routes/homepage.dart';
import 'package:flutter/material.dart';
import 'package:salem/core/persist/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io' show Platform;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String spKey = "switchState";
  String notiKey = "notiState";

  SharedPreferences? sharedPreferences;

  bool? isNoti = true;
  bool? isSwitchedFT = true;
  double? vol = 0.5;
  bool? splash = false;
  double? opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return SplashLoadingScreen(
      bgColor: Colors.white,
      opacity: 1.0,
      imgDuration: 250,
      splashImage: "assets/images/logo.png",
    );
  }

  @override
  void didChangeDependencies() {
    if (Platform.isWindows ||
        Platform.isLinux && GameAudioDesktop.playAudio.isPlaying == false) {
      super.didChangeDependencies();
      GameAudioDesktop.playAudio.player = Player(
        id: 0,
      );
    }
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      sharedPreferences = sp;
      isNoti = sharedPreferences!.getBool(notiKey);
      // will be null if never previously saved
      if (isNoti == null) {
        isNoti = true;
        persistNoti(isNoti!); // set an initial value
      }
    });
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      sharedPreferences = sp;
      isSwitchedFT = sharedPreferences!.getBool(spKey);
      // will be null if never previously saved
      if (isSwitchedFT == null) {
        isSwitchedFT = true;
        persist(isSwitchedFT!); // set an initial value
      }
    });
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      sharedPreferences = sp;
      vol = sharedPreferences!.getDouble("volValue");
      if (vol == null) {
        vol = 1.0;
        persistVol(vol!);
      }
    });
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      sharedPreferences = sp;
      speed = sharedPreferences!.getInt("speedValue");
      if (speed == null) {
        speed = 100;
        persistSpeed(speed!);
      }
    });

    Future.delayed(const Duration(seconds: 3), () {
      if (this.mounted) {
        initSplash();
      }
    });
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  void persist(bool value) {
    setState(() {
      isSwitchedFT = value;
    });
    sharedPreferences?.setBool(spKey, value);
  }

  void persistNoti(bool value) {
    setState(() {
      isNoti = value;
    });
    sharedPreferences?.setBool(notiKey, value);
  }

  void persistVol(double value) {
    setState(() {
      vol = value;
    });
    sharedPreferences?.setDouble("volValue", value);
  }

  int? speed;
  void persistSpeed(int value) {
    setState(() {
      speed = value;
    });
    sharedPreferences?.setInt("speedValue", value);
  }

  //
  // Saves pushNamed as last route
  // Example:
  // If pushNamed "/page1" -> saves page1 into cache
  // If pushNamed -> materialroute, still saves last pushNamed
  //

  Future<void> initSplash() async {
    final prefs = await SharedPreferences.getInstance();
    String? lastRoute = prefs.getString('last_route');
    String? previousRoute = prefs.getString('previous_route');

    if (lastRoute != null && lastRoute != '/') {
      Navigator.pushReplacementNamed(context, lastRoute);
    } else if (previousRoute != null && previousRoute != '/') {
      Navigator.pushReplacementNamed(context, previousRoute);
    } else {
      Navigator.of(context).pushNamed(HomePage.currentRoute);
    }
  }
}
