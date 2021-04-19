import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fablesofdesire/globals/globals.dart';
import 'package:fablesofdesire/screens/pages/more/more.dart';
import 'package:fablesofdesire/screens/test/sprite_images.dart';

class SpriteTest extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<SpriteTest> {
  QuizBrainTest quizBrain = QuizBrainTest();

  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (quizBrain.isFinished() == true) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SpriteTest()),
        );
      } else {
        quizBrain.nextQuestion();
      }
    });
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
                instance.onTap = () => checkAnswer(true);
              },
            )
          },
          behavior: HitTestBehavior.opaque,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              new Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/kitchen.jpg"),
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
              // Character here
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    imageBuilder(context, quizBrain.getNumber()),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //       top: MediaQuery.of(context).size.height / 5),
                    //   child: new Image.asset(
                    //     "assets/images/jacob/Default.png",
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                  ],
                ),
              ),
              // Sprites here
              //spriteBuilder(context, quizBrain.getNumber()),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: InterludeSound(
                      quizBrain.getSound(),
                      quizBrain.getCorrectAnswer(),
                      quizBrain.getQuestionText(),
                      quizBrain.getNumber(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Container(
                      //   padding: EdgeInsets.only(
                      //       bottom: MediaQuery.of(context).size.height / 6),
                      //   child: ElevatedButton(
                      //     style: ElevatedButton.styleFrom(
                      //         shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(18.0),
                      //         ),
                      //         primary: Theme.of(context).primaryColor),
                      //     onPressed: () => null,
                      //     child: Text(
                      //       "Complete",
                      //       style: TextStyle(
                      //           fontFamily: "BottleParty",
                      //           fontSize: 25,
                      //           letterSpacing: .4),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height / 6),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              primary: Theme.of(context).primaryColor),
                          onPressed: () => showAlertDialog(context),
                          onLongPress: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SpriteTest()),
                          ),
                          child: Text(
                            "Skip >>",
                            style: TextStyle(
                                fontFamily: "BottleParty",
                                fontSize: 25,
                                letterSpacing: .4),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Container(
                  //   padding: EdgeInsets.only(
                  //       bottom: MediaQuery.of(context).size.height / 6),
                  //   child: interlude(context, quizBrain.getCorrectAnswer(),
                  //       quizBrain.getQuestionText()),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
