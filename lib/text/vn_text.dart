import 'package:easy_localization/easy_localization.dart';

class TextSound {
  String? questionText;
  String? questionAnswer;
  String? sound;
  String? image;

  TextSound(String q, String a, String s, String i) {
    questionText = q;
    questionAnswer = a;
    sound = s;
    image = i;
  }
}

class TextConstructor1 {
  int textNumber = 0;

  List<TextSound> textBank = [
    TextSound(tr("mc.speech1"), tr("mc_name"), "silence", "transparent"),
    TextSound(tr("mc.speech2"), tr("mc_name"), "silence", "transparent"),
    TextSound(tr("mc.speech3"), tr("mc_name"), "silence", "transparent"),
    TextSound(tr("tom.speech1"), tr("tom_name"), "silence", "tom_neutral"),
    TextSound(tr("tom.speech2"), tr("tom_name"), "silence", "tom_neutral"),
    TextSound(tr("tom.speech3"), tr("tom_name"), "silence", "tom_neutral"),
    TextSound(
        tr("naoki.speech1"), tr("naoki_name"), "silence", "naoki_neutral"),
    TextSound(
        tr("naoki.speech2"), tr("naoki_name"), "silence", "naoki_neutral"),
    TextSound(
        tr("naoki.speech3"), tr("naoki_name"), "silence", "naoki_neutral"),
    TextSound(tr("hidetake.speech1"), tr("hidetake_name"), "silence",
        "hidetake_neutral"),
    TextSound(tr("hidetake.speech2"), tr("hidetake_name"), "silence",
        "hidetake_neutral"),
    TextSound(tr("hidetake.speech3"), tr("hidetake_name"), "silence",
        "hidetake_neutral"),
  ];

  void nextQuestion() {
    if (textNumber < textBank.length - 1) {
      textNumber++;
    }
  }

  String? getQuestionText() {
    return textBank[textNumber].questionText;
  }

  String? getCorrectAnswer() {
    return textBank[textNumber].questionAnswer;
  }

  bool isFinished() {
    if (textNumber >= textBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return textNumber;
  }

  String? getSound() {
    return textBank[textNumber].sound;
  }

  String? getImage() {
    return textBank[textNumber].image;
  }
}
