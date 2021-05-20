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

  final m = "MC";
  List<TextSound> textBank = [
    // Speech, Name, Voice, Image
    TextSound(tr("mc.1"), "MC", "silence", "Cast/MC_Neutral"),
    TextSound(tr("mc.2"), "MC", "silence", "Cast/MC_Blush"),

    TextSound(tr("mc.3"), "MC", "silence", "Cast/MC_Happy"),
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
    TextSound(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        tr("hidetake_name"),
        "silence",
        "hidetake_neutral"),
    TextSound(
        """This is considered an error condition because it indicates that there is content that cannot be
seen. If the content is legitimately bigger than the available space, consider clipping it with a
ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex,
like a ListView.""", tr("hidetake_name"), "silence", "hidetake_neutral"),
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
