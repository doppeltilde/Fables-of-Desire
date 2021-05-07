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
              buttons(context, route, scaffoldKey),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: InterludeTextSound(
                      textSound.getCorrectAnswer(),
                      textSound.getQuestionText(),
                      textSound.getNumber(),
                      route,
                      scaffoldKey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
