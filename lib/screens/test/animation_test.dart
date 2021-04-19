import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fablesofdesire/constructor/question.dart';
import 'package:fablesofdesire/screens/pages/more/more.dart';

QuizBrain quizBrain = QuizBrain();

class AnimationTest extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<AnimationTest> {
  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (quizBrain.isFinished() == true) {
        Navigator.of(context).pushReplacementNamed("/episode1-3");
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
        backgroundColor: Colors.black,
        body: InkWell(
          onTap: () => checkAnswer(true),
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
              Container(
                child: interlude(
                  context,
                  quizBrain.getCorrectAnswer(),
                  quizBrain.getQuestionText(),
                  quizBrain.getNumber(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget interlude(context, a, q, n) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Opacity(
        opacity: 0.8,
        child: Card(
          color: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(a,
                style: TextStyle(
                  fontFamily: "BottleParty",
                  fontSize: 35,
                  color: Theme.of(context).accentColor,
                )),
          ),
        ),
      ),
      Opacity(
        opacity: 0.8,
        child: Card(
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02, vertical: height * 0.02),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      q,
                      textAlign: TextAlign.justify,
                      textStyle: TextStyle(
                        fontFamily: "SpaceMono",
                        color: Theme.of(context).accentColor,
                        fontSize: 21,
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  isRepeatingAnimation: false,
                  key: ValueKey(n),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

// class AnimationTest extends StatefulWidget {
//   @override
//   _NotificationCardState createState() => _NotificationCardState();
// }

// class _NotificationCardState extends State<AnimationTest> {
//   final notificationTexts = const [
//     'Your Driver is coming',
//     'Your Driver has arrived',
//   ];

//   final subNotificationTexts = const [
//     'Be ready oustide soon',
//     'Your Driver has arrived',
//   ];

//   var _textIndex = 0;
//   var _subTextIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(35),
//               bottomRight: Radius.circular(45),
//               bottomLeft: Radius.circular(35),
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.5),
//                 spreadRadius: 2,
//                 blurRadius: 3,
//                 offset: Offset(0, 2),
//               ),
//             ],
//           ),
//           child: InkWell(
//             onTap: () => setState(() {
//               if (_textIndex < notificationTexts.length - 1) {
//                 _textIndex++;
//               } else {
//                 _textIndex = 0;
//               }
//               if (_subTextIndex < subNotificationTexts.length - 1) {
//                 _subTextIndex++;
//               } else {
//                 _subTextIndex = 0;
//               }
//               print('textIndex:$_textIndex');
//             }),
//             child: Row(
//               children: <Widget>[
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     TyperAnimatedTextKit(
//                       key: ValueKey(_textIndex),
//                       isRepeatingAnimation: false,
//                       speed: Duration(milliseconds: 20),
//                       text: [
//                         notificationTexts[_textIndex],
//                       ],
//                       textStyle: TextStyle(color: Colors.black),
//                     ),
//                     // Text(
//                     //   subNotificationTexts[_subTextIndex],
//                     // ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
