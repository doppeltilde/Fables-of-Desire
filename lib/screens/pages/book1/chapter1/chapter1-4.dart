import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fablesofdesire/constructor/question.dart';
import 'package:fablesofdesire/globals/globals.dart';
import 'package:fablesofdesire/screens/pages/more/more.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool? isNoti;
late AudioCache _audioCache;
AudioPlayer player = new AudioPlayer();
ChapterOneThree quizBrain = ChapterOneThree();

class ChoiceFour extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<ChoiceFour> {
  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (quizBrain.isFinished() == true) {
        stopAudio();
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                backgroundColor: Colors.transparent,
                content: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width * 2,
                    color: Colors.redAccent,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Theme.of(context).primaryColor,
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                  ),
                                  child: Text(
                                      'Ask the Guy\nstanding at the stairs',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontFamily: "BottleParty",
                                        fontSize: 30,
                                        letterSpacing: 1,
                                      )),
                                  onPressed: () => Navigator.of(context)
                                      .pushNamed("/episode1-4.1")),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Theme.of(context).primaryColor,
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                  ),
                                  child: Text('Look for someone else',
                                      style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontFamily: "BottleParty",
                                        fontSize: 30,
                                        letterSpacing: 1,
                                      )),
                                  onPressed: () => Navigator.of(context)
                                      .pushNamed("/episode1-4.2")),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.all(0));
          },
        );
      } else {
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  void initState() {
    getSound();
    super.initState();
    _audioCache = AudioCache(prefix: "assets/sound/soundeffects/");
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
    player = await _audioCache.play('kids-playing.mp3', volume: 0.5);
  }

  void stopAudio() {
    player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(context),
      child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        //appBar: interludeAppbar(context, "Outside Academy Campus"),
        body: InkWell(
          onTap: () => checkAnswer(true),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              new Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/school/school.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                  child: new Container(
                    decoration:
                        new BoxDecoration(color: Colors.black.withOpacity(0)),
                  ),
                ),
              ),
              interlude(
                context,
                quizBrain.getCorrectAnswer(),
                quizBrain.getQuestionText(),
                quizBrain.getNumber(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChoiceFour1 extends StatefulWidget {
  @override
  _QuizPageState1 createState() => _QuizPageState1();
}

class _QuizPageState1 extends State<ChoiceFour1> {
  ChapterOneFour1 quizBrain = ChapterOneFour1();
  bool? isNoti;
  late AudioCache _audioCache;
  AudioPlayer player = new AudioPlayer();

  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (quizBrain.isFinished() == true) {
        stopAudio();
        Navigator.of(context).pushReplacementNamed("/episode5");
      } else {
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  void initState() {
    getSound();
    super.initState();
    //FlameAudio.bgm.play("forward-motion-simon-folwar.mp3");
    _audioCache = AudioCache(prefix: "assets/sound/soundeffects/");
  }

  void stopAudio() {
    player.stop();
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
    player = await _audioCache.play('highschool-hall.mp3', volume: .4);
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
              Builder(
                builder: (context) {
                  if (quizBrain.getNumber() >= 16) {
                    return BackgroundBuilder(
                        image: "assets/images/school/school-hall-1.jpg");
                  } else {
                    return BackgroundBuilder(
                        image: "assets/images/school/school-hall-2.jpg");
                  }
                },
              ),
              // Character here

              ImageBuilder(image: quizBrain.getImage()),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: InterludeSoundTea(
                      quizBrain.getSound(),
                      quizBrain.getCorrectAnswer(),
                      quizBrain.getQuestionText(),
                      quizBrain.getNumber(),
                    ),
                  ),
                  skipClip(context, "/episode5"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChoiceFour2 extends StatefulWidget {
  @override
  _QuizPageState2 createState() => _QuizPageState2();
}

class _QuizPageState2 extends State<ChoiceFour2> {
  ChapterOneFour2 quizBrain = ChapterOneFour2();
  bool? isNoti;
  late AudioCache _audioCache;
  AudioPlayer player = new AudioPlayer();

  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (quizBrain.isFinished() == true) {
        stopAudio();
        Navigator.of(context).pushReplacementNamed("/episode5");
      } else {
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  void initState() {
    getSound();
    super.initState();
    //FlameAudio.bgm.play("forward-motion-simon-folwar.mp3");
    _audioCache = AudioCache(prefix: "assets/sound/soundeffects/");
  }

  void stopAudio() {
    player.stop();
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
    player = await _audioCache.play('highschool-hall.mp3', volume: 0.3);
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
              Builder(
                builder: (context) {
                  if (quizBrain.getNumber() >= 13) {
                    return BackgroundBuilder(
                        image: "assets/images/school/school-hall-1.jpg");
                  } else {
                    return BackgroundBuilder(
                        image: "assets/images/school/school-hall-2.jpg");
                  }
                },
              ),
              // Character here
              ImageBuilder(image: quizBrain.getImage()),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: InterludeSoundTea(
                      quizBrain.getSound(),
                      quizBrain.getCorrectAnswer(),
                      quizBrain.getQuestionText(),
                      quizBrain.getNumber(),
                    ),
                  ),
                  skipClip(context, "/episode5"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
