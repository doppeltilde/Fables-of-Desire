import 'package:flutter/material.dart';

// Only Sprite

Widget getSprite(context, size, image) {
  print(image);
  return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / size),
      child: Image.asset(
        "assets/images/" + image,
        fit: BoxFit.fitHeight,
      ));
}

Widget spriteBuilder(context, n) {
  return Builder(
    builder: (context) {
      if (n == 0) {
        return getSprite(context, 12, "jacob/TAKU_smile2.png");
      } else if (n == 3 || n >= 9) {
        return getSprite(context, 12, "jacob/TAKU_smile2.png");
      }
      // Default
      else {
        return getSprite(context, 12, "jacob/TAKU_smile1.png");
      }
    },
  );
}

// Full Image

Widget imageBuilder(context, i) {
  double currentOpacity = 0;

  return AnimatedOpacity(
    duration: Duration(seconds: 2),
    opacity: currentOpacity,
    curve: Curves.linear,
    child: Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Image.asset(
          "assets/images/" + i + ".png",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 1.5,
        )
      ],
    )),
  );
}

class QuestionTest {
  String? questionText;
  String? questionAnswer;
  String? sound;

  QuestionTest(String q, String a, String s) {
    questionText = q;
    questionAnswer = a;
    sound = s;
  }
}

class QuizBrainTest {
  int _questionNumber = 0;

  List<QuestionTest> _questionBank = [
    QuestionTest(
        'Just as I was beginning to eat, Anna came down with a huge smile on her face.',
        "Alvin",
        "test_jacob_rec_1"),
    QuestionTest('”Good morning, this is going to be an awesome day!”', "Anna",
        "test_jacob_rec_2"),
    QuestionTest('”I wish I was as confident as you.”', "Alvin", "pop"),
    QuestionTest(
        "”Cheer up, bro. It's going to be fine, put a smile on that sad face. This is a chance for you to start all over, make new friends.”",
        "Anna",
        "pop"),
    QuestionTest("”I guess you're right.”", "Alvin", "pop"),
    QuestionTest("Let's hope that she's right...", "Alvin", "pop"),
    QuestionTest('”I wish I was as confident as you.”', "Alvin", "pop"),
    QuestionTest(
        "”Cheer up, bro. It's going to be fine, put a smile on that sad face. This is a chance for you to start all over, make new friends.”",
        "Anna",
        "pop"),
    QuestionTest("”I guess you're right.”", "Alvin", "pop"),
    QuestionTest("Let's hope that she's right...", "Alvin", "pop"),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String? getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  int getNumber() {
    return _questionNumber;
  }

  int getNumberPlus() {
    return _questionNumber++;
  }
}
