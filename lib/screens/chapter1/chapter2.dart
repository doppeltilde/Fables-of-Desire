import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fablesofdesire/constructor/vn_constructor.dart';
import 'package:fablesofdesire/global/audio/game_audio.dart';
import 'package:fablesofdesire/global/will_pop.dart';
import 'package:fablesofdesire/text/vn_text.dart';
import 'package:flutter/material.dart';

class VN2 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<VN2> {
  static const currentRoute = "/2";
  static const nextRoute = "/1";
  TextConstructor1 textSound = TextConstructor1();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (this.mounted) {
        setState(() {
          _visible = !_visible;
        });
      }
    });
  }

  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => getOnWillPop(),
        child: Builder(builder: (context) {
          if (_visible == true) {
            return Scaffold(
                body: Center(
              child: AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 60.0, bottom: 10, left: 50, right: 50),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            "Some time later...",
                            speed: Duration(milliseconds: 85),
                            textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: "Julee"),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black,
                ),
              ),
            ));
          } else {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.black,
              body: InkWell(
                onTap: () {
                  setState(() {
                    if (textSound.isFinished() == true) {
                      Navigator.of(context).pushNamed(nextRoute);
                      if (GameAudio.bgm.audioPlayer != null) {
                        GameAudio.bgm.stop();
                      }
                      if (GameAudioDesktop.playAudio.player != null) {
                        GameAudioDesktop.playAudio.player?.stop();
                      }
                    } else {
                      textSound.nextQuestion();
                    }
                  });
                  // checkAnswer(true);
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
                      currentRoute,
                    ),
                  ],
                ),
              ),
            );
          }
        }));
  }
}
