import 'package:flutter/material.dart';
import 'package:fablesofdesire/constructor/question.dart';
import 'package:fablesofdesire/globals/globals.dart';
import 'package:fablesofdesire/screens/pages/more/more.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChoiceTwo extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<ChoiceTwo> {
  QuizBrain quizBrain = QuizBrain();
  bool? isNoti;
  late AudioCache _audioCache;
  AudioPlayer player = new AudioPlayer();

  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (quizBrain.isFinished() == true) {
        stopAudio();
        //interludeModal(context, "/episode1-3");
        Navigator.of(context).pushReplacementNamed("/episode1-3");
      } else {
        quizBrain.nextQuestion();
      }
    });
  }

  void stopAudio() {
    player.stop();
  }

  @override
  void initState() {
    getSound();
    super.initState();
    _audioCache = AudioCache(prefix: "assets/sound/soundeffects/dish/");
  }

  Future<Null> getSound() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
      playAudio();
    } else {
      //_audioCache.play('pop.mp3', volume: 0);
    }
  }

  void playAudio() async {
    player = await _audioCache.play('bowls-on-table.mp3', volume: 0.5);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(context),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: RawGestureDetector(
          gestures: {
            AllowMultipleGestureRecognizer:
                GestureRecognizerFactoryWithHandlers<
                    AllowMultipleGestureRecognizer>(
              () => AllowMultipleGestureRecognizer(),
              (AllowMultipleGestureRecognizer instance) {
                instance.onTap = () {
                  checkAnswer(true);
                };
              },
            )
          },
          behavior: HitTestBehavior.opaque,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              BackgroundBuilder(image: "assets/images/kitchen.jpg"),
              // Character here
              ImageBuilder(image: quizBrain.getImage()),
              // Sprites here
              //spriteBuilder(context, quizBrain.getNumber()),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: InterludeSoundJacob(
                      quizBrain.getSound(),
                      quizBrain.getCorrectAnswer(),
                      quizBrain.getQuestionText(),
                      quizBrain.getNumber(),
                    ),
                  ),
                  skipClip(context, "/episode1-3"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
