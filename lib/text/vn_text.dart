import 'package:easy_localization/easy_localization.dart';

class Speech {
  final String? characterName;
  final String? characterText;
  final String? mcImage;
  final String? charImage;
  final String? sideImage;

  Speech({
    this.characterName,
    this.characterText,
    this.mcImage,
    this.charImage,
    this.sideImage,
  });
}

class TextConstructor1 {
  int textNumber = 0;

  final m = "MC";
  List<Speech> textBank = [
    // Speech, Name, Voice, Image
    Speech(
        characterName: "MC",
        characterText: "HELLO WORLD",
        mcImage: "mc_neutral"),
    Speech(
        characterName: "Tom",
        characterText:
            """Good morning. Morning Brew has been proud to offer same-day email delivery since our founding in 2015. To make sure this newsletter is hitting your inbox every morning, you can take the following steps:""",
        charImage: "tom_neutral"),

//     Speech("MC", "Move us to your primary inbox if you use Gmail", "mc_happy"),
//     Speech(tr("tom_name"), "Add us to your VIP list if you use Apple Mail",
//         "tom_neutral"),
//     Speech(tr("tom_name"), "Add us to your favorites if you use Outlook",
//         "tom_neutral"),
//     Speech(
//         tr("tom_name"),
//         "Or some combination of the above if you use anything else. Thanks!",
//         "tom_neutral"),
//     Speech(tr("naoki_name"), tr("naoki.speech1"), "naoki_neutral"),
//     Speech(tr("naoki_name"), tr("naoki.speech2"), "naoki_neutral"),
//     Speech(tr("naoki_name"), tr("naoki.speech3"), "naoki_neutral"),
//     Speech(tr("hidetake_name"), tr("hidetake.speech1"), "hidetake_neutral"),
//     Speech(
//         tr("hidetake_name"),
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
//         "hidetake_neutral"),
//     Speech(
//         tr("hidetake_name"),
//         """This is considered an error condition because it indicates that there is content that cannot be
// seen. If the content is legitimately bigger than the available space, consider clipping it with a
// ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex,
// like a ListView.""",
//         "hidetake_neutral"),
  ];

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

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
}
