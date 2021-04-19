import 'dart:async';
import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bubble/bubble.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fablesofdesire/constructor/question.dart';
import 'package:fablesofdesire/globals/globals.dart';
import 'package:fablesofdesire/screens/pages/more/more.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class ChapterOneEnding extends StatefulWidget {
  @override
  _QuizPageState1 createState() => _QuizPageState1();
}

class _QuizPageState1 extends State<ChapterOneEnding> {
  ChapterOneEndingQ quizBrain = ChapterOneEndingQ();
  bool? isNoti;
  late AudioCache _audioCache;
  AudioPlayer player = new AudioPlayer();

  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (quizBrain.isFinished() == true) {
        stopAudio();
        Navigator.of(context).pushReplacementNamed("/episode1-13");
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

  void stopAudio() {
    player.stop();
  }

  Future<Null> getSound() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
      playAudio();
    } else {}
  }

  void playAudio() async {
    player = await _audioCache.play('coffee-shop.mp3', volume: .5);
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
              Builder(builder: (context) {
                return new Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/cafe3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.black.withOpacity(0.1)),
                    ),
                  ),
                );
              }),
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
                  skipClip(context, "/episode1-13"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChapterOneEnding2 extends StatefulWidget {
  @override
  _QuizPageState2 createState() => _QuizPageState2();
}

class _QuizPageState2 extends State<ChapterOneEnding2> {
  ChapterOneEnding2Q quizBrain = ChapterOneEnding2Q();
  bool? isNoti;
  late AudioCache _audioCache;
  AudioPlayer player = new AudioPlayer();

  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (quizBrain.isFinished() == true) {
        stopAudio();
        FlameAudio.bgm.stop();
        Navigator.of(context).pushReplacementNamed("/episode1-14");
      } else {
        quizBrain.nextQuestion();
        if (quizBrain.getNumber() == 5) {
          stopAudio();
          playAudio2();
        }
      }
    });
  }

  @override
  void initState() {
    getSound();
    super.initState();
    FlameAudio.bgm.play("Yehezkel_Raz_Cochlea.mp3", volume: 0.25);
    _audioCache = AudioCache(prefix: "assets/audio/ambience/");
  }

  void stopAudio() {
    player.stop();
  }

  Future<Null> getSound() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
      playAudio();
    } else {}
  }

  void playAudio() async {
    player = await _audioCache.loop('city2.mp3', volume: 0.4);
  }

  void playAudio2() async {
    player = await _audioCache.loop('airspeeder.mp3', volume: 0.5);
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
                  if (quizBrain.getNumber() >= 5) {
                    return BackgroundBuilder(
                        image: "assets/images/shanghai.jpg");
                  } else {
                    return BackgroundBuilder(image: "assets/images/taipei.jpg");
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
                  skipClip(context, "/episode1-14"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChapterOneEnding3 extends StatefulWidget {
  _Choices createState() => _Choices();
}

class _Choices extends State<ChapterOneEnding3> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        visible1 = true;
      });
    });
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _visible2 = true;
      });
    });
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        _visible3 = true;
      });
    });
    Future.delayed(const Duration(seconds: 13), () {
      setState(() {
        _visible4 = true;
      });
    });
  }

  bool onPressed = false;
  bool onPressed2 = false;

  var visible1 = false;
  var _visible2 = false;
  var _visible3 = false;
  var _visible4 = false;
  var _visible5 = false;
  var _visible6 = false;
  var _visible7 = false;
  var _visible8 = false;
  var _visible9 = false;
  var _visible10 = false;
  var _visible11 = false;
  var _visible12 = false;
  var _visible13 = false;
  var _visible14 = false;
  var _visible15 = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(context),
      child: new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    reverse: true,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 15,
                            ),
                            Bubble(
                              color: Color.fromRGBO(212, 234, 244, 1.0),
                              child: Text('Starlink\nTODAY 01:11 AM',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Builder(builder: (context) {
                              if (true && visible1 == false) {
                                return TextCardBubble();
                              } else {
                                return Visibility(
                                    visible: visible1,
                                    child: TextCardOther(tr("jacob.speech22")));
                              }
                            }),
                            Builder(builder: (context) {
                              if (visible1 == true && _visible2 == false) {
                                return TextCardBubble();
                              } else {
                                return Visibility(
                                    visible: _visible2,
                                    child: TextCardOther(tr("jacob.speech23")));
                              }
                            }),
                            Builder(builder: (context) {
                              if (_visible2 == true && _visible3 == false) {
                                return TextCardBubble();
                              } else {
                                return Visibility(
                                    visible: _visible3,
                                    child: TextCardOther(tr("jacob.speech24")));
                              }
                            }),

                            Builder(
                              builder: (context) {
                                if (onPressed == true) {
                                  return Column(
                                    children: <Widget>[
                                      Builder(builder: (context) {
                                        if (onPressed == true &&
                                            _visible5 == false) {
                                          return TextCardBubble();
                                        } else {
                                          return Visibility(
                                              visible: _visible5,
                                              child:
                                                  TextCardOther("Dude, rude."));
                                        }
                                      }),
                                      Builder(builder: (context) {
                                        if (_visible5 == true &&
                                            _visible6 == false) {
                                          return TextCardBubble();
                                        } else {
                                          return Visibility(
                                              visible: _visible6,
                                              child: TextCardOther(
                                                  "I can literally see that you're reading the texts..."));
                                        }
                                      }),
                                    ],
                                  );
                                } else
                                  return SizedBox(
                                    height: 0,
                                  );
                              },
                            ),
                            Builder(
                              builder: (context) {
                                if (onPressed2 == true) {
                                  return Container(
                                    child: Column(
                                      children: <Widget>[
                                        Visibility(
                                            visible: _visible5,
                                            child: textCard(
                                                context, tr("alvin.speech48"))),
                                        Builder(builder: (context) {
                                          if (_visible5 == true &&
                                              _visible6 == false) {
                                            return TextCardBubble();
                                          } else {
                                            return Visibility(
                                                visible: _visible6,
                                                child: TextCardOther(
                                                    tr("jacob.speech25")));
                                          }
                                        }),
                                        Visibility(
                                            visible: _visible7,
                                            child: textCard(
                                                context, tr("alvin.speech49"))),
                                        Builder(builder: (context) {
                                          if (_visible8 == true &&
                                              _visible6 == false) {
                                            return TextCardBubble();
                                          } else {
                                            return Visibility(
                                                visible: _visible8,
                                                child: TextCardOther(
                                                    tr("jacob.speech26")));
                                          }
                                        }),
                                        Visibility(
                                            visible: _visible9,
                                            child: textCard(
                                                context, tr("alvin.speech50"))),
                                        Builder(builder: (context) {
                                          if (_visible9 == true &&
                                              _visible10 == false) {
                                            return TextCardBubble();
                                          } else {
                                            return Visibility(
                                                visible: _visible10,
                                                child: TextCardOther(
                                                    tr("jacob.speech27")));
                                          }
                                        }),
                                        Visibility(
                                            visible: _visible11,
                                            child: textCard(
                                                context, tr("alvin.speech51"))),
                                        Builder(builder: (context) {
                                          if (_visible11 == true &&
                                              _visible12 == false) {
                                            return TextCardBubble();
                                          } else {
                                            return Visibility(
                                                visible: _visible12,
                                                child: TextCardOther(
                                                    tr("jacob.speech28")));
                                          }
                                        }),
                                        Visibility(
                                            visible: _visible13,
                                            child: textCard(
                                                context, tr("alvin.speech52"))),
                                      ],
                                    ),
                                  );
                                } else
                                  return SizedBox(
                                    height: 0,
                                  );
                              },
                            ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            // Visibility(
                            //   visible: _visible25,
                            //   child: continueButton(context, "/episode1-14"),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Builder(
                  builder: (context) {
                    if (_visible4) {
                      return SafeArea(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          height: 70.0,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(FontAwesomeIcons.solidSmileBeam),
                                iconSize: 25.0,
                                onPressed: () {},
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    child: Text(
                                      "Choose",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Theme.of(context).primaryColor,
                                          fontFamily: "BottleParty"),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Theme.of(context).accentColor,
                                      elevation: 4.0,
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          bottom: 15,
                                          left: 30,
                                          right: 30),
                                    ),
                                    onPressed: () {
                                      showModalBottomSheet<void>(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            height: 200,
                                            color: Colors.red[400],
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Theme.of(
                                                                      context)
                                                                  .primaryColor),
                                                      child:
                                                          Text("Ignore Jacob",
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: TextStyle(
                                                                color: Theme.of(
                                                                        context)
                                                                    .accentColor,
                                                                fontFamily:
                                                                    "BottleParty",
                                                                fontSize: 24,
                                                                letterSpacing:
                                                                    2,
                                                              )),
                                                      onPressed: () {
                                                        _visible4 = false;

                                                        Future.delayed(
                                                            const Duration(
                                                                seconds: 4),
                                                            () {
                                                          setState(() {
                                                            _visible5 = true;
                                                          });
                                                        });
                                                        Future.delayed(
                                                            const Duration(
                                                                seconds: 9),
                                                            () {
                                                          setState(() {
                                                            _visible6 = true;
                                                          });
                                                        });
                                                        Future.delayed(
                                                            const Duration(
                                                                seconds: 14),
                                                            () {
                                                          setState(() {
                                                            _visible7 = true;
                                                            _visible15 = true;
                                                          });
                                                        });
                                                        setState(() {
                                                          onPressed = true;
                                                          Navigator.of(context)
                                                              .pop();
                                                        });
                                                      }),
                                                  SizedBox(height: 5),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary: Theme.of(
                                                                    context)
                                                                .primaryColor),
                                                    child: Text("Answer Jacob",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Theme.of(context)
                                                                  .accentColor,
                                                          fontFamily:
                                                              "BottleParty",
                                                          fontSize: 24,
                                                          letterSpacing: 2,
                                                        )),
                                                    onPressed: () {
                                                      _visible4 = false;
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 0), () {
                                                        setState(() {
                                                          _visible5 = true;
                                                        });
                                                      });
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 5), () {
                                                        setState(() {
                                                          _visible6 = true;
                                                        });
                                                      });
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 10), () {
                                                        setState(() {
                                                          _visible7 = true;
                                                        });
                                                      });
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 15), () {
                                                        setState(() {
                                                          _visible8 = true;
                                                        });
                                                      });
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 20), () {
                                                        setState(() {
                                                          _visible9 = true;
                                                        });
                                                      });
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 25), () {
                                                        setState(() {
                                                          _visible10 = true;
                                                        });
                                                      });
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 30), () {
                                                        setState(() {
                                                          _visible11 = true;
                                                        });
                                                      });
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 35), () {
                                                        setState(() {
                                                          _visible11 = true;
                                                        });
                                                      });
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 40), () {
                                                        setState(() {
                                                          _visible12 = true;
                                                        });
                                                      });
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 45), () {
                                                        setState(() {
                                                          _visible13 = true;
                                                        });
                                                      });
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 50), () {
                                                        setState(() {
                                                          _visible14 = true;
                                                        });
                                                      });

                                                      setState(
                                                        () {
                                                          onPressed2 = true;
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(FontAwesomeIcons.telegramPlane),
                                iconSize: 25.0,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (_visible15) {
                      return SafeArea(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          height: 70.0,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(FontAwesomeIcons.solidSmileBeam),
                                iconSize: 25.0,
                                onPressed: () {},
                              ),
                              Expanded(
                                child: continueButton(context, "/episode1-15"),
                              ),
                              IconButton(
                                icon: Icon(FontAwesomeIcons.telegramPlane),
                                iconSize: 25.0,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (_visible14) {
                      return SafeArea(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          height: 70.0,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(FontAwesomeIcons.solidSmileBeam),
                                iconSize: 25.0,
                                onPressed: () {},
                              ),
                              Expanded(
                                child: continueButton(context, "/episode1-15"),
                              ),
                              IconButton(
                                icon: Icon(FontAwesomeIcons.telegramPlane),
                                iconSize: 25.0,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return messageComposer(context);
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterOneEnding4 extends StatefulWidget {
  @override
  _ChapterOneEnding2 createState() => _ChapterOneEnding2();
}

class _ChapterOneEnding2 extends State<ChapterOneEnding4> {
  @override
  void initState() {
    super.initState();
    FlameAudio.bgm.stop();
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.of(context).pushNamed('/chaptertwo');
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(context),
      child: new Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "",
            style: TextStyle(fontFamily: "SpaceMono"),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Stack(
          children: <Widget>[
            new Center(
              child: new Container(
                child: SafeArea(
                  child: new SingleChildScrollView(
                    child: new Column(
                      // center the children
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Padding(
                          padding: EdgeInsets.only(
                              top: 60.0, bottom: 50, left: 50, right: 50),
                          child: new Text(
                            "--",
                            textAlign: TextAlign.justify,
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontFamily: "SpaceMono"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 60.0, bottom: 10, left: 50, right: 50),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                """“A single rose can be my garden. A single friend, my world.”
- Leo Buscaglia""",
                                textStyle: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontFamily: "BottleParty"),
                                textAlign: TextAlign.center,
                                speed: Duration(milliseconds: 80),
                              ),
                            ],
                            isRepeatingAnimation: false,
                          ),
                        ),
                        new Padding(
                          padding: EdgeInsets.only(
                              top: 60.0, bottom: 50, left: 50, right: 50),
                          child: new Text(
                            "--",
                            textAlign: TextAlign.justify,
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontFamily: "SpaceMono"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
