import 'package:easy_localization/easy_localization.dart';

class Question {
  String? questionText;
  String? questionAnswer;

  Question(String q, String a) {
    questionText = q;
    questionAnswer = a;
  }
}

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

class QuizBrain {
  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  String? getImage() {
    return _questionBank[_questionNumber].image;
  }

  int _questionNumber = 0;

  List<TextSound> _questionBank = [
    TextSound(tr("narrator.narrator1"), "Alvin", "silence", "transparent"),
    TextSound('”Good morning, this is going to be an awesome day!”', "Anna",
        "silence", "transparent"),
    TextSound('”I wish I was as confident as you.”', "Alvin", "silence",
        "transparent"),
    TextSound(
        "”Cheer up, bro. It's going to be fine, put a smile on that sad face. This is a chance for you to start all over, make new friends.”",
        "Anna",
        "silence",
        "transparent"),
    TextSound("”I guess you're right.”", "Alvin", "silence", "transparent"),
    TextSound(
        "Let's hope that she's right...", "Alvin", "silence", "transparent"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterOneThree {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”This is it.”", "Alvin"),
    Question(
        "I parked the airspeeder and we walked towards the academy.", "Alvin"),
    Question('”Good Luck Alvin, see ya!”', "Anna"),
    Question('”Great, now I am all alone.”', "Alvin"),
    Question(
        "Kids were playing, students were talking and aspiring officers were hastily walking around.",
        "Alvin"),
    Question(
        "All were minding their own business, going their own way.", "Alvin"),
    Question("I walked up to the building and turned around.", "Alvin"),
    Question(
        "”My gosh, this campus is huge. At least triple the size of my last one.”",
        "Alvin"),
    Question(
        "”I should probably ask someone for help. I will most likely get lost if I try to find the class on my own.”",
        "Alvin"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterOneFour1 {
  int _questionNumber = 0;

  List<TextSound> _questionBank = [
    TextSound('I went up to the Guy and asked him where class 3-E was.',
        "Alvin", "silence", "transparent"),
    TextSound(
        '”Yeah, dude. Just take these stairs and go up to the third level. Everything else will be self explanatory.”, he said grinning.',
        "Random Dude",
        "silence",
        "transparent"),
    TextSound('”Thanks, my Guy!”, I started running up the stairs.', "Alvin",
        "silence", "transparent"),
    TextSound("”I better hurry, I can't be late on the very first day!”",
        "Alvin", "silence", "transparent"),
    TextSound(
        "As I sprinted up the stairs I could hear the ringing of the school bell followed by the ding of an elevator.",
        "Alvin",
        "highschool-hall-bell",
        "transparent"),
    TextSound(
        "”What?? They have an elevator. Dude could have told me that. Now I'm running like an insane person!”",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "I could see someone in the corner of my eyes, coming straight at me. I immediately stopped, but it was too late.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "Oh, crap! I'm so sorry. Are you okay?”, I said, apologizing to the girl who fell to the ground.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”I was clearly at fault here.”, I said, extended my hand to her.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”Ah, no worries. We were clearly both at fault.”, she replied, grabbing my hand.",
        "Girl",
        "tea1",
        "teaSmile"),
    TextSound(
        "”I was just on my way to the class 3-E, would you mind telling me where it is?”",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”Well, what a coincidence we met then, because I'm just on my way there, come with me if you want.”",
        "Girl",
        "tea2",
        "teaSmile"),
    TextSound(
        "”I'm Tea, by the way. And I'm guessing you're the new guy Mrs. Smith told us about.”",
        "Tea",
        "tea3",
        "teaSmile"),
    TextSound(
        "”I guess, that's me. Nice to meet you too, I'm Alvin. I moved here with my family a week or so ago. I still can't get used to such a big city.”, I said chuckling.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”Yeah, I can imagine. I've been living here for like eight years and I still get lost sometimes. But, you'll get used to it.”",
        "Tea",
        "tea4",
        "teaHappy"),
    TextSound(
        "We were of course late to class.", "Alvin", "silence", "transparent"),
    TextSound(
        "”Ms. Jeong! Late on the first day?? And who's that you brought with you?”, the substitute teacher asked.",
        "Mrs. Wilson",
        "silence",
        "transparent"),
    TextSound(
        "”So sorry, Mrs. Wilson. I literally bumped into Alvin here who...”",
        "Tea",
        "tea5",
        "teaContent"),
    TextSound(
        "”Yes, yes, Mrs. Smith mentioned you. You can sit next to Mr. Valerian over there. Now can we start this class!?”",
        "Mrs. Wilson",
        "silence",
        "transparent"),
    TextSound(
        "”Alright, see you around, Alvin.”, Tea sat down next to a friend of hers.",
        "Tea",
        "tea6",
        "teaSmile"),
    TextSound(
        "”Sup dude, you can sit here.”, I heard a voice. A guy waved at me.",
        "Guy",
        "jacob0",
        "jacobSmile"),
    TextSound("”Thanks, I'm Al...”", "Alvin", "silence", "transparent"),
    TextSound("”What's your username, dude?”, he interrupted me.", "Guy",
        "jacob1", "jacobHappy"),
    TextSound("He asked while pointing at his hand terminal.", "Jacob",
        "silence", "transparent"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }

  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  String? getImage() {
    return _questionBank[_questionNumber].image;
  }
}

class ChapterOneFour2 {
  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  String? getImage() {
    return _questionBank[_questionNumber].image;
  }

  int _questionNumber = 0;

  List<TextSound> _questionBank = [
    TextSound(
        'I went looking for someone else.\nAs I approached an elevator a girl was already standing in front of it.',
        "Alvin",
        "silence",
        "transparent"),
    TextSound("”She seems nice. I should ask her.”", "Alvin", "silence",
        "transparent"),
    TextSound(
        "”Hi. Sorry to bother you, I'm new here. Would you mind telling me where class 3-E is?”",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "She turned around and looked at me for a while. And oh my gosh, she radiated such a beauty I've never seen before.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "My heart started running a marathon and my anxiety went through the roof.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”Hey, what a coincidence we met then, because I'm just on my way there, follow me if you want.”",
        "Girl",
        "tea7",
        "teaSmile"),
    TextSound(
        "'Y-Yeah, thanks.', I nodded.", "Alvin", "silence", "transparent"),
    TextSound("The elevator came and we went aboard.", "Alvin", "silence",
        "transparent"),
    TextSound(
        "”You must be the new guy Mrs. Smith mentioned, I'm Tea.”, she said while extending her hand.",
        "Tea",
        "tea8",
        "teaSmile"),
    TextSound(
        "”I guess that's me. Nice to meet you too, I'm Alvin.”, I greeted her hand with the same gesture.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”I moved here with my family a week or so ago. I still can't get used to such a big city.”, I said chuckling.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”Yeah, I can imagine. I've been living here for like eight years and I still get lost sometimes. But, you'll get used to it.”",
        "Tea",
        "tea4",
        "teaSmile"),
    TextSound("The elevator door opened and we got to the class just on time.",
        "Alvin", "highschool-hall-bell", "transparent"),
    TextSound("”Good morning, Ms. Liovich. Who's this you brought with you?”",
        "Mrs. Wilson", "silence", "transparent"),
    TextSound("”This is Alvin, I literally met him on my way here.”", "Tea",
        "tea9", "teaSmile"),
    TextSound(
        "”Well Alvin, nice too meet you. You can sit next to Mr. Valerian over there.”",
        "Mrs. Wilson",
        "silence",
        "transparent"),
    TextSound(
        "”Alright, see you around, Alvin.”, Tea sat down next to a friend of hers.",
        "Tea",
        "tea6",
        "teaSmile"),
    TextSound(
        "”Sup dude, you can sit here!”, I heard a voice. A guy waved at me.",
        "Guy",
        "jacob0",
        "jacobSmile"),
    TextSound("”Thanks, I'm Al...”", "Alvin", "silence", "transparent"),
    TextSound("”What's your username, dude?”, he interrupted me.", "Guy",
        "jacob1", "jacobHappy"),
    TextSound("He asked while pointing at his hand terminal.", "Jacob",
        "silence", "transparent"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChoiceSevenQ {
  int _questionNumber = 0;

  List<TextSound> _questionBank = [
    TextSound(
        'I went to the place Jacob wanted to meet and spotted him right away.',
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”My gosh, this smells awesome!”", "Alvin", "silence", "transparent"),
    TextSound("”One of the best places in the whole city.”", "Jacob", "jacob2",
        "jacobSmile"),
    TextSound(
        "I'm starting to get what you mean by that.”, I replied glaring at all the delicacies around us.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "I sat down and looked at the menu and the waitress came and took our orders.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "As she walked away, I spotted a familiar face in the corner of my eye...",
        "Alvin",
        "silence",
        "transparent"),
    TextSound("”Dude, is that Tea?”, I asked Jacob, while staring at her.",
        "Alvin", "silence", "transparent"),
    TextSound("”Yeah, it's her...”", "Jacob", "jacob3", "jacobSmile"),
    TextSound("”Dude, you alright??”", "Jacob", "jacob4", "jacobContent"),
    TextSound("”Stop staring at her!”", "Jacob", "jacob5", "jacobContent"),
    TextSound("”Oh, whoops!”", "Alvin", "silence", "transparent"),
    TextSound(
        "Jacob gave me a suspicious look.", "Jacob", "silence", "jacobContent"),
    TextSound("”What?”", "Alvin", "silence", "transparent"),
    TextSound("...", "Jacob", "silence", "jacobHappy"),
    TextSound("”What??”", "Alvin", "silence", "transparent"),
    TextSound("He pointed at his phone.", "Jacob", "silence", "jacobSmile"),
  ];

  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  String? getImage() {
    return _questionBank[_questionNumber].image;
  }

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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChoiceNineQ {
  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  String? getImage() {
    return _questionBank[_questionNumber].image;
  }

  int _questionNumber = 0;

  List<TextSound> _questionBank = [
    TextSound(
        "”Hey guys, we didn't expect to see you two here. Can we join you?”",
        "Elaine",
        "silence",
        "transparent"),
    TextSound(
        "I found it hilarious how Jacob suddenly blushed while Elaine spoke to us.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound("”Sure, feel free to do so.”, I replied.", "Alvin", "silence",
        "transparent"),
    TextSound(
        "Elaine sat down next to Jacob and Tea next to me. Jacob couldn't say a word, perhaps he was still shook.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”So how was your first week, Alvin?”", "Tea", "tea10", "teaSmile"),
    TextSound(
        "”Nothing to spectacular, I guess. By the way, thanks for helping me out, otherwise I would have ended up who knows where.”",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "She smiled and turned herself a bit, putting her full attention on me while Jacob and Elaine spoke.",
        "Tea",
        "silence",
        "transparent"),
    TextSound("”Any time, Alvin.”", "Tea", "tea11", "teaSmile"),
    TextSound(
        "The waitress brought our meals and we began to eat. ”Bon appetit.”",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”I have something to ask you?”, she asked while tapping on my shoulder.",
        "Tea",
        "tea12",
        "teaContent"),
    TextSound("”Sure, ask away.”", "Alvin", "silence", "transparent"),
    TextSound("”Better this way.”", "Tea", "tea13", "teaContent"),
    TextSound("She proceeded to take out her terminal and point at it.", "Tea",
        "silence", "transparent"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterOneEndingQ {
  int _questionNumber = 0;
  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  String? getImage() {
    return _questionBank[_questionNumber].image;
  }

  List<TextSound> _questionBank = [
    TextSound(
        "Tea stood up, ”Elaine, I almost forget. I have that thing to do.”",
        "Tea",
        "tea14",
        "teaSmile"),
    TextSound("Elaine made a sad face, I guess she didn't want to go just yet.",
        "Elaine", "silence", "transparent"),
    TextSound(
        "”I can take you home, if you want.”, I interrupted, catching on what she was doing.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "Jacob gave me an approving smile.", "Jacob", "silence", "transparent"),
    TextSound("”Sure, if you want, why not?”", "Tea", "tea15", "teaSmile"),
    TextSound("So we headed out.", "Alvin", "silence", "transparent"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterOneEnding2Q {
  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  String? getImage() {
    return _questionBank[_questionNumber].image;
  }

  int _questionNumber = 0;

  List<TextSound> _questionBank = [
    TextSound("”Tea, where are you going?”", "Alvin", "silence", "transparent"),
    TextSound(
        "”Oh, uh. To the hyperloop station.”", "Tea", "tea16", "teaContent"),
    TextSound(
        "”I have something better, an airspeeder. I can literally take you home.”",
        "Alvin",
        "silence",
        "transparent"),
    TextSound("”Wow, thanks! We only one of those standard issued drone cars.”",
        "Tea", "tea17", "teaHappy"),
    TextSound("”Yeah, we had one of those too in California.”", "Alvin",
        "silence", "transparent"),
    TextSound(
        "We hopped into the airspeeder.", "Narrator", "silence", "transparent"),
    TextSound(
        "Republic City's skyline truly was a marvel to gaze upon, especially in the late afternoon sun.",
        "Narrator",
        "silence",
        "transparent"),
    TextSound(
        "Even though one could still see bomb craters and destroyed buildings, Republic authorities have really pushed to rebuild ”Greater Shanghai” now the capital.",
        "Narrator",
        "silence",
        "transparent"),
    TextSound("”So, you mentioned California. Do you miss it, your old home?”",
        "Tea", "tea18", "teaSmile"),
    TextSound(
        "Really hard to say. On one hand I surely miss it, on the other I'm open to the possiblities of a new future.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "A bit of backstory, I grew up during the golden age of the American Conglomerate States.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "Although we in the Free State of California were initially spared from the great collapse, the collapse of the ACS really hit us hard...",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”And when the first h-bomb dropped on Los Angeles, we deemed it unsafe to stay in California any longer...",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "My family thought of relocating to the African Union, the City State Casablanca or even Europolis.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound("But all paths there would have taken us through a warzone.",
        "Alvin", "silence", "transparent"),
    TextSound(
        "It was a struggle, we even thought of relocating to a luna colony or the Martian Technocracy.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "But with all the stuff going on, airspace was too unsafe for travels.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "We finally settled with the newly established ”United Republic of Nations”.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "We had our concerns at first since the ”Eastern Liberation Wars” here just ended.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”So, yeah. That's how I ended up here in ”Republic City” and I'm glad I did.“",
        "Alvin",
        "silence",
        "transparent"),
    TextSound("”What about you? You mentioned you moved here 8 years ago.”",
        "Alvin", "silence", "transparent"),
    TextSound("”Just like you we too had flee from a war...”", "Tea", "tea19",
        "teaSmile"),
    TextSound("At that time my family lived in remnant territory.", "Tea",
        "tea20", "teaSmile"),
    TextSound(
        "”Even though I was only seven at that time, I lividly remember the siege and liberation of the Pyongyang.”",
        "Tea",
        "tea21",
        "teaSmile"),
    TextSound(
        "”The cries in those sleepless nights still haunt me to this day...”",
        "Tea",
        "tea22",
        "teaSmile"),
    TextSound(
        "”Anyway, just like us many lost their homes and since we didn't want to stay we moved here - to Republic City.”",
        "Tea",
        "tea23",
        "teaSmile"),
    TextSound("”Well, I'm just glad you're here.”", "Alvin", "silence",
        "transparent"),
    TextSound("We arrived at her house.", "Narrator", "silence", "transparent"),
    TextSound("”Thanks Alvin.”", "Tea", "tea24", "teaSmile"),
    TextSound("”I'm glad you're here, too.”", "Tea", "tea25", "teaSmile"),
    TextSound("She hugged me and then flashed the sweetest smile.", "Alvin",
        "silence", "teaSmile"),
    TextSound("”Alright. See you around, Alvin.”", "Tea", "tea6", "teaSmile"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterTwoFourQ {
  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  String? getImage() {
    return _questionBank[_questionNumber].image;
  }

  int _questionNumber = 0;

  List<TextSound> _questionBank = [
    TextSound("The door bell rang.", "Narrator", "silence", "transparent"),
    TextSound("”Hey, Alvin!”, Tea greeted as she embraced me.", "Tea", "tea26",
        "teaHappy"),
    TextSound("I love when she does that.", "Alvin", "silence", "transparent"),
    TextSound(
        "”You know where my room is. I'll be right there, just need to do something first.”",
        "Alvin",
        "silence",
        "transparent"),
    TextSound("”Okay, will do.”, she flashed such a cute smile again.", "Tea",
        "tea27", "teaSmile"),
    TextSound(
        "”It's a classic”, she said while projecting the movie ”the Land before time” from her terminal.",
        "Tea",
        "tea28",
        "teaSmile"),
    TextSound("”Wow, haven't seen that since forever.”", "Alvin", "silence",
        "transparent"),
    TextSound(
        "After a while she leaned her head on my shoulder and proceeded to put her hand in mine.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound("I wrapped my arm around her, gently hugged her.", "Alvin",
        "silence", "transparent"),
    TextSound("How I wish this moment could last forever.", "Alvin", "silence",
        "transparent"),
    TextSound("The dinosaur mother died and she squeezed my hand tighter.",
        "Alvin", "silence", "transparent"),
    TextSound("I looked at her and just wanted to kiss her.", "Alvin",
        "silence", "transparent"),
    TextSound(
        "”Thanks Alvin, for being such a good friend to me.”, she suddenly said.",
        "Tea",
        "tea29",
        "teaSmile"),
    TextSound("A friend...", "Alvin", "silence", "transparent"),
    TextSound("Am I a joke to you?, I thought to myself.", "Alvin", "silence",
        "transparent"),
    TextSound("Why was she still holding my hand then?", "Alvin", "silence",
        "transparent"),
    TextSound(
        "Why was she still in my arms?", "Alvin", "silence", "transparent"),
    TextSound("I'll probably never know...", "Alvin", "silence", "transparent"),
    TextSound("After a while I noticed that my terminal was blinking.", "Alvin",
        "silence", "transparent"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterTwoSixQ {
  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  String? getImage() {
    return _questionBank[_questionNumber].image;
  }

  int _questionNumber = 0;

  List<TextSound> _questionBank = [
    TextSound(
        "Tea, we literally forgot about the house party! We need literally need to go now.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound("”Oh yeah, forgot about that...”", "Tea", "tea30", "teaHappy"),
    TextSound(
        "We flew to Elaines estate.", "Narrator", "silence", "transparent"),
    TextSound(
        "”I didn't know she literally lived at the ocean. That is pretty rad!”",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”Yeah, her father is a renouned grand admiral in the navy and he really loves the sea, hence him being in the navy.”",
        "Tea",
        "tea31",
        "teaSmile"),
    TextSound("The door was open, but we still proceeded to ring.", "Alvin",
        "silence", "transparent"),
    TextSound("”Just come in”, we heard Elaine replying.", "Elaine", "silence",
        "transparent"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterTwoSix1Q {
  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  String? getImage() {
    return _questionBank[_questionNumber].image;
  }

  int _questionNumber = 0;

  List<TextSound> _questionBank = [
    TextSound("”Wow, I really like how they changed the place.”", "Tea",
        "tea32", "teaSmile"),
    TextSound(
        "There was a table with snacks, a big holodisplay for those who wanted to watch something and some old school board games.",
        "Narrator",
        "silence",
        "transparent"),
    TextSound("The girls rushed somewhere and I greeted Jacob.", "Narrator",
        "silence", "transparent"),
    TextSound("”That was some work, but we got done.”", "Jacob", "jacob6",
        "jacobSmile"),
    TextSound(
        "”Sorry for not coming sooner and helping. Do you need help with anything?”",
        "Alvin",
        "silence",
        "transparent"),
    TextSound("”Nah, it's chill. Just come with me.”", "Jacob", "jacob7",
        "jacobSmile"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterTwoSix2Q {
  int _questionNumber = 0;

  List<TextSound> _questionBank = [
    TextSound("Jacob turned up some music and we sat down.", "Narrator",
        "silence", "transparent"),
    TextSound("”Here you go.”, Jacob handed me a beer.", "Jacob", "jacob9",
        "jacobSmile"),
    TextSound("BOOM. BOOM. Followed by a deep rumbling.", "Narrator", "boom",
        "transparent"),
    TextSound("A Republic battlecruiser entered the lower atmosphere.",
        "Narrator", "silence", "transparent"),
    TextSound(
        "”Amazing how we humans almost colonized the entire solar system.”",
        "Jacob",
        "jacob10",
        "jacobContent"),
    TextSound(
        "”Yet here on Earth we still squable over lands, borders and seas.”",
        "Jacob",
        "jacob11",
        "jacobContent"),
    TextSound(
        "”As you know the headquarters of the ”Valerian Trading Company” were located in the eternal city for the past two millennia.”",
        "Jacob",
        "jacob12",
        "jacobContent"),
    TextSound(
        "”When the ”Great Collapse” happened and the ”Eastern Liberation Wars” broke out in 2089, republic forces had the superior technology and all went well - for the first few months.”",
        "Jacob",
        "jacob13",
        "jacobContent"),
    TextSound(
        "”But after a few years they were driven back to their very own borders and even homeland.”",
        "Jacob",
        "jacob14",
        "jacobContent"),
    TextSound(
        "”Prior to the collapse my grandfather left for the Martian technocracy, who had developed the very first fully functional mechs.”",
        "Jacob",
        "jacob15",
        "jacobContent"),
    TextSound(
        "”He was supposed to negotiated a trade deal, a top-secret one at that in favor for the remnants.”",
        "Jacob",
        "jacob16",
        "jacobContent"),
    TextSound(
        "”For unknown reasons he defected and sent aid to the Federation.”",
        "Jacob",
        "jacob17",
        "jacobContent"),
    TextSound(
        "”Of course getting the mechs into Federation space was another problem all together.”",
        "Jacob",
        "jacob18",
        "jacobContent"),
    TextSound(
        "Remnants had blockades all around the then shrunken ”Asian Federation”.",
        "Jacob",
        "jacob19",
        "jacobContent"),
    TextSound(
        "But finally, ”Blockade Runner 0-0-9” would break the impenetrable blockade and bring much needed reinforcements to the Federation.",
        "Jacob",
        "jacob20",
        "jacobSmile"),
    TextSound(
        "The first mechs saw their first action and victory at the ”Second Battle of Okinawa”.",
        "Jacob",
        "jacob21",
        "jacobSmile"),
    TextSound(
        "And just like that the tide turned in favor for the Federation...",
        "Jacob",
        "jacob22",
        "jacobSmile"),
    TextSound(
        "Japan, Korea, Vietnam, soon all of south and central asia would be liberated.",
        "Jacob",
        "jacob23",
        "jacobSmile"),
    TextSound(
        "”Not long after the Republic liberated all of Asia and Oceania from the remnants.",
        "Jacob",
        "jacob24",
        "jacobSmile"),
    TextSound(
        "By that time, 10 years had past and another 10 would have to pass...”",
        "Jacob",
        "jacob25",
        "jacobSmile"),
    TextSound(
        "Central Russia, Egypt and all of the middle east would be liberated.",
        "Jacob",
        "jacob26",
        "jacobSmile"),
    // TextSound("”Ankara was besieged but with no prevail.”", "Jacob", "jacob27",
    //     "transparent"),
    TextSound(
        "And finally in 2110 with the ”Levantine Treaty” the war finally saw an end.",
        "Jacob",
        "jacob28",
        "jacobSmile"),
    TextSound(
        "”The time succeeding the war, was a time of peace and prosperity for the ”Asian Federation”, now renamed into the ”United Republic of Nations”.",
        "Jacob",
        "jacob29",
        "jacobSmile"),
    TextSound(
        "”Without Valerian help the United Republic would have been defeated in less than 10 years and many here know that and are very grateful to us.”",
        "Jacob",
        "jacob30",
        "jacobSmile"),
    TextSound("”Did you see the war? The real actual deal?”", "Alvin",
        "silence", "transparent"),
    TextSound("No. But Tea did...", "Jacob", "jacob31", "jacobContent"),
    TextSound(
        "She did mention the siege of Pyongyang, but didn't go into detail...",
        "Alvin",
        "silence",
        "transparent"),
    TextSound("”Yeah. That's not something she talks about.”", "Jacob",
        "jacob32", "jacobContent"),
    TextSound(
        "So, how did you end up here?", "Alvin", "silence", "transparent"),
    TextSound("”Sadly my grandfather would not see the end of the war...”",
        "Jacob", "jacob33", "jacobContent"),
    TextSound("”He would be executed for treason.”", "Jacob", "jacob34",
        "jacobContent"),
    TextSound(
        "My father and mother, who fun fact is a Martian, would flee into Republic territory.",
        "Jacob",
        "jacob36",
        "jacobSmile"),
    TextSound(
        "Here they would rebuild the ”Valerian trading company” which is now one of the best known and well respected trading empires in the system.”",
        "Jacob",
        "jacob37",
        "jacobSmile"),
    TextSound(
        "”Our influence spans from the Mercury mines to the far reaches of the 11th planet.",
        "Jacob",
        "jacob38",
        "jacobHappy"),
    TextSound("Another deep rumbling could be heard in the distance.",
        "Narrator", "silence", "transparent"),
    TextSound("A old pre-war cargo frigate lifted off into the evening sky.",
        "Narrator", "silence", "transparent"),
    TextSound("Jacob stood up and finished up the last grill food.", "Narrator",
        "silence", "transparent"),
    TextSound("”I have to ask. Do you think Tea has the same feelings for me?”",
        "Alvin", "silence", "transparent"),
    TextSound(
        "”I'm certain she does. She looks at you the same way you look at her. Only less obvious.”, he replied chuckling.",
        "Jacob",
        "jacob39",
        "transparent"),
    TextSound(
        "”I really hope you're right.”", "Alvin", "silence", "transparent"),
    TextSound("”How are things going between you and Elaine?”", "Alvin",
        "silence", "transparent"),
    TextSound("Jacob took a sip from his beer.", "Narrator", "silence",
        "transparent"),
    TextSound(
        "”To be honest, I've never been more in love with a person in my life.”",
        "Jacob",
        "jacob40",
        "transparent"),
    TextSound(
        "”She's full of charm , humour and delight. I just love being around her.”",
        "Jacob",
        "jacob41",
        "transparent"),
    TextSound(
        "”Dude, that's great to hear.”", "Alvin", "silence", "transparent"),
    TextSound(
        "”Don't worry you'll get to love Tea just as much as I do Elaine.”, Jacob said taking another sip.",
        "Jacob",
        "jacob42",
        "transparent"),
    TextSound("The door bell rang.", "Narrator", "silence", "transparent"),
    TextSound(
        "Seems like more guest arrived, I better go look who that is. Oh by the way, you can already take some food.",
        "Jacob",
        "jacob43",
        "transparent"),
    TextSound("And I better check on Tea.", "Alvin", "silence", "transparent"),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  String? getImage() {
    return _questionBank[_questionNumber].image;
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String? getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterTwoNineQ {
  String? getSound() {
    return _questionBank[_questionNumber].sound;
  }

  String? getImage() {
    return _questionBank[_questionNumber].image;
  }

  int _questionNumber = 0;

  List<TextSound> _questionBank = [
    TextSound("She was laying on the roof an old abandoned boat.", "Narrator",
        "silence", "transparent"),
    TextSound("”Here you go, your food.”", "Alvin", "silence", "transparent"),
    TextSound("”...”", "Tea", "silence", "transparent"),
    TextSound("She didn't move, so I climbed up there and lay beside her.",
        "Narrator", "silence", "transparent"),
    TextSound("”Whatcha thinkin about?”", "Alvin", "silence", "transparent"),
    TextSound("”Hmm... Stuff...”", "Tea", "tea33", "teaSmile"),
    TextSound(
        "”Mind sharing those thoughts?”", "Alvin", "silence", "transparent"),
    TextSound(
        "A full naval fleet could just be made out by the naked eye in orbit.",
        "Narrator",
        "silence",
        "transparent"),
    TextSound("”How many people do you think are up there?”", "Tea", "tea34",
        "teaSmile"),
    TextSound("”Hmmm... At least fifty thousand. Why?”", "Alvin", "silence",
        "transparent"),
    TextSound(
        "”I wonder what their stories are...”", "Tea", "tea35", "teaSmile"),
    TextSound(
        "”How they got there, what their interests are, who they have a crush on...”",
        "Tea",
        "tea36",
        "teaSmile"),
    TextSound(
        "”I wonder - did people a hundred years think the same things, feel the same things, talk about the same things?”",
        "Tea",
        "tea37",
        "teaSmile"),
    TextSound(
        "”I would like to believe so. They all must have had their ups and downs, of course. Their friends and love intrests. Their talks just like these...”",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "She turned herself facing me.", "Narrator", "silence", "transparent"),
    TextSound("”But... All those memories are now lost in time - forever...”",
        "Tea", "tea38", "teaSmile"),
    TextSound("”Time is such a painful, yet wonderful thing...”", "Tea",
        "tea39", "teaSmile"),
    TextSound(
        "”I sometimes wonder if we can go back in time or even forward. Like a Doctor Who time machine.”",
        "Tea",
        "tea40",
        "teaSmile"),
    TextSound(
        "”Doctor Who, wow that brings back memories... I remember binging that all the time.”",
        "Alvin",
        "silence",
        "transparent"),
    TextSound(
        "”See, you're remembering something that happened not that long ago, yet will be forgotten not long after.”",
        "Tea",
        "tea41",
        "teaSmile"),
    TextSound("I finally turned myself facing her.", "Narrator", "silence",
        "transparent"),
    TextSound("She smiled.", "Tea", "silence", "teaSmile"),
    TextSound(
        "Those eyes, those beautiful mysterious eyes were radiating such a beauty.",
        "Alvin",
        "silence",
        "transparent"),
    TextSound("”Do you wrestle with dreams?”", "Tea", "tea42", "transparent"),
    TextSound("”Do you contend with shadows?”", "Tea", "tea43", "transparent"),
    TextSound(
        "”Do you move in a kind of sleep?”", "Tea", "tea44", "transparent"),
    TextSound("”Time has slipped away.”", "Tea", "tea45", "transparent"),
    TextSound("”Your life is stolen.”", "Tea", "tea46", "transparent"),
    TextSound("”You tarried with trifles,\nVictim of your folly.”", "Tea",
        "tea47", "transparent"),
    // TextSound("”There should be a science of discontent.”", "Alvin"),
    // TextSound(
    //     "”People need hard times to develop psychic muscles...”", "Alvin"),
    // TextSound("Noise was coming from the beach.", "Narrator", "silence",
    //     "transparent"),
    // TextSound(
    //     "”Wow, look at the time...”", "Tea", "silence", "transparent"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterTwoNineQ1 {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("She stood up and grabbed my hand.", "Narrator"),
    Question("”It's almost midnight, the fireworks will start soon.”", "Tea"),
    Question("We went down to the pier and sat down on the grass.", "Alvin"),
    Question("She leaned her head on my shoulder.", "Alvin"),
    Question("5", "Narrator"),
    Question("I wrapped my arm around her.", "Alvin"),
    Question("4", "Narrator"),
    Question("”Tea I have to tell you something...”", "Alvin"),
    Question("3", "Narrator"),
    Question("”Yeah...?”", "Tea"),
    Question("2", "Narrator"),
    Question("”I...”", "Alvin"),
    Question("1", "Narrator"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterTwoNine2Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("The fireworks went off!", "Narrator"),
    Question("We stood up and were just mesmerized.", "Alvin"),
    Question("”Happy new year, Alvin!!!”", "Tea"),
    Question("She hugged me tightly and didn't let go for a while.", "Alvin"),
    Question("”What did you want to say earlier?”", "Tea"),
    Question(
        "Her smile was as beatiful as the fireworks above us.", "Narrator"),
    Question("”Tea, I just wanted to say...”", "Alvin"),
    Question("”Thank you...”", "Alvin"),
    Question("”Thank you for being such a good friend...”", "Alvin"),
    Question(
        "”ALVIN YOU IDIOT! WHY DID YOU SAY THAT?!! DO YOU SEE HER FACE, YOU RUINED EVERYTHING!!!”",
        "Alvin"),
    Question("She gave me a confused, disappointing and sad look.", "Tea"),
    Question(
        "”You're welcome, I guess.”, her smile now completly gone.", "Tea"),
    Question(
        "The fireworks continued to shoot into the night sky and you could faintly hear the others celebrating.",
        "Narrator"),
    Question(
        "”Shall we go to the others?”, she asked after a while of silence.",
        "Tea"),
    Question("”Sure...”", "Alvin"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterThreeFourQ {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("She was right, the book exhibition was open.", "Narrator"),
    Question(
        "”My, I've never seen so many books in one place. But then again, this is library.”",
        "Alvin"),
    Question("There she is, better play it cool.", "Alvin"),
    Question("”Hey, nice to see you again.”", "Alvin"),
    Question(
        "”Yeah, I've missed you too.”, she replied with a big smile on her face.",
        "Tea"),
    Question("”Come, let's see what they have. I'm quite excited.”", "Tea"),
    Question(
        "She talked about books and titles, I've never heard of.", "Alvin"),
    Question(
        "I just loved listening to every word of her and every smile she gave me.",
        "Alvin"),
    Question("”Alvin, are you still listening?”", "Tea"),
    Question("”Yeah, sorry. My mind just drifted.”", "Alvin"),
    Question("”So, Alvin. Do you like to read?”", "Tea"),
    Question("”Not really.”", "Alvin"),
    Question("”Well you should.”", "Tea"),
    Question(
        "”You're going to travel to a million places, meet new people and learn their stories.”",
        "Tea"),
    Question(
        "After quite some time look of strolling around, the sun was slowly going down so headed to the park.",
        "Alvin"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterThreeFiveQ {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("We walked past the amusement park.", "Narrator"),
    Question("We stopped and watched the rollercoaster do loop", "Narrator"),
    Question("People started screaming and we started laughing.", "Narrator"),
    Question("”Are you hungry? I'll invite you to dinner.”", "Alvin"),
    Question("Yeah, I'm famished.", "Tea"),
    Question("We went to a street vendor and ordered our food.", "Alvin"),
    Question("”Two Banh Mi and two transforming Furikake, please.”", "Alvin"),
    Question("”Order right up!”", "Chef Soma"),
    Question(
        "The park was lively, many couples were out enjoying the last sunrays",
        "Narrator"),
    Question(
        "Parents with their kids were either coming from or walking to the amusement park.",
        "Narrator"),
    Question(
        "Wow, this looks amazing and smells delicious!”, remarked as we got the food.",
        "Tea"),
    Question("”Bet, not something you would find from a street vendor.”",
        "Chef Soma"),
    Question("”Indeed. Well, thanks for the food!”", "Alvin"),
    Question(
        "After eating we walked along the park lake until we came to a musician.",
        "Alvin"),
    Question(
        "Tea insited we stop and listen to him for a while. So we sat down on a bench not far from him.",
        "Alvin"),
    Question(
        "The sky soon turned black and the first stars appeared and after a while the sky was covered with stars.",
        "Narrator"),
    Question("”I always loved the night sky.”, she started.", "Tea"),
    Question(
        "”The stars always remind me of hope. No matter how cruel life could sometimes be.”",
        "Tea"),
    Question("”There will always be something worth living for.”", "Tea"),
    Question(
        "”For someone it's love, for someone else friendship and...”", "Tea"),
    Question("”...and for someone moments like these.”", "Tea"),
    Question(
        "Woah, I didn't know what to say, those were some deep and beautiful words.",
        "Alvin"),
    Question(
        "The musician started playing a lively song and some couples and kids started dancing.",
        "Narrator"),
    Question("“You like dancing?”, I asked her after a while.", "Alvin"),
    Question("She looked suprised.", "Narrator"),
    Question("”I can't dance.”", "Tea"),
    Question(
        "I reached for her hand. ”Well that makes two of us.”, I said chuckling.",
        "Alvin"),
    Question(
        "She wrapped her arms around my neck and I hugged her around her waist.",
        "Alvin"),
    Question(
        "Even though the musican was quite a few meters away from us, he suddenly changed his melody to something more romantic.",
        "Narrator"),
    Question("”See? You can dance.”, I said, teasing her.", "Alvin"),
    Question("She giggled.", "Narrator"),
    Question("”Tea, I have to ask you something.”", "Alvin"),
    Question(
        "Our bodies were moving in rythem and our lips were so close, they almost touched.",
        "Alvin"),
    Question("”Yeah?”, she almost whispered.", "Tea"),
    Question(
        "”Would I have the honor of having you as my girlfriend?”", "Alvin"),
    Question("Her whole face lit up.\n”Yes, Alvin.”", "Tea"),
    Question("”Tea, do I have permission to kiss you?”", "Alvin"),
    Question("She giggled again, ”Yes, you do.”", "Tea"),
    Question("”I love you, Tea.”", "Alvin"),
    Question("”I love you, too.”", "Tea"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterFourThreeQ {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("We went downstairs.", "Alvin"),
    Question("”Mom? Why are you talking about moving again??”", "Alvin"),
    Question("She looked suprised, as if she did not expect us to know.",
        "Narrator"),
    Question("”Well... Anna, Alvin listen, your dad want us to come to him...”",
        "Mom"),
    Question("”Well that's nice. But I'm passing, thanks.”", "Alvin"),
    Question("”You misunderstand this was no request...”", "Mom"),
    Question(
        "”Look, two days ago he called, he wasn't specific why we had to move, but it sounded like it's serious.”",
        "Mom"),
    Question("”We can finally meet him again! Isn't that great?”", "Mom"),
    Question("”Well, yeah. But I have a life here and now!”", "Alvin"),
    Question("”Yes, Alvin. I understand...”", "Mom"),
    Question("”I fully understand...”", "Mom"),
    Question(
        "”Reality is no walk in the park, this thing called life...”", "Mom"),
    Question(
        "”You sometimes have to make life changing decisions which will not just affect you but also those around you...”",
        "Mom"),
    Question(
        "”But will you be strong enough to actually go through with them or will it just be another memory fading into nothingness...?”",
        "Mom"),
    Question(
        "”You could've at least asked us, your children what we think before you just said yes...”",
        "Anna"),
    Question(
        "”And what would it change if I asked you about your opinion?”", "Mom"),
    Question(
        "”Mom I, we can't take it anymore. Every time we thought we finally had a home, dad decided to move us somewhere else...”",
        "Anna"),
    Question("Anna started crying.", "Narrator"),
    Question(
        "”Get over it, both of you. You know with his job, this is only for our best interest and you know it... You will find new friends. Like you always did.”",
        "Mom"),
    Question("Like we always did... Like I'm just going to find a new Tea...",
        "Alvin"),
    Question("We walked back upstairs.", "Alvin"),
    Question("Anna was still sobbing. I took her into my arms.", "Alvin"),
    Question("”Everything's going to be fine.”", "Alvin"),
    Question("Everything's going to be fine...", "Alvin"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterFourFiveQ {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "The day finally came, I bought something special for her birthday.",
        "Narrator"),
    Question(
        "For now, I'll try not to think about the ”moving out thing” and just try make her happy.",
        "Alvin"),
    Question(
        "I arrived at her house. I hit the doorbell and a lady opened the door.",
        "Alvin"),
    Question("”Hi, my name is Alvin, is Tea here?”", "Alvin"),
    Question(
        "The lady smiled. ”Nice to finally meet you, Alvin. I'm Kathleen, her mother.",
        "Kathleen"),
    Question("”Finally?”", "Alvin"),
    Question(
        "”Oh, yes. Tea has been talking a lot about you. Come on in, please.”",
        "Kathleen"),
    Question(
        "”Do you want something to drink? We have some juice, coffee and lemonade.”",
        "Kathleen"),
    Question("”Some juice would be great, thanks.”", "Alvin"),
    Question(
        "A few minutes later Tea came downstairs. She was as beautiful as always.",
        "Narrator"),
    Question("She hugged and gave me a kiss.", "Tea"),
    Question("Soon after, Elaine, Jacob and some other friends arrived.",
        "Narrator"),
    Question(
        "We sang the happy birthday song, gave her the presents and the cake was cut.",
        "Narrator"),
    Question("Jacob took me aside, ”Have you told her, already?”", "Jacob"),
    Question(
        "”No, not yet. Today is her day and I want her to be happy.”", "Alvin"),
    Question("”Alright buddy, but don't wait too long...”", "Jacob"),
    Question(
        "Where is Tea, everyone else was in the living room. ”I'll be right back.”, I told Jacob.",
        "Alvin"),
    Question("Not in the Kitchen, maybe she's upstairs.", "Alvin"),
    Question(
        "I slowly opened the door to her room, quietly walked up behind her and gently hugged her around her waist.",
        "Alvin"),
    Question("”Mind if I give you my present now?”", "Alvin"),
    Question(
        "”You didn't have to buy me anything.”, she said with a soft voice.",
        "Tea"),
    Question(
        "She turned around, I gently kissed her on the cheek and then on her lips. She pushed her body against mine and took my hand.",
        "Alvin"),
    Question("”I love you, Tea.”, I could say it to her every day.", "Alvin"),
    Question("I love you, too.”", "Tea"),
    Question("“Tea, I've got something for you...”", "Alvin"),
    Question("I pulled out two necklaces, and gave her one.", "Narrator"),
    Question(
        "”One is for you and the other one is for me. When you feel sad or lost, hold this and think about something nice. And that way I'll always be with you...”",
        "Alvin"),
    Question(
        "”Wow, thanks alvin! I'll cherish it.”, We kissed for a while and went back downstairs.",
        "Tea"),
    Question("”Where were you two?”", "Kathleen"),
    Question("”We... Al helped me with something she giggled.”", "Tea"),
    Question(
      "”Yeah, I helped her with the homework.” Everyone laughed.",
      "Alvin",
    ),
    Question("Jacob, Elaine and I went outside for a few minutes.", "Alvin"),
    Question(
        "”Elaine, we didn't spend much time together, but you're her best friend so I wanted to thank you for being there for her.”",
        "Alvin"),
    Question(
        "”Please take good care of her, she's quite fragile even though she doesn't show it.”",
        "Alvin"),
    Question(
        "”Don't worry Al, I really hope you will make it through everything and come back to us one day.”",
        "Elaine"),
    Question(
        "Higby, I got a little bit too emotional. ”Jacob... Thanks for letting me sit next to you on my first day. That moment changed my life. Thanks for always being right, because you definitely are...”",
        "Alvin"),
    Question(
        "”Because of you guys, I can call this place my home, even if I won't be here anymore.” I couldn't hold my tears anymore...",
        "Alvin"),
    Question(
        "Jacob hugged me ”Thanks Alvin for showing me the most important thing in my life.”",
        "Jacob"),
    Question("”What's that?”", "Alvin"),
    Question("”Friendship.”", "Jacob"),
    Question(
        "He was right, like always. Higby, not again. We cried like little kids.",
        "Alvin"),
    Question("After a while we went back inside.", "Alvin"),
    Question("”Who wants to be grillmaster?”", "Kathleen"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterFourSixQ {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "After a few hours and after all other guests left, Tea and I left for the outside.",
        "Alvin"),
    Question(
        "The evening sky was just as beautiful as on our date day.", "Alvin"),
    Question(
        "”Tea, I have to tell you something.” Like always we sat down on the grass and stared up to the stars.",
        "Alvin"),
    Question(
        "”I wanted to tell you... When we met next to the elevator in the school.. That was the best moment in my life, I fell in love with you the moment you looked at me.”",
        "Alvin"),
    Question(
        "She giggled. ”You showed me what's really important, you were always by my side. When I needed you the most, you were there.”",
        "Alvin"),
    Question("”So please just listen to me and don't say anything.”", "Alvin"),
    Question(
        "My mother got a new job a few weeks ago. Anna overheard the conversation between her and our uncle. And we... I need to...”",
        "Alvin"),
    Question("She didn't smile anymore. She didn't...\n”Alvin?”", "Tea"),
    Question("”Are you leaving me?”", "Tea"),
    Question("”Oh my darling, I...”", "Alvin"),
    Question(
        "I just couldn't look at her, I just hated to see her so sad. She began to cry.",
        "Alvin"),
    Question("”Come here.”, I hugged her tight.", "Alvin"),
    Question(
        "”Why does life have to be so cruel? Are you coming back?”, she asked me through tears.",
        "Tea"),
    Question("Yes, my dear. I will come back. I promise.", "Alvin"),
    Question(
        "After a while she stopped crying and looked in my eyes, ”You know what I'm most afraid of?”.",
        "Tea"),
    Question("”What, my love?”", "Alvin"),
    Question(
        "”I'm afraid of change, because I don't want to lose the people I love, and... And most of all time...”",
        "Tea"),
    Question("”Why time?”", "Alvin"),
    Question(
        "”I just think I won't have enough time. Not enough time to love. Not enough time to travel. Not enough time to see the beauty around me. Not enough time to live my life...”",
        "Tea"),
    Question(
        "She really is the most beautiful flower in the whole world, and it's killing me that I have to leave her.",
        "Alvin"),
    Question(
        "”Do you want to dance under the stars once again?”, she asked me and smiled.",
        "Tea"),
    Question(
        "”Yeah, no matter how cruel life can be sometimes, there will always be something worth living for. And you, Tea are... Are my reason to live.”",
        "Alvin"),
    Question("She hugged me around my neck and kissed me.", "Alvin"),
    Question(
        "So we began our dance under the stars one last time. We danced late into the night with the high heavens smiling down upon us...",
        "Alvin"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}

class ChapterFourSevenQ {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("Two weeks later...", "Narrator"),
    Question("The spaceport was bustling with life.", "Narrator"),
    Question(
        "Merchants, cruiseliners, small crafts and big military ships were coming and going.",
        "Narrator"),
    Question("”Which dock do have to be at again?”", "Alvin"),
    Question("”Dock 111. It should be right around the corner...”", "Jacob"),
    Question(
        "Jacob parked the airspeeder and we walked towards the dock.", "Alvin"),
    Question(
        "The terminal was also full of life. People of all nations were walking around.",
        "Narrator"),
    Question(
        "Just like us many wanted to either migrate or visit the Martian Technocracy.",
        "Alvin"),
    Question(
        "”One would think in all this chaos a thief would have a trip pickpocketing all these people.”",
        "Alvin"),
    Question(
        "”Don't worry about that, republic authorities are watching everything and everyone. If you misbehave, they'll send Sentinel Droids after you...”",
        "Jacob"),
    Question("They sound scary...", "Tea"),
    Question(
        "You don't even want to see how they look and sound. That's the scary or rather intimidating part about them.",
        "Jacob"),
    Question("”You really know your way around here.”", "Alvin"),
    Question(
        "”Well yeah, I mostly come here with my father. Either to inspect goods or to see them shipped off.”",
        "Jacob"),
    Question(
        "”It's a monthly thing. My father does it mostly for morales and regular inspections.”",
        "Jacob"),
    Question("“Must be exciting having the Chairman greet you every month.”",
        "Alvin"),
    Question(
        "“To be honest, it's quite boring. But I do love to see all these different ships come and go.”",
        "Jacob"),
    Question(
        "”One could spend an entire year here and still not have seen half of it.”",
        "Alvin"),
    Question("A police drone flew towards us and halted right above our heads.",
        "Alvin"),
    Question("”Yo, Jacob! What's it doing? I'm getting nervous.", "Anna"),
    Question(
        "Don't worry. It's the security check. It's just scanning you and your luggage for illegal stuff or weapons. You know standard procedure.”",
        "Jacob"),
    Question(
        "”Interesting, we still had to go through one of those TSA checks before migrating here.”",
        "Alvin"),
    Question(
        "The spaceship was massive. I would have estimated it to be at least 800 meters long.",
        "Narrator"),
    Question("”You know how long it will take us to get there?”", "Alvin"),
    Question(
        "”With that drive, at least 3-4 weeks. Although I have heard of a top secret prototype ship that can achieve that trip in under a week.”",
        "Jacob"),
    Question("”Well let's hope they have it ready for my return.”", "Alvin"),
    Question("”Yeah that would be so awesome!”", "Tea"),
    Question("The time has come...", "Narrator"),
    Question("The time to say goodbye...", "Narrator"),
    Question(
        "Anna went ahead looking for mom who came here with other relatives.",
        "Narrator"),
    Question(
        "”Alvin, I don't know where life will take us but I want you to know, I will love you forever.”",
        "Tea"),
    Question("”Tea, I will love you, always.”", "Alvin"),
    Question("We will see each other again. I promise.”", "Alvin"),
    Question("She gave me the most beautiful kiss.", "Alvin"),
    Question("”Goodbye Alvin.”, tears were rolling down her cheek.", "Tea"),
    Question("I kissed her on the forehead. ”Goodbye, my love.”", "Alvin"),
    Question("I turned to Jacob.", "Alvin"),
    Question(
        "”Goodbye, my dear friend. Take good care of yourself, the crew and mostly Tea.”",
        "Alvin"),
    Question(
        "He smiled and gave me a hug. ”Don't worry she's in good hands. Have a safe trip, my friend.”",
        "Jacob"),
    Question("”Yo, Alvin. You coming? We're going to be late!”", "Anna"),
    Question(
        "We boarded the spaceship, but one last look through the gangway...",
        "Alvin"),
    Question("There she was, beatiful as always...", "Alvin"),
    Question("They waved and I waved one last time...", "Alvin"),
    Question(
        "”Earth... I'm finally leaving you, even though with a heavy heart...”",
        "Alvin"),
    Question("Off to a new adventure...", "Alvin"),
    Question("Here I come...", "Alvin"),
    Question("Mars.", "Alvin"),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  getNumber() {
    return _questionNumber;
  }
}
