import 'dart:async';
import 'package:universal_platform/universal_platform.dart';

import 'package:dart_vlc/dart_vlc.dart';
import 'package:fablesofdesire/constructor/vn_constructor.dart';
import 'package:fablesofdesire/global/audio/game_audio.dart';
import 'package:fablesofdesire/global/audio/global_audio.dart';
import 'package:fablesofdesire/global/logical_keyboard.dart';
import 'package:fablesofdesire/global/will_pop.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VNScaffold extends StatefulWidget {
  final bgImage;
  final textSound;
  final route;
  final nextRoute;
  final Function? callback;
  final int? updatedNumber;
  VNScaffold({
    this.bgImage,
    this.textSound,
    this.route,
    this.nextRoute,
    this.callback,
    this.updatedNumber,
  });
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<VNScaffold> {
  var introFade = true;
  var switchFade = false;
  double? opacity = 0.0;
  double? opacityIntro = 1.0;
  String? notHome;
  SharedPreferences? sharedPreferences;

  // Function? callback;
  // int? updatedNumber;
  // _VNState({this.callback, this.updatedNumber});

  @override
  void didChangeDependencies() {
    if (UniversalPlatform.isWindows ||
        UniversalPlatform.isLinux &&
            GameAudioDesktop.playAudio.isPlaying == false) {
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

    if (GlobalAudio.playAudio.isPlaying == false) {
      try {
        if (widget.textSound.getBGM().isNotEmpty) {
          GlobalAudio.playAudio.getBGM(widget.textSound.getBGM().toString());
        }
      } catch (e) {
        //GlobalAudio.playAudio.getBGM(notHome ?? "");
      }
    } else {
      try {
        if (widget.textSound.getBGM().isNotEmpty) {
          GlobalAudio.playAudio.stopAudio();
          GlobalAudio.playAudio.getBGM(widget.textSound.getBGM().toString());
        }
      } catch (e) {
        //GlobalAudio.playAudio.getBGM(notHome ?? "");
      }
    }

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity = 1.0;
      });
    });
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      sharedPreferences = sp;
      notHome = sharedPreferences!.getString("notHome");
      try {
        if (widget.textSound.getBGM().isNotEmpty) {
          notHome = widget.textSound.getBGM().toString();
        }
      } catch (e) {
        print("EMPTY");
      }

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

  void _incrementCounter() {
    setState(() {
      if (widget.textSound.isFinished() == true) {
        Future.delayed(Duration(seconds: 2), () {
          Navigator.of(context).pushNamed(widget.nextRoute);
        });

        switchFade = true;
        Future.delayed(Duration(milliseconds: 300), () {
          setState(() {
            opacity = 1.0;
          });
        });
      } else {
        widget.textSound.nextQuestion();
        if (widget.callback != null) {
          widget.callback!(widget.textSound.getNumber());
        }
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (widget.textSound.isFinished() == true) {
        Future.delayed(Duration(seconds: 2), () {
          Navigator.of(context).pushNamed(widget.nextRoute);
        });

        switchFade = true;
        Future.delayed(Duration(milliseconds: 300), () {
          setState(() {
            opacity = 1.0;
          });
        });
      } else {
        widget.textSound.nextQuestion();
        if (widget.callback != null) {
          widget.callback!(widget.textSound.getNumber());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(),
      child: Builder(
        builder: (context) {
          if (this.mounted && introFade == true) {
            Future.delayed(Duration(milliseconds: 1200), () {
              setState(() {
                introFade = false;
              });
            });
            Future.delayed(Duration(milliseconds: 300), () {
              setState(() {
                opacityIntro = 0.0;
              });
            });
            return Scaffold(
              backgroundColor: Colors.black,
              body: Stack(
                children: [
                  BackgroundBuilder(
                    image: "assets/images/bgs/" + widget.bgImage + ".jpg",
                  ),
                  AnimatedOpacity(
                    opacity: opacityIntro!,
                    duration: Duration(milliseconds: 300),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
          } else {
            if (switchFade != false) {
              return Scaffold(
                backgroundColor: Colors.black,
                body: Stack(
                  children: [
                    BackgroundBuilder(
                      image: "assets/images/bgs/" + widget.bgImage + ".jpg",
                    ),
                    AnimatedOpacity(
                      opacity: opacity!,
                      duration: Duration(milliseconds: 300),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return CounterShortcuts(
                onIncrementDetected: _incrementCounter,
                onDecrementDetected: _decrementCounter,
                child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor: Colors.black,
                  body: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (widget.textSound.isFinished() == true) {
                          Future.delayed(Duration(seconds: 2), () {
                            Navigator.of(context).pushNamed(widget.nextRoute);
                          });

                          switchFade = true;
                          Future.delayed(Duration(milliseconds: 300), () {
                            setState(() {
                              opacity = 1.0;
                            });
                          });
                        } else {
                          widget.textSound.nextQuestion();
                          if (widget.callback != null) {
                            widget.callback!(widget.textSound.getNumber());
                          }
                        }
                      });
                    },
                    child: InterludeTextSound(
                      bgImage: "assets/images/bgs/" + widget.bgImage + ".jpg",
                      characterName: widget.textSound.getCharacterName(),
                      characterText: widget.textSound.getCharacterText(),
                      n: widget.textSound.getNumber(),
                      mcImage: widget.textSound.getMCImage(),
                      sideCharImage: widget.textSound.getSideCharImage(),
                      route: widget.route,
                      nextRoute: widget.nextRoute,
                      nextText: widget.textSound,
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
