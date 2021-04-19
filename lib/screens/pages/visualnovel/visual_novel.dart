// import 'package:BeginAgain/constructor/question.dart';
// import 'package:BeginAgain/globals/globals.dart';
// import 'package:BeginAgain/screens/pages/more/more.dart';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/audio_cache.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class VisualNovel extends StatefulWidget {
//   final String? page;
//   VisualNovel({
//     Key? key,
//     this.page,
//   });
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }

// class _QuizPageState extends State<VisualNovel> {
//   finalquizBrain = ChoiceSevenQ();
//   bool? isNoti;
//   late AudioCache _audioCache;
//   AudioPlayer player = new AudioPlayer();

//   void checkAnswer(bool userPickedAnswer) {
//     setState(() {
//       if (quizBrain.isFinished() == true) {
//         stopAudio();
//         Navigator.of(context).pushReplacementNamed("/episode1-8");
//       } else {
//         quizBrain.nextQuestion();
//       }
//     });
//   }

//   @override
//   void initState() {
//     getSound();
//     super.initState();
//     _audioCache = AudioCache(prefix: "assets/sound/soundeffects/");
//   }

//   void stopAudio() {
//     player.stop();
//   }

//   Future<Null> getSound() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     isNoti = (prefs.getBool("notiState"));
//     if (isNoti == true) {
//       playAudio();
//       playAudio2();
//     } else {
//       //_audioCache.play('pop.mp3', volume: 0);
//     }
//   }

//   void playAudio() async {
//     player = await _audioCache.loop('coffee-shop.mp3', volume: 0.4);
//   }

//   void playAudio2() async {
//     player = await _audioCache.play('coffee-shop-bell.mp3', volume: 0.5);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () => getOnWillPop(context),
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: Colors.black,
//         body: RawGestureDetector(
//           gestures: {
//             AllowMultipleGestureRecognizer:
//                 GestureRecognizerFactoryWithHandlers<
//                     AllowMultipleGestureRecognizer>(
//               () => AllowMultipleGestureRecognizer(),
//               (AllowMultipleGestureRecognizer instance) {
//                 instance.onTap = () {
//                   checkAnswer(true);
//                 };
//               },
//             )
//           },
//           behavior: HitTestBehavior.opaque,
//           child: Stack(
//             fit: StackFit.expand,
//             children: <Widget>[
//               BackgroundBuilder(image: "assets/images/cafe3.jpg"),
//               // Character here
//               ImageBuilder(image: quizBrain.getImage()),
//               // Sprites here
//               //spriteBuilder(context, quizBrain.getNumber()),

//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: <Widget>[
//                   Container(
//                     child: InterludeSoundJacob(
//                       quizBrain.getSound(),
//                       quizBrain.getCorrectAnswer(),
//                       quizBrain.getQuestionText(),
//                       quizBrain.getNumber(),
//                     ),
//                   ),
//                   skipClip(context, "/episode1-8"),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
