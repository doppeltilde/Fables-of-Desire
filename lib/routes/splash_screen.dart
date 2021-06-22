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

  List images = [
    "fox_hidetake_blush",
    "fox_hidetake_frown",
    "fox_hidetake_happy",
    "fox_hidetake_neutral",
    "fox_hidetake_sad",
    "hidetake_blush",
    "hidetake_frown",
    "hidetake_happy",
    "hidetake_neutral",
    "hidetake_sad",
    "MC_Blush",
    "MC_Frown",
    "MC_Happy",
    "MC_Neutral",
    "MC_Sad",
    "raven_naoki_blush",
    "raven_naoki_frown",
    "raven_naoki_happy",
    "raven_naoki_neutral",
    "raven_naoki_sad",
    "naoki_blush",
    "naoki_frown",
    "naoki_happy",
    "naoki_neutral",
    "naoki_sad",
    "raccoon_tom_blush",
    "raccoon_tom_frown",
    "raccoon_tom_happy",
    "raccoon_tom_neutral",
    "raccoon_tom_sad",
    "tom_blush",
    "tom_frown",
    "tom_happy",
    "tom_neutral",
    "tom_sad",
  ];
  @override
  Widget build(BuildContext context) {
    for (var i in images)
      precacheImage(AssetImage("assets/images/sprites/" + i + ".png"), context);

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
      if (isNoti == null) {
        isNoti = true;
        persistNoti(isNoti!);
      }
    });
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      sharedPreferences = sp;
      isSwitchedFT = sharedPreferences!.getBool(spKey);
      if (isSwitchedFT == null) {
        isSwitchedFT = true;
        persist(isSwitchedFT!);
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
      PersistNavigation.initSplash(context, HomePage.currentRoute);
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
}
