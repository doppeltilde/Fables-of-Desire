import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:fablesofdesire/screens/pages/more/more.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChapterOneIntro extends StatefulWidget {
  @override
  _Episode2State createState() => _Episode2State();
}

class _Episode2State extends State<ChapterOneIntro> {
  bool? isSwitchedFT;
  bool? chapters;
  SharedPreferences? sharedPreferences;
  @override
  void initState() {
    super.initState();
    getSharedPrefs();
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      sharedPreferences = sp;
      chapters = sharedPreferences!.getBool("chapterState");
      // will be null if never previously saved
      if (chapters == null) {
        chapters = true;
        persistChapters(chapters!); // set an initial value
      }
      setState(() {});
    });
    Future.delayed(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacementNamed("/2");
    });
  }

  void persistChapters(bool value) {
    setState(() {
      isSwitchedFT = value;
    });
    sharedPreferences?.setBool("chapterState", value);
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isSwitchedFT = (prefs.getBool("switchState"));
    if (isSwitchedFT == true) {
      FlameAudio.bgm.play("start.mp3", volume: 0.3);
    } else {
      //Flame.bgm.play("start.mp3", volume: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(context),
      child: new Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.red[300],
        body: Center(
          child: SingleChildScrollView(
            child: new Container(
              alignment: Alignment.center,
              child: new Column(
                // center the children
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        "ACT ONE",
                        speed: Duration(milliseconds: 0),
                        textStyle: TextStyle(
                            fontFamily: "Arvo",
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        "CHAPTER ONE",
                        speed: Duration(milliseconds: 0),
                        textStyle: TextStyle(
                            fontFamily: "PalanquinDark",
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 4,
                    ),
                    child: Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          "A new beginning",
                          speed: Duration(milliseconds: 90),
                          textStyle: TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                              fontFamily: "BottleParty",
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
