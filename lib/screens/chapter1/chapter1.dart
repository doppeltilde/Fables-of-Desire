import 'package:fablesofdesire/constructor/vn_constructor.dart';
import 'package:fablesofdesire/global/globals.dart';
import 'package:fablesofdesire/global/will_pop.dart';
import 'package:fablesofdesire/text/vn_text.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class VN1 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<VN1> {
  AudioPlayer audioPlayer = AudioPlayer();
  late AudioCache _audioCache;
  final String route = "/1";
  final String nextRoute = "/2";
  TextConstructor1 textSound = TextConstructor1();
  bool? isNoti;

  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (textSound.isFinished() == true) {
        Navigator.of(context).pushNamed(nextRoute, arguments: audioPlayer);
      } else {
        textSound.nextQuestion();
      }
    });
  }

  @override
  void initState() {
    _audioCache = AudioCache(prefix: "assets/audio/");

    super.initState();
    getVolume();
  }

  double? vol = 1.0;
  getVolume() async {
    vol = await playAudio();
    setState(() {});
  }

  playAudio() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? _vol = prefs.getDouble('volValue');
    audioPlayer = await _audioCache.loop('calling.mp3', volume: _vol!);
  }

  var scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(context),
      child: Scaffold(
        key: scaffoldKey,
        endDrawerEnableOpenDragGesture: false,
        endDrawer: AppDrawer(),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: InkWell(
          onTap: () {
            checkAnswer(true);
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

              // Sprites here
              //spriteBuilder(context, quizBrain.getNumber()),

              InterludeTextSound(
                textSound.getCorrectAnswer(),
                textSound.getQuestionText(),
                textSound.getNumber(),
                route,
                audioPlayer,
                scaffoldKey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
