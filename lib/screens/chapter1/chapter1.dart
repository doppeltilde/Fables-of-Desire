import 'dart:io';

import 'package:dart_vlc/dart_vlc.dart';
import 'package:fablesofdesire/constructor/vn_constructor.dart';
import 'package:fablesofdesire/global/audio/game_audio.dart';
import 'package:fablesofdesire/global/globals.dart';
import 'package:fablesofdesire/global/will_pop.dart';
import 'package:fablesofdesire/text/vn_text.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VN1 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<VN1> {
  final String route = "/1";
  final String nextRoute = "/2";
  final textSound = TextConstructor1();
  SharedPreferences? sharedPreferences;
  String? notHome;
  @override
  void initState() {
    super.initState();
    playAudio();
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      sharedPreferences = sp;
      notHome = sharedPreferences!.getString("notHome");
      notHome = "calling.mp3";
      persistNotHome(notHome!);
      print(notHome);
    });
  }

  void persistNotHome(String value) {
    setState(() {
      notHome = value;
    });
    sharedPreferences?.setString("notHome", value);
  }

  playAudio() {
    if (!Platform.isWindows || Platform.isLinux) {
      GameAudio.bgm.play("calling.mp3");
    } else {
      GameAudioDesktop.playAudio.play("calling.mp3");
    }
  }

  @override
  void didChangeDependencies() async {
    if (Platform.isWindows || Platform.isLinux) {
      super.didChangeDependencies();
      GameAudioDesktop.playAudio.player = Player(
        id: 0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: InkWell(
          onTap: () {
            setState(() {
              if (textSound.isFinished() == true) {
                Navigator.of(context).pushNamed(nextRoute);
              } else {
                textSound.nextQuestion();
              }
            });
          },
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              BackgroundBuilder(
                  image: "assets/images/bgs/mininature_001_19201440.jpg"),
              // Character here
              Builder(
                builder: (BuildContext context) {
                  if (textSound.getCorrectAnswer() == "MC") {
                    return ImageBuilderMC(
                      image: textSound.getImage(),
                    );
                  } else {
                    return ImageBuilder(image: textSound.getImage());
                  }
                },
              ),

              InterludeTextSound(
                textSound.getCorrectAnswer(),
                textSound.getQuestionText(),
                textSound.getNumber(),
                route,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
