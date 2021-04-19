import 'package:fablesofdesire/constructor/vn_constructor.dart';
import 'package:fablesofdesire/global/globals.dart';
import 'package:fablesofdesire/global/will_pop.dart';
import 'package:fablesofdesire/text/vn_text.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VN1 extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<VN1> {
  final String route = "/1";
  TextConstructor1 textSound = TextConstructor1();
  bool? isNoti;

  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (textSound.isFinished() == true) {
        Navigator.of(context).pushNamed(route);
      } else {
        textSound.nextQuestion();
      }
    });
  }

  @override
  void initState() {
    getSound();
    super.initState();
  }

  Future<Null> getSound() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
    } else {
      //_audioCache.play('pop.mp3', volume: 0);
    }
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
              BackgroundBuilder(image: "assets/images/img1.jpg"),
              // Character here
              ImageBuilder(image: textSound.getImage()),
              // Sprites here
              //spriteBuilder(context, quizBrain.getNumber()),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: InterludeTextSound(
                      textSound.getCorrectAnswer(),
                      textSound.getQuestionText(),
                      textSound.getNumber(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height / 7),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        skipClip(context, route),
                        SizedBox(
                          width: 7,
                        ),
                        settingsClip(context),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
