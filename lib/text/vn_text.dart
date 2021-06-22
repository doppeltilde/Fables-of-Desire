import 'package:easy_localization/easy_localization.dart';

class Speech {
  String? characterName;
  String? characterText;
  String? image;

  Speech(String? cn, String? ct, String? i) {
    characterName = cn;
    characterText = ct;
    image = i;
  }
}

class TextConstructor1 {
  int textNumber = 0;

  final m = "MC";
  List<Speech> textBank = [
    // Speech, Name, Voice, Image
    Speech("MC", "HELLO WORLD", "MC_Neutral"),
    Speech("MC", tr("mc.2"), "MC_Blush"),

    Speech("MC", tr("mc.3"), "MC_Happy"),
    Speech(tr("tom_name"), tr("tom.speech1"), "tom_neutral"),
    Speech(tr("tom_name"), tr("tom.speech2"), "tom_neutral"),
    Speech(tr("tom_name"), tr("tom.speech3"), "tom_neutral"),
    Speech(tr("naoki_name"), tr("naoki.speech1"), "naoki_neutral"),
    Speech(tr("naoki_name"), tr("naoki.speech2"), "naoki_neutral"),
    Speech(tr("naoki_name"), tr("naoki.speech3"), "naoki_neutral"),
    Speech(tr("hidetake_name"), tr("hidetake.speech1"), "hidetake_neutral"),
    Speech(
        tr("hidetake_name"),
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "hidetake_neutral"),
    Speech(
        tr("hidetake_name"),
        """This is considered an error condition because it indicates that there is content that cannot be
seen. If the content is legitimately bigger than the available space, consider clipping it with a
ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex,
like a ListView.""",
        "hidetake_neutral"),
  ];

  void nextQuestion() {
    if (textNumber < textBank.length - 1) {
      textNumber++;
    }
  }

  String? getCharacterText() {
    return textBank[textNumber].characterText;
  }

  String? getCharacterName() {
    return textBank[textNumber].characterName;
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

  String? getImage() {
    return textBank[textNumber].image;
  }
}
