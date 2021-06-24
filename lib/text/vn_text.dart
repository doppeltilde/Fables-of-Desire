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
