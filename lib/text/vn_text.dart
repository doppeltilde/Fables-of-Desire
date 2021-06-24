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
        characterText: "a world of wonders in a sea of broken glass",
        mcImage: "mc_happy"),
    Speech(
        characterName: "Tom",
        characterText:
            "mirror is a song about the costs of being hard on yourself.",
        charImage: "tom_happy"),
    Speech(
        characterName: "Naoki",
        characterText:
            "get your wish is a song about finding a reason to keep going, even if it's not for your own sake",
        charImage: "naoki_happy"),
    Speech(
        characterName: "Hidetake",
        characterText:
            "i see Look at the Sky as a mantra to remind myself that there's good reason for hope, and that people can meaningfully improve themselves and the world.",
        charImage: "hidetake_happy"),

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

  String? getSideCharImage() {
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
