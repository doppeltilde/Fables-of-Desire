// Fables of Desire - Naoki Route - Destini Islands

class Speech {
  final String? characterName;
  final String? characterText;
  final String? voice;
  final String? mcImage;
  final String? charImage;
  final String? sideImage;

  Speech({
    this.characterName,
    this.characterText,
    this.voice,
    this.mcImage,
    this.charImage,
    this.sideImage,
  });
}

final m = "MC";
final n = "Naoki";
final man = "Man";
final wo = "Woman";
final nar = "Narrator";
final i = "Ina";
final c = "Child";

class NaokiText1 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // Character Name, Dialogue, Image

    // TODO: bg room, day
    // TODO: Naoki skeptical over why and how he's been given human form.

    Speech(
      characterName: m,
      characterText: "Naoki...? Good morning!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Today I’ve decided to try to get closer to Naoki after the rough start.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "But as I enter his room, I see that he doesn’t even turn his face to greet me. His gaze peers beyond the windows.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Early rays of sunlight brighten curious gray irises but I can see eyebags under them.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki? Did you not sleep well?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Good morning.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText: "Silence. This won’t do.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Please. Tell me what troubles you?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I certainly don't know what I would think if I were suddenly in a different body.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "He turns to face me, his head tilting in wonder.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Who...?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Who am I now...?",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "My appearance. My thoughts. The sound of my voice. Why this?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I stand at the entrance of his room, considering the weight of his question.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "What does it mean to be Naoki? A raven? Something more?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Who <i>are</i> you, huh...?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "You’re Naoki.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "But…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "You’re Naoki. What ‘Naoki’ is entirely up to you. I can give you all the explanations you want about being my familiar, but beyond that…",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "It’s your own decision. Your life is yours in the end.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "I suppose that gives me some freedom of interpretation.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "I will ponder it on my own then.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I didn’t consider how unsettled a familiar could be from the change. Surely there’s something I can do…",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Oh! I know. Naoki, let me show you around.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: m,
      characterText: "I think seeing everything will help you find your place.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "You want to show me the mountain?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "But I know the mountain.",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText: "I... well, I thought I did.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "I’d like to show you the mountain and the temple from my point of view.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Your point of view… Alright.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I extend my hand to hicharacterName: m, but it takes Naoki a moment to understand what I want.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "The coolness of his hand settles in mine as I excitedly hurry to get to work.",
      mcImage: "transparent",
    ),
  ];
}

class NaokiText2 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg Outdoor pathway, day
    Speech(
      characterName: n,
      characterText:
          "Where are we going? Where is this? Why are the ceilings so high?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "W-what? Slow down, please!",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki looks up to the overpass ceiling and uses his free hand to point at the beam.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "Why is it so high? I wouldn’t be able to reach it even if I jumped. Am I… short?",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "Ha ha… No, Naoki. You are quite tall for a hucharacterName: n, actually.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Hm… then why?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "There are practical reasons for high ceilings, like allowing more light or air into a room, but…",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "I think they look nicer. It feels like I have more freedom under a high ceiling than a low one.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText:
          "But why have a ceiling at all then? How does one even fly?",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Ah… I suppose there would be no flying among humans.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Ha ha… You’re so inquisitive, Naoki.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I’m sorry.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Oh! No, no, don’t be.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "I like that about you. You’re making me think about things I don’t normally.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Now come along. I’d love to know your thoughts on where we’re going next.",
      mcImage: "mc_happy",
    ),
  ];
}

class NaokiText3 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg Hot spring, day
    Speech(
      characterName: m,
      characterText: "Here we are!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "W-what is this?",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "The private temple hot spring. It is used for bathing and relaxation.",
      mcImage: "mc_neutral",
    ),
    // TODO: screen shake
    Speech(
      characterName: n,
      characterText: "B-bathing? Won’t you drown in something so large?",
      charImage: "naoki_blush",
    ),
    Speech(
      characterName: m,
      characterText:
          "Of course not. This is one of the benefits of being human. I wanted to show you.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "Not only is it good for you, but it feels nice. It’s an enjoyable experience.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: m,
      characterText: "As a human, you should bathe and eat often.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "There are many nice stones as well… I see. Then shall we get in now?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "A-ah, no. You should get in without your clothes on so we’ll only bathe separately.",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: n,
      characterText:
          "I’m not sure I understand. Wouldn’t it be faster if we bathed together?",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "Well, yes, but… Um, I think this is a good opportunity for you to do something on your own.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "I also prefer to be naked alone.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Hmm… Okay. I understand.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "When you’re done, meet me back in the walkway we came through. Okay?",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Understood. Thank you.",
      charImage: "naoki_happy",
    ),
  ];
}

class NaokiText4 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg Outdoor pathway, day
    Speech(
      characterName: n,
      characterText: "MC. I am prepared.",
      charImage: "naoki_blush",
    ),
    Speech(
      characterName: m,
      characterText: "There you are! I was getting worried—",
      mcImage: "mc_happy",
    ),
    //screen shake
    Speech(
      characterName: m,
      characterText: "Ah! A-are you okay? You’re burning up!",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: n,
      characterText: "Is there fire on me?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "I have to get him cooled down!",
      mcImage: "transparent",
    ),
    // TODO: screen shake
    Speech(
      characterName: m,
      characterText: "Come with me!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Goddess?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki’s once-cool hand sears into mine as I hurry to bring him to where water awaits us.",
      mcImage: "transparent",
    ),
  ];
}

class NaokiText5 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg pottery room, day
    Speech(
      characterName: m,
      characterText: "Here you go. Drink this, please.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Sure…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "The cool water typically saved for working clay easily goes down Naoki’s throat.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Um. How are you feeling now?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Better than I was before.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Thank you.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "That’s a relief.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Where are we now?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "An area to create things for use in the temple like bowls or containers",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "These are so… detailed. I suppose this is a merit of human hands?",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Absolutely!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I’m certainly glad he’s considering the positives of having a human form.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Is this where my duties should begin?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Oh, no need. We should always survey the mountain first thing in the morning. It’s why we get up so early.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "We’re a bit late today but I thought checking out the hot spring would help you relax first.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "…I apologize if I’ve already failed as your familiar.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "I will not fail you again.",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "You haven’t failed anything! It’ll be easier for you to learn if you’re less anxious.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "Making you comfortable is part of my job. So please don’t blame yourself.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText: "I’m not sure how much he believes me…",
      mcImage: "transparent",
    ),
  ];
}

class NaokiText6 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg temple entrance, day
    Speech(
      characterName: nar,
      characterText:
          "Traveling from the temple and to the mountain has always been a meticulous, lonely endeavor with hurried steps.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "But Naoki slows it dowcharacterName: n, unsure how humans can create stone or of his body down long stairs.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I’m not sure what I expected of a familiar, but it wasn’t this. It’s… nice.",
      mcImage: "transparent",
    ),
  ];
}

class NaokiText7 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg mountain path and trees, day
    Speech(
      characterName: m,
      characterText:
          "Naoki. Do you remember what I told you before about monitoring the fauna and flora?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "Yes. I should always be aware of any changes in the terrain, no matter how small.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "That’s right. Tell me what you see.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Hm…",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "Well. The first thing I notice is definitely the strange-colored stones here.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki takes careful steps over roots and fallen leaves, hands caressing tree bark or fiddling with his own sleeves.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He’ll probably ask about the human footprints on the path.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "You must be the reason so many broken wings come home.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Uh, what?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "Sometimes in the morning, several birds in this mountain have mysteriously returned unharmed with the faint smell of human on them.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "I see now that it has always been you.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Oh! Yes, I suppose it must. Every now and then a younger or elderly bird needs help, so I’ve carried them to nests.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "I did not realize it became a legend of sorts.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki chuckles to himself and it takes me by surprise. I don’t think I’ve ever heard him laugh before. It reminds me of a fledgling’s trill.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText:
          "I wonder how many more mysteries I will solve at your side.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "I wonder how many more mysteries I will be made aware of by yours.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText:
          "It seems I might teach you more things than either of us anticipated.",
      charImage: "naoki_happy",
    ),
  ];
}

class NaokiText8 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO bg mountain path and trees, sunset
    Speech(
      characterName: m,
      characterText:
          "Alright Naoki, we’re done for today. Let’s go on to the next task.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Are you sure? Shouldn’t we do one more round?",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "Haha… No, Naoki, I think surveying the mountain twice is enough for one day",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: m,
      characterText:
          "Don’t worry, we’ll do this every day. There’s no rush, especially when there’s two of us to do the work.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Okay.",
      charImage: "naoki_neutral",
    ),
  ];
}

class NaokiText9 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO bg boulder and flowers, sunset
    Speech(
      characterName: m,
      characterText: "You learn so quickly, Naoki. You’re really impressive.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki stops pruning the bushes long enough to look up to me with a pout on his face.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "It is not perfectly even.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Do you really think so? It’s beautiful to me as it is.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Hm…",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "How about looking at it again tomorrow? Sometimes it’s difficult to pinpoint mistakes if you stare at them too long.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Really? Then I shall take your advice.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Good. Because it’s about time for us to eat. I need to hurry and cook.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "But you look exhausted.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "O-oh do I?",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: n,
      characterText: "I can help you cook!",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "No, no, it’s alright. I’d rather you take this time to relax or do something you’d like.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "I’d like to help you cook.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText:
          "Ha ha… Well, I’ll consider it for the future, okay? For now, please do as you’d like and meet me by the lake in an hour.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Do you remember where it is?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "To the right of the library, down the wooden pathway, past the three pointed rocks—",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Okay! Yeah, I’d say you remember.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "I will see you there.",
      mcImage: "transparent",
    ),
  ];
}

class NaokiText10 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO bg clearing by the lake, sunset
    Speech(
      characterName: nar,
      characterText:
          "It’s heavier carrying two dining sets instead of one but I, miraculously, manage to bring hot bowls of vegetable poke without spilling anything.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki quickly drops whatever is in his hands so he can stand and take the trays from my arms.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Oh. Thank you!",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He gently sets them down on the outdoor blanket and waits for me to sit before sitting across from me.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Thanks for the food.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Thanks for the food…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki waits for me to take my chopsticks before mimicking me, watching intently.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Let me know if you need help, but you’re free to eat how you like…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Mm…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I try to suppress my grin and staring as I watch Naoki try different hand positions, practicing his opening and closing before going for his first grain of rice.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "So, Naoki, what did you do on your break?",
      mcImage: "transparent",
    ),
    // TODO screen shake
    Speech(
      characterName: nar,
      characterText:
          "He concentrates intently on his bowls, not looking at me as he mumbles his answers.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "At first, I dusted that one ceiling you couldn’t reach earlier…",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: nar,
      characterText: "Gah! He noticed!",
      mcImage: "mc_blush",
    ),
    // TODO screen shake
    Speech(
      characterName: n,
      characterText:
          "Ah. Almost… ThecharacterName: n, I returned to the shrine.",
      mcImage: "transparent",
    ),
    // TODO screen shake
    Speech(
      characterName: n,
      characterText: "Ah!",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "And what did you do in the shrine?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Oh… I looked through the various scribbles and drawings.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "The… books?",
      mcImage: "mc_neutral",
    ),
    // TODO screen shake
    Speech(
      characterName: n,
      characterText: "There we go.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Sorry. What was that? Crooks?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Ha ha… no, books. They’re full of information and stories. People write things down and then you can read them whenever you want.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText:
          "Books… for transferring information? Like talking without voices?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Yes, that’s right.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "It sounds incredibly useful.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText:
          "It sure is. What you saw was the shrine collection, or library of books.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Could I learn to cook in a library?",
      charImage: "naoki_blush",
    ),
    Speech(
      characterName: m,
      characterText: "Ha ha! You sure could, there’s a few books on that.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: m,
      characterText: "You’d have to learn how to read, though.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Perhaps later if you still have an interest I can start teaching you how to read.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "We definitely need to get you comfortable on the morning clearings, though. It can be dangerous if you’re not prepared.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Mm, yes…",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "A little distracted, are we? At least he’s having fun, ha ha…",
      mcImage: "mc_happy",
    ),
  ];
}

class NaokiText11 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // Naoki comes to also develop his own reasoning for serving as a deity of the mountaicharacterName: n, for he finds himself inspired by MCs cause; equality. Little does he know at this point, this includes humans.
    // TODO bg mountain path and trees, day
    Speech(
      characterName: nar,
      characterText:
          "A week passes comfortably, although something is… off about Naoki this morning.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I move away from checking on the mountain’s newest litter of foxes to walk by his side.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He’s unusually quiet as we do our pass. Not a single question from his lips.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Naoookkiiii?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Oh. Yes? I’m sorry for not paying attention.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "It’s okay! I know you’re working, I was just wondering if you’re feeling alright?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Hmm…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "You care for all the animals in the mountaicharacterName: n, it seems.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Of course! My job is the most important thing in the world to me.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText:
          "So important you used part of yourself to create a familiar.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "That’s right.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Then…",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "I’ll ask again. If you needed a familiar, why did it have to be in this form? Do you think ravens are… inferior?",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "Inferior? No, of course not…",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "Then why change me? Why not get a human if you needed this form?",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "That’s… a difficult question to answer, Naoki. As you can see from my appearance, I am also human-like.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "It’s easiest for my familiar and I to take similar forms.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "There are things only humans can do that other animals cannot. But being my familiar is not a job fit for any human.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Does that make any sense to you?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText:
          "No. But I can feel your compassion. You treat all animals of the mountain with care. Not just the ravens.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "I sure try. They’re all important to me. I love them equally.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Equal. Yes.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "I admit I didn’t think much of the other animals before you. I only sometimes feared the foxes or owls.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "I want to learn everything I can with this opportunity. To be the best version of myself that I can be.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "What kind of things are you interested in learning?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "First, I’d like to know more about why they eat the strange things they do.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Ha ha ha… well, what’s considered strange is different for everyone.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText:
          "Yes, but I think it’s very evident that cooking is the best way to go.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Ha ha ha. I won’t disagree with you there.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I think I’m ready.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Ready?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "It was difficult to dedicate myself to these tasks. But I see the merit in these daily activities. I want to do everything I can to help the mountain.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "There’s lots of work to be done. Work I cannot begin to imagine.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Then we’d better keep going.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Yes.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "You know… the ravens have a game we play at almost every age.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText:
          "We mate for life and tend to play it together a lot, so this could be fun.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Oh? Really? I think I’ve seen them play with sticks and the like.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "Yes, but there are other things that are maybe less obvious. Would you like to play?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Sure, Naoki. As long as it doesn’t take too much time.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "No. It’s quick.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He walks deeper into grass to pick up a stick, breaking it in two as he returns.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "I’ve never played with one this big of course, but I also think this game might be more fun in this form.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "What should I do?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "It’s simple. Hold out your arm and hand.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Like this?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Yes.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He stands in front of me and stretches his arm out before placing a stick in the center of both.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "You can’t touch your opponent’s stick and whoever’s hits the ground first loses.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Oh! It’s a balancing game.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "It is. Are you ready?",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Yes!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Then… begin.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Oh…! Look, yours is wobbling.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "It sure is.",
      charImage: "naoki_happy",
    ),
    // screen shake
    Speech(
      characterName: m,
      characterText: "Wha?!",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: m,
      characterText: "H-hey!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I win.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "B-but you tickled me!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "So I did, ha ha.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Are you surprised?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Gah…",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText: "I demand a rematch!",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: n,
      characterText: "Ha ha ha… I thought we were busy?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "You’re just saying that now because you won!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I sure am.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Ravens have always been so crafty! I won’t forget this next time!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "I suppose you won’t.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Sigh…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Also, Naoki, I want you to try something.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Yes?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "You’re not entirely hucharacterName: n, you know. It’s entirely possible that you have parts of your raven form latent.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Latent?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Yes… I want you to imagine that you’re still a raven. The parts of you that you’ve always known.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki tilts his head in thought before peering up at the sky.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Lazy clouds cast shadows on his face before he exhales deeply, facial expression crumbling.",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "Are you okay? Are you in pain?",
      mcImage: "mc_sad",
    ),
    // todo raven form naoki appears
    Speech(
      characterName: n,
      characterText: "Ah…",
      charImage: "raven_naoki_blush",
    ),
    Speech(
      characterName: m,
      characterText: "Ah! Naoki! Your wings!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He looks behind him and slowly flaps what are unmistakably raven wings.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "It worked…",
      charImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "How does it feel?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Like… I tore your clothing. I’m sorry.",
      charImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "Ha ha… that’s okay. It’s an easy fix. I’ll show you how to mend.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Do you think I’ll be able to fly with these?",
      charImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Hmm… You might be too heavy to actually fly in this body.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "I see…",
      charImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "B-but I don’t know for certain! You can practice and determine it for yourself.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Yes… I think I will.",
      charImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Let us continue.",
      charImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Let’s.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki doesn’t actually try to fly, but his gentle flapping throughout the day becomes a calming presence.",
      mcImage: "transparent",
    ),
  ];
}

class NaokiText12 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    //Naoki is uneasy but finds footing in other areas - literature in the shrine, local history and ancient legend.
    // todo bg rock gardecharacterName: n, night
    Speech(
      characterName: n,
      characterText: "I’ll do one last sweep, MC.",
      charImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "No, it’s clean enough for now! It’s late, we should sleep.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "…I’m not very good at this, am I?",
      charImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki frowns as he plays with a crystal he must’ve picked up from the rock garden.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "You’re making great progress, Naoki.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "The ravens told me something strange today.",
      charImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "What? The ravens spoke to you?",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText:
          "…No. I suppose they didn’t really speak to me. But I overheard them.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "There’s a rumor that the humans who come here are typically kinder.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "And so these are safer parts to fly to.",
      charImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "But…",
      charImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "It was difficult to understand them.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Were they far away?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "No… It was as if their speech was garbled. Like I lost my fluency.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "Am I going to lose everything? Will I never be able to talk to them again?",
      charImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "…I’m sorry, Naoki. That’s not something you should be losing, no. Are you looking for your family from before?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "I’m not. But, I wonder if I’d even be able to recognize them.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "If they’d recognize me.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "It’s not until Naoki’s wings droop that I realize he hasn’t stretched them in a while.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "They’re almost invisible against the black of the night, nothing but shadows to accompany us.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Um. I have a new job for you, if you don’t mind.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Yes.",
      charImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "You seem to do well with remembering things and gathering information. I’d like it if you continued to do that with purpose.",
      charImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "From the animals?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Yes. It’s difficult for me to find the time to communicate with the mountain residents atop my deity duties.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "But you… you understand them in a unique way that I cannot. I’d like to give that task to you.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "So please let me know whatever you find. More rumors or tales or legends that the residents pass along.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "It’s helpful to know what they’re thinking to plan for the future or to fix something wrong.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "I can do that.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Thank you! And, consider listening and observing as a vital part of your rounds.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "…I think you are giving me a task as an excuse for me to stay in-touch with my raven side.",
      charImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "It’s an important task!",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: n,
      characterText: "I know. I believe you.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "I don’t believe you’ve ever lied to me about anything, really.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I will do my best to live up to your expectations.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "You exceed them every day.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "You tend to give me undeserved compliments.",
      charImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "I do not!",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: n,
      characterText: "Ha ha…",
      mcImage: "transparent",
    ),
  ];
}

class NaokiText13 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // MC offers to teach Naoki things like basic reading, writing, and so forth. MC works a little too much and Naoki thinks it’s strange there’s so much human literature in MCs collection.
    // todo bg outdoor pathway CORNER, day
    Speech(
      characterName: m,
      characterText: "Good morning, Naoki!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Good morning.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText: "He’s hidden his wings again… I wonder why?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki… why don’t you start in the library today?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He folds his arms into his sleeves, looking scandalized by my small suggestion.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "We do not need to clean the library yet. I thought we were focusing on the walkways?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "I actually don’t mean for you to clean the library today. I thought you might enjoy going through the tomes for an hour or two.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "I absolutely cannot spend my time like that when you are still working, Goddess.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText: "I knew he’d say that…",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "Naoki. You know I want you to live here, right? Not just work.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "…Is that what you are doing, day after day? Living, not just working?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "I…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I’m honestly a bit speechless. Naoki has never confronted me like this before.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "I apologize.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "No… no, you are free to speak your mind with me. I was just surprised.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "What is living to you, Naoki?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Serving as your familiar.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Well… If that’s how you feel.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Here.",
      mcImage: "mc_neutral",
    ),
  ];
}

class NaokiText14 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  String? bgImage() {
    return "1710heian20_19201080";
  }

  List<Speech> textBank = [
    // todo bg outside shrine, day
    Speech(
      characterName: nar,
      characterText:
          "I walk past scrolls and tomes to pick up a thin book that sits red and pretty, tucked in the corner of a shelf.",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: m,
      characterText:
          "This is a children’s book, admittedly. But it’s a great start. There are a lot of pictures and simple words. How about you come and study here every day after you ring the Bonshō?",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Study?",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "Yes. The things that I teach you. For example, this character here… is pronounced ‘na.’",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "And if we go to this page… this one is pronounced ‘oh.’",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "And this one here is—",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "‘Ki.’",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "That’s right!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "My name.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "And this is just one spelling. There are so many things for you to learn. What do you think?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…I would appreciate your lessons.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "As long as you have the time of course.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "We’ll make time. You’ve been a great help to me so far, Naoki. More than you probably realize.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki looks the book over in his hands before giving me a small smile.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Then I will graciously accept the offer.",
      mcImage: "transparent",
    ),
  ];
}

class NaokiText15 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  String? bgImage() {
    return "1710heian15_n_19201080";
  }

  List<Speech> textBank = [
    // todo bg room, night, no Naoki
    Speech(
      characterName: nar,
      characterText: "*Thump, thump, thump!*",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I startle to sit up in my bed as footsteps rush to my door.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "H-hello?",
      mcImage: "mc_frown",
    ),
    // screen shake
    // Naoki appear
    Speech(
      characterName: n,
      characterText: "MC!",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "Gah! Y-yes? Naoki, it’s late!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He takes it as an invitation, hurrying to kneel at my side and show me a page of the book he’s holding.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Goddess. Please, what does this say?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "What…?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: nar,
      characterText: "I skim the page, increasingly confused the more I read.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "This is a history book of folktales, Naoki. This page in particular is about a shapeshifting tanuki. This isn’t one of the children’s books I gave you?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I know! But…",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "What is it?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "Is the tanuki happy? It seems that this story is happy, but aren’t they doing something bad together?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Well, yes… in some versions, the human and the tanuki are scamming someone together.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "There are so many stories of humans in your collection.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "I-I suppose. But, Naoki… you should sleep.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Mm… Yes. I apologize for the intrusion.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "It’s okay… Goodnight, Naoki.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki closes the book but doesn’t leave. He continues to sit and watch as I lay back down.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Um… yes?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "What do you like to eat, MC?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Food…? I-I guess I like hot soups.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Do you have a favorite color?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Not really… I suppose I like bright, natural colors. Greens and yellows and blues",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Do you have a favorite book?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Naoki… you should really go to bed. What’s with all these questions?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "…I do not know much about myself or you. No book can give me those answers.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Goodnight.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Before I can ask, Naoki stands and promptly leaves me to sit in the darkness of my room, bowing before sliding the door shut.",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: m,
      characterText: "Jeez…",
      mcImage: "mc_happy",
    ),
  ];
}

class NaokiText16 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  String bgImage() {
    return "snowmori_022_19201440";
  }

  List<Speech> textBank = [
    //Naoki finds his first trap - a dying fox within it and he’s shaken about poachers/humans
    // todo bg bamboo forest, day
    Speech(
      characterName: m,
      characterText:
          "I agree that you understand the route, but I don’t want to leave this large task to you alone.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "But it would give you so much extra time. I thought that was the point of teaching me how to survey the mountain.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "It’s been a month since I began.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He’s going to think I don’t trust hicharacterName: m, but I’m honestly just concerned…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "And I was right to be, in hindsight.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "!",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText: "MC…!",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: m,
      characterText: "Coming! What’s wrong?",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: n,
      characterText: "A-ah…",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText: "Naoki pales as he comes to a sudden stop.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Normally, the early golden sunlight of the morning makes this part of the forest seem to rain glitter through the canopies.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Today it mingles with blood sprinkled across the forest flooring and makes it difficult to see where it starts or ends.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "There’s no warpath to make sense of it, but a single fox with its bottom half still in a trap.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I quickly drop to my knees to assess the damage, to see if today I’m saving an animal…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "…or praying for it.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "W-we have to get it out, right? How do I help?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki. Wait.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Wait? Wait why? She’s dying!",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "If we move the trap too quickly, we could do more harm than help.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Please calm down.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…Yes.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He kneels shakily at my side as I get to work, carefully prying the contraption open. More blood seems to gush forth but I can’t let it distract me.",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: nar,
      characterText:
          "The fox scratches weakly at my hand in self-defense and Naoki bristles.",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "It’s okay. You’re alright.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "A small consolation to someone that I now see, without a doubt, is dying.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "There you are…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "With the trap removed, I take out my hidden pouch’s supplies to see if I can stop the bleeding.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "What can I do? Please.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "If you can pet, that’d help a lot.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Um…",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Like this.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I pause for only a moment to scratch the top of Naoki’s head to demonstrate.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "He freezes up before relaxing into the touch.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "On her head.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Understood.",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He methodically strokes the fur between her ears as I mix my herbs into a usable paste.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "It’s nice having Naoki here for the hard moments like these.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Soon enough, the fox is sleeping peacefully in its wrappings.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "The hardest part is always the waiting.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "…How could this happen? Why? What is this?",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "The poachers set up traps. They hope to capture certain animals.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "There are less cruel ways to eat and scavenge.",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "I agree. Traps are forbidden here because of the harm they can do to just about anyone.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…Including yourself.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "Yes. But it’s okay, that’s why we do our rounds to make sure something like this doesn’t happen often.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki buries his hands in his sleeves as he stares down at the broken trap.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "It was hidden. I didn’t realize what exactly they looked like. This is… my fault. I think I passed this.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "It’s okay, Naoki… You didn’t know. If it’s anyone’s fault it’s mine.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "No… no, this could’ve been you. You could’ve been hurt because I wasn’t thinking.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "And this fox… she’s hurt. She could—!",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "Don’t…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "I’m telling you it’s okay. Believe me, please?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…Yes.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "What should we do now with the fox?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "She’s too hurt to leave to her family. We should take her back to the temple.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "I’ll carry her.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Appreciated.",
      mcImage: "mc_happy",
    ),
  ];
}

class NaokiText17 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // todo bg room, day
    Speech(
      characterName: m,
      characterText:
          "Naoki. Maybe medicine is in your future. You’re very intuitive and gentle.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He doesn’t share my enthusiasm as he focuses on measuring the portion sizes I gave him.",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText: "Per… haps…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "There. Perfect.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Extremely perfect.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Let’s let her rest and go elsewhere for now.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Okay.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Follow me. Let me grab my pail and let’s take a walk.",
      mcImage: "mc_neutral",
    ),

    // todo bg pond, day
    Speech(
      characterName: m,
      characterText: "Here it is.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Are we retrieving more water?",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Mhmm. And you can sit here and rest. You did great work today.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I will not rest while you work.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "I don’t mind if you want to, Naoki. You look drained. This place has restorative properties.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Then I will rephrase. I do not want to rest.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "And you look far more drained than I. Your left leg has been shaking.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Oh! Has it? I didn’t notice.",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki gently pries the pail from my hand before putting a hand on my shoulder and pushing me to sit on the rocks.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "I’m okay! Really!",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He doesn’t listen. Naoki slips off my getas and only pauses when he reaches for my feet.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "May I?",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "I… guess…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Those gentle hands of his guide my feet into the soothing, but cold water. Naoki places my shoes next to me and moves further down to scoop a bucket of water.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "MC. Please tell me about the poachers. If I can recognize what type of creature they are, maybe I can help stop them.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Oh… Poachers aren’t a name of an animal, Naoki.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "What?",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "Poachers are what we call humans who trespass the mountain and kill. They’re the only ones who set traps like that.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Poachers are… humans?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Yes.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "All of them?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Unfortunately.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "So poachers… poachers are why we survey the mountain?",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "They’re not the sole reasocharacterName: n, but they are the biggest and most immediate one.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "These humans come to the mountain for the sole purpose of thievery and torture and don’t care who gets hurt in the process.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Not all humans, just the poachers.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "…Are these poachers the reason ravens go missing?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "I can’t say for certaicharacterName: n, but it’s possible I suppose.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "There are other animals who can be to blame.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "Other animals leave behind carcasses for burials. They don’t torture their prey.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki…",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He’s nearly knee-deep in the water now, pacing and distracted by his own spiraling thoughts.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Come sit with me?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki wades through the water and places the full bucket next to me, but he doesn’t get out to sit on the rocks.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "There’s a legend I’ve known of my whole life. A warning. One not just the ravens know.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Oh? Yes?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki sinks further down in the water where it’s shallow in front of me, down until he’s kneeling between my legs and his long hair floats on the clear surface.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "The warning is of a twinkling jaw.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "Of an animal that waits, completely still, for anyone to be swallowed.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I see now that it was not an animal, but a human trap.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Yes… that does sound like a trap.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He peers up at me for a moment before deciding to take my dangling feet and set them on his lap to use as a foot rest.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "…",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Despite wanting to hurry back to work, I say nothing and let the peaceful moment pass.",
      mcImage: "transparent",
    ),
  ];
}

class NaokiText18 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // todo bg pottery room, day
    Speech(
      characterName: m,
      characterText: "Naoki, it’s going to burn…",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Huh? Ah! Sorry!",
      charImage: "raven_naoki_sad",
    ),
    // todo bg hot spring, day
    Speech(
      characterName: m,
      characterText: "Naoki…",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "…I swept the debris into the spring. I know. I’ll fix it.",
      charImage: "raven_naoki_sad",
    ),
    // todo bg boulder and flowers, sunset
    Speech(
      characterName: m,
      characterText: "Naoki, you cut yourself…",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "I’ll clean it. My apologies.",
      charImage: "raven_naoki_sad",
    ),
    // todo bg room, night
    Speech(
      characterName: m,
      characterText: "Naoki.",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: n,
      characterText: "Yes? I’m sorry, did I forget something?",
      charImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "This is my room, Naoki.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Oh.",
      charImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Oh!",
      charImage: "raven_naoki_blush",
    ),
    Speech(
      characterName: n,
      characterText: "I’m so sorry. I’ll go.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "No, just wait.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Are you going to be okay for tomorrow? It’s your first visit to the tribute house.",
      charImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "If you need some time, you can stay here and try again next time.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "No!",
      charImage: "raven_naoki_frown",
    ),
    // todo screen shake
    Speech(
      characterName: n,
      characterText: "N-no, I mean…",
      charImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "I can do it. I want to go.",
      charImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Okay… did you want to go like this?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I don’t know yet.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "It’s better to have a more human appearance for the tributes. At least the first one.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "…Goodnight, Goddess.",
      charImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki bows when he exits, wings half-extended upwards as he does.",
      mcImage: "mc_neutral",
    ),
  ];
}

class NaokiText19 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // Naoki’s first visit to the tribute house, MC sees his fear and anger
    // todo bg temple entrance, day
    Speech(
      characterName: m,
      characterText:
          "I can’t wait to introduce you. I think many people will be excited to see you.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki’s more focused today, seeming to relax after releasing the healed fox back into the mountain.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "There’s a lot of voices in the distance.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He hides his face behind the parchment he insisted on bringing to take notes of the tributes.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "You really don’t need to do anything, you know. I haven’t taught you too much writing yet.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText: "It’s enough for me just to have you here.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "I can write it.",
      charImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "You… can?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "When you told me the typical types of tributes, I practiced the letters for them. I’ve already set up a system to keep count of each gift for temple inventory.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "What… really? Naoki, thank you!",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: n,
      characterText: "It is my duty.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He bows to me and I have to stop myself from just grabbing him in a hug.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Here we are.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "As we approach the sandō steps, the crowd greets us with loud cheers and some jeers.",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: nar,
      characterText:
          "They fill out the steps but respectfully move to give us room to climb.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "But as I take the first step, I pause and see that Naoki’s not following.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Naoki? It’s okay, no need to be shy. You don’t have to do anything.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "When he tears his gaze away from the crowd and back to me, I shiver.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He doesn’t look skittish at all. He looks… angry. Afraid.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "A lump forms in my throat and I can’t swallow it.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "I take his hand and tug him with me, instead.",
      mcImage: "transparent",
    ),
    // todo bg outside shrine, day
    Speech(
      characterName: nar,
      characterText:
          "Naoki doesn’t kneel at my side throughout the hours tributes. He sits at a distance behind me, nothing but the barely audible sound of his brush strokes letting me know he’s here at all.",
      charImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText: "It’s even lonelier than if I were alone.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Thank you!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Blessings to you, Goddess!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I have a request, if possible…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Of course I will hear out any request.",
      mcImage: "transparent",
    ),
    //Naoki confronts a human and MC ends proceedings early, making little of the incident.
    Speech(
      characterName: n,
      characterText: "...!",
      charImage: "naoki_frown",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "Oof!",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "I-I’m so sorry, sir. Are you okay? Let me help you up…",
      mcImage: "mc_sad",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText:
          "Did I do something wrong? Is that your new guard? I thought he was your familiar?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "You didn’t. Please forget this incident and accept our humblest apologies.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Okay…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I was just going to ask for less rain on the west…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Yes. Thank you for letting me know.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Goodbye!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "…",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Sigh.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "Everyone! Thank you for your tributes today. There are matters I must pray to and I will have to end proceedings early.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "The crowd is understandably dissatisfied by the sudden ending, but they don’t question me as they depart, some leaving behind their tributes.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "We will only carry back the perishables for now.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      mcImage: "transparent",
    ),
    //MC scolds Naoki about his behavior and Naoki vents about her being naïve about humans
  ];
}

class NaokiText20 {
  int textNumber = 0;
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

  String? getMCImage() {
    return textBank[textNumber].mcImage;
  }

  String? getCharImage() {
    return textBank[textNumber].charImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // todo: bg mountain view, sunset
    Speech(
      characterName: nar,
      characterText:
          "As we walk back to the central shrine and far enough away from prying ears, I finally stop and put down some of the tributes.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki places his down as well, not looking me in the eye as if he knows what I’ll say.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki. What was that?",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "You can never, ever do something like that again. You attacked a human!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "If something like that got out, I don’t know what—",
      mcImage: "mc_sad",
    ),
    // screen shake
    Speech(
      characterName: m,
      characterText: "Ah?!",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: nar,
      characterText: "Naoki grabs my hand and tugs it close to his face.",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText: "You’re naïve.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "What…?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He brushes his nose against my palm and exhales, thumb pressing into the skin.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "The humans… they prey on the mountain fauna.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Some of the poachers do. We already discussed this, Naoki.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "That one reeked of animal blood!",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText:
          "They come to pay you tribute and request things while directly disobeying you.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Disrespecting you!",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText: "And it wasn’t just him. So many of them.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "Nothing but the stench of blood for hours, only that man was fresh.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "And now I can smell it on you, too.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText: "He releases my hand and tucks his arms into his sleeves.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "…I didn’t realize, Naoki.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "How could you not!",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: nar,
      characterText:
          "The lump that’s been forming this entire day now chokes me as Naoki looks at me with… distrust.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "You…",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "You love humans.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "You keep exclusively human texts in your library. You do not speak to most of the fauna but hold special ceremonies for the same beings who have their own term for being specialized killers.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "You ask me to hide my wings!",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText:
          "You turn me into a monster that can’t be told apart from the poachers we hate.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I… I don’t know if you’re as equal as you claim to be.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "I just…",
      mcImage: "transparent",
    ),
    // MC consoling and Naoki’s ultimatuSpeech(characterName: m, characterText:"Does MC love the mountaicharacterName: n, or does she love the humans? MC answers with the animals of the mountain (branch A) or refuses (branch B)
    Speech(
      characterName: m,
      characterText: "Naoki.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "I understand your feelings… but please try to understand mine.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "My life is not easy. Life is not easy. There is no pure good or pure bad.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "My job is to keep balance, not to be something all-seeing and all-knowing that can control and punish as I see fit.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Is that what this is?",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "What?",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: n,
      characterText: "Does this look balanced to you?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "Does receiving tributes from only humans and only learning about humans feel balanced to you?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Naoki, only humans even have a written language. It’s not like that.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "They have different needs, different methods of communication.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "So you have a reason to love them more.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "That’s not what I meant and you know it.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…I need an answer.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "Who do you love more? The animals of the mountain or the humans?",
      charImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "What…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "How could you ask something like that?",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: n,
      characterText: "Please.",
      charImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He bows low to me, as if that will hide the truth in his eyes—fear.",
      mcImage: "transparent",
    ),
    // choice A
    Speech(
      characterName: m,
      characterText: "The animals of the mountain.",
      mcImage: "mc_happy",
    ),
    //jump to NaokiAct3BranchA
    // choice B
    Speech(
      characterName: m,
      characterText: "I can’t answer that, Naoki.",
      mcImage: "mc_happy",
    ),
    //jump to NaokiAct3BranchB
  ];
}
// NaokiAct3BranchA = [
//         //Naoki understands but does not accept MC's stance on humans and animals.
//         // bg mountain view, sunset (continuation of choice A)
//         Speech(characterName: n, characterText:"…Okay.", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"If you say so, I believe you.", charImage:"naoki_neutral",),
//         Speech(characterName: n, characterText:"I’m sorry for my behavior.", charImage:"naoki_blush",),
//         Speech(characterName: m, characterText:"Do you feel better now?", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"Yes. But…", charImage:"naoki_neutral",),
//         Speech(characterName: n, characterText:"It’s still difficult for me to accept your feelings on humans while you claim to love animals.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I cannot trust them like you do.", charImage: "naoki_sad",),
//         Speech(characterName: m, characterText:"I don’t expect you to feel the exact same way I do, Naoki.", mcImage: "mc_happy",),
//         Speech(characterName: m, characterText:"I expect you to simply want the best for us.", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"…I can do that.", charImage:"naoki_happy",),
//         Speech(characterName: m, characterText:"I think, with time, you can see humans for the kind beings they can be.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"I think we are getting ahead of ourselves.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Ha ha… Perhaps.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Humans seem to have more unkindness to them than can be easily seen. They seem to do whatever they want just because they want to.", charImage: "naoki_sad",),
//         Speech(characterName: n, characterText:"They fall prey to their own instincts more than hatchlings.", charImage: "naoki_frown",),
//         Speech(characterName: m, characterText:"I think you’re biased. You will see many more humans throughout your life than just today. You will see.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"That doesn’t sound like a good thing to me.", charImage:"naoki_happy",),
//         Speech(characterName: m, characterText:"Will you try to keep an open mind about it, at least?", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"Hm…", charImage:"naoki_neutral",),
//         Speech(characterName: n, characterText:"Have you ever been… hunted?", charImage: "naoki_sad",),
//         Speech(characterName: m, characterText:"No… I can’t say that I have.", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"Then you might understand why it is hard for me, who was a crow, to see hunted animals.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Why I might relate to them more than a human.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Yes… I can see that. I’m sorry, Naoki.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…But I will try my best, as you command.", charImage:"naoki_happy",),

//         //As Naoki and MC continue with their duties, Naoki’s anger turns into more of a fearfulness, but he comes to appreciate (gradually) her sense of equality in regards to all beings
//         // bg outdoor pathway CORNER, day, only MC

//         Speech(characterName: nar, characterText:"It was scary having an argument with Naoki, but after I confirmed I do love the mountain animals, he seems to be trying to understand humans.", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"The work never stops, but now more can be accomplished than ever before.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"The aches and pains I’ve been accustomed to now come and go. I don’t think I’ve ever slept this much in my life.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"MC!", mcImage: "mc_neutral",),
//         // Raven Naoki appear
//         Speech(characterName: nar, characterText:"Naoki rushes to me, breathless, a broom still in hand that will snap in half if he clutches it any tighter.", charImage:"raven_naoki_blush",),
//         Speech(characterName: m, characterText:"Y-yes? What’s wrong?", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"T-there’s a… a human! There’s a human in the temple!", charImage:"raven_naoki_frown",),
//         Speech(characterName: m, characterText:"Oh! Let’s go welcome them!", mcImage: "mc_happy",),
//         // screen shake
//         Speech(characterName: n, characterText:"What? No! It’s an intruder!", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Humans are not forbidden to come to the temple, Naoki.", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"Well, they should be!", mcImage: "transparent",),
//         Speech(wo, characterText:"Excuse me, MC?", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: n, characterText:"You will not address her so casually!", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Oh! It’s you!", mcImage: "mc_happy",),
//         Speech(characterName: m, characterText:"Naoki. This woman is from the family that has lived closest to this temple for generations.", mcImage: "mc_neutral",),
//         Speech(characterName: m, characterText:"Ina. It’s so nice to see you again. Have you come to repurpose our old materials?", mcImage: "mc_happy",),
//         Speech(i, characterText:"I have! It’s also about time to replace your utensils, correct?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"That would be lovely.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Naoki, please introduce yourself.", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"If I didn’t know hicharacterName: m, it’d look like he was ready to completely ignore me.", charImage:"raven_naoki_sad",),
//         Speech(characterName: nar, characterText:"But Naoki sighs and gives a curt bow to Ina. It’s not an apology, but it’s something.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…Hello.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: m, characterText:"You’ve gotten so big. Even your hair is so long now.", mcImage: "mc_happy",),
//         Speech(characterName: nar, characterText:"I pat her head before turning to Naoki again.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"It’s as good a time as ever.", mcImage: "mc_neutral",),
//         Speech(characterName: m, characterText:"Hey, Ina? If you have the time, would you mind visiting once a week or so?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"W-what?", charImage:"raven_naoki_frown",),
//         Speech(i, characterText:"Sure. What would you like me to do?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"My familiar is learning to write and you have such pretty handwriting. I think you’d be a much better teacher than I.", mcImage: "mc_happy",),
//         // screen shake
//         Speech(characterName: n, characterText:"I don’t need it!", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Yes, you really, really do.", mcImage:"mc_frown",),
//         Speech(characterName: n, characterText:"Erk…", charImage:"raven_naoki_sad",),
//         Speech(i, characterText:"I can make time for that.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Thank you. I’d appreciate it.", mcImage: "mc_happy",),
//         Speech(characterName: nar, characterText:"Ina takes off to pack up our old utensils and materials and Naoki waits until she’s out of sight before furiously flapping his wings.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Why?", charImage:"raven_naoki_frown",),
//         Speech(characterName: m, characterText:"You haven’t had much personal exposure. This will be a good opportunity for you to learn about kind humans.", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"…I already know that.", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"What?", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"The way you speak and interact with humans is the same as with the other animals.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: n, characterText:"I do not need to be locked in a room with a human to see that ‘Ina’ is nice.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"…", mcImage:"mc_blush",),
//         Speech(characterName: n, characterText:"What.", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"I’m just so happy to hear that, Naoki…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…I’m returning to work! I still do not see your point of view!", charImage:"raven_naoki_blush",),
//         Speech(characterName: m, characterText:"Have fun!", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"Hmph.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki’s wings stretch fully as he stalks away in the opposite direction of Ina.", mcImage: "transparent",),
//         // Naoki off screen
//         Speech(characterName: m, characterText:"You’re pretty childish sometimes, Naoki!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"You missed a spot!", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Ha ha…", mcImage: "transparent",),
//         //As MC and Naoki take a walk and Naoki tells of the horror he’s read of humans in books
//         // bg room, night, only MC
//         Speech(characterName: nar, characterText:"As promised, Ina comes to tutor Naoki the following week.", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"But I don’t know how it went. When she left, Naoki simply returned to work.", mcImage: "mc_sad",),
//         Speech(characterName: nar, characterText:"It’s one of my first times going to Naoki’s room since he first became my familiar.", mcImage: "mc_neutral",),
//         // screen shake
//         Speech(characterName: m, characterText:"Hello? Naoki?", mcImage: "transparent",),
//         // Raven Naoki appear
//         Speech(characterName: n, characterText:"Oh. Hello.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: m, characterText:"I’m just checking up on you.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"Yes… Please, come in.", charImage:"raven_naoki_happy",),
//         Speech(characterName: m, characterText:"Sure. Thank you.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Oh… what’s all this, Naoki?", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"Huh? A-ah…", charImage:"raven_naoki_blush",),
//         Speech(characterName: n, characterText:"I seem to have started a collection of sorts. I didn’t realize I had so much.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki’s room absolutely glitters with shiny objects neatly placed about.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"A few poetry books from the library sit next to his bedding, while the other half of the room is covered with sparkling rocks, glass, and metals that are organized by size and color.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Have you been collecting these the whole time?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"‘A love that frees your heart is one that has been allowed to sprout wings.’", charImage:"raven_naoki_neutral",),
//         Speech(characterName: n, characterText:"Ahem…", charImage:"raven_naoki_blush",),
//         Speech(characterName: n, characterText:"Yes, since we began our mountain rounds…", charImage:"raven_naoki_sad",),
//         Speech(characterName: n, characterText:"I’ll clean it.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"No! No, this is great!", mcImage: "mc_happy",),
//         Speech(characterName: m, characterText:"If you like it, please keep it.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"It’s okay?", charImage:"raven_naoki_neutral",),
//         Speech(characterName: m, characterText:"Of course it is. It makes you happy, right?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Never be afraid to do what makes you happy as long as it doesn’t hurt anyone.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Alright.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Then…", charImage:"raven_naoki_happy",),
//         Speech(characterName: n, characterText:"I would like to go on a walk with you.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Huh? Right now?", mcImage:"mc_blush",),
//         Speech(characterName: n, characterText:"Yes. It would make me happy.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Oh. W-well, I suppose I am done working for today.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"Ina mentioned a festival.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: m, characterText:"Would you like to see a human festival, Naoki?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…Not in particular. But I suppose we can make it short.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Ha ha, yes. Short.", mcImage: "mc_happy",),
//         // bg summer festival packed
//         Speech(characterName: nar, characterText:"We find a quiet spot right outside the local village, close enough to hear and see the festivities without being spotted.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"It’s absolutely bustling despite it being so late. People chat and walk among food stalls without a care in the world.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Away from the warmth of fire and bodies, Naoki’s wings serve as a shield from the wind, stretched around us both.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"What do you think, Naoki?", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"It’s loud.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: m, characterText:"Ha ha… yes, I suppose it is.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"But what have you learned recently on humans?", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"The more I read about thecharacterName: m, the worse they make their case.", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"Why’s that?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"They document their own atrocities. It’s hard to believe good things about them.", charImage:"raven_naoki_frown",),
//         Speech(characterName: n, characterText:"Entire communities destroyed over things like thievery and prostitution. Scandals and murder about.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Surely you read something other than that?", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"If humans have much kindness to thecharacterName: m, it is not in their history texts.", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"…Look there, Naoki.", mcImage: "mc_happy",),
//         Speech(characterName: nar, characterText:"His gaze follows my finger that points to one of the food stalls and the performance artist next to it.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"The artist puts on a show to attract people to buy food from the stall. He doesn’t do it for profit, but out of kindness.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: m, characterText:"And that family there is learning a dance together.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"And that couple there are attempting to hide while they kiss.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Why would they do that?", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"Well, I suppose it must be embarrassing for them.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I mean why do humans kiss at all? I see it often in the texts but there’s no formal explanation. Is it a type of mating call?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Ha ha…", charImage:"raven_naoki_neutral",),
//         Speech(characterName: m, characterText:"Sorry, I don’t mean to laugh.", mcImage:"mc_blush",),
//         Speech(characterName: m, characterText:"It’s not always a mating call. Sometimes it is just a form of affection.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"ThecharacterName: n, should I be kissing you?", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"N-no! I-it’s complicated.", mcImage:"mc_blush",),
//         Speech(characterName: n, characterText:"Hm…", charImage:"raven_naoki_neutral",),
//         Speech(characterName: n, characterText:"If you’re trying to get me to sympathize with the humans, it won’t work.", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"Humans are anathema to the mountain and all of nature.", charImage:"raven_naoki_frown",),
//         Speech(characterName: m, characterText:"…You’re using big words and big ideas with a small mind.", mcImage:"mc_frown",),
//         // screen shake
//         Speech(characterName: n, characterText:"How big must my mind be to forgive humans who hunt animals?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"You are being biased against them and not looking at it logically.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Should I get closer to a trap then?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Humans are not so different from the rest of the animals!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…You believing that is the same as approving of their methods, of their killing.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Perhaps worse if you are a god.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Humans are prone to corruption. It’s in their blood. No amount of shiny festival lights will cover up their crimes! They’ll only keep going and going and—", charImage: "naoki_sad",),
//         Speech(characterName: m, characterText:"No!", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I shake my head as I feel myself reaching a boiling point that I haven’t before.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"The only corruption I see right now is my familiar, so blinded by his fear and hatred to live up to the cause of equality.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"I beg you to ponder why you feel this way. To take the time to find out how humans are different from one another.", mcImage: "mc_sad",),
//         Speech(characterName: m, characterText:"For the good of the mountain.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…", mcImage: "transparent",),

//         //During a night of chess, Naoki shares his reflections and compliments MC
//         //bg clearing by the lake, day
//         Speech(characterName: nar, characterText:"To my surprise, Naoki invited me to play chess today.", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"Apparently, Ina taught him and they play every time she comes.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Which I don’t understand, considering his views on humans…", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"The next tribute is soon.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: m, characterText:"Oh! Yes, it is. We’ll have to take a trip and clean the temple.", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"Ever diligent.", charImage:"raven_naoki_happy",),
//         Speech(characterName: m, characterText:"Is there something on your mind?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Hm…", charImage:"raven_naoki_neutral",),
//         Speech(characterName: n, characterText:"I think… you’re incredible for how you manage to fit all the complexities of humans and animals like.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Huh…?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Checkmate.", charImage:"raven_naoki_happy",),
//         Speech(characterName: m, characterText:"Gah! Were you trying to distract me?", mcImage:"mc_frown",),
//         Speech(characterName: n, characterText:"Ha ha…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I mean my words with no ulterior motives.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"…You’re hot and cold, Naoki.", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"Hm?", charImage:"raven_naoki_neutral",),
//         Speech(characterName: m, characterText:"You tell me you support my cause. You back out. You tell me I’m incredible for not hating humans, then tell me you hate humans.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"It’s hard to believe you.", charImage:"raven_naoki_sad",),
//         Speech(characterName: n, characterText:"…I know. You are a saint for putting up with me.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"I only wish you could see the world as I do. The only difference between us is my patience.", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"Patience…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Yes. Patience.", charImage:"raven_naoki_happy",),
//         Speech(characterName: nar, characterText:"Naoki picks up my king piece and brings it close to his face.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I never know what he’s thinking.", mcImage: "transparent",),
//         //MC lets Naoki meet a human child and he changes his opinion on humans
//         // bg room, day
//         Speech(characterName: nar, characterText:"For the first time in what feels like years, I wake up from a dream.", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"I can’t remember it exactly. But the feeling of small hands in mine linger.", mcImage: "mc_happy",),
//         // bg Hot spring, day
//         Speech(characterName: m, characterText:"Naoki!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Ah!", charImage:"raven_naoki_blush",),
//         Speech(characterName: n, characterText:"Y-yes?", charImage:"raven_naoki_frown",),
//         Speech(characterName: m, characterText:"When you’re done with your bath, please meet me at the entrance. We’re going to the shrine today.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"The… shrine? With the humans?", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"Correct.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…Yes, MC.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"It doesn’t escape my notice how Naoki sinks further into the hot water as if he wants to escape under the bubbles.", mcImage: "transparent",),
//         //bg temple entrance, day
//         Speech(characterName: m, characterText:"Here we are.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"So we are.", charImage: "naoki_sad",),
//         Speech(characterName: nar, characterText:"I spot my target easily. I only need to shoot the child an encouraging smile before he comes barreling over and away from his parents.", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: n, characterText:"A-ah!", charImage: "naoki_frown",),
//         Speech(characterName: m, characterText:"Hello there. How are you today, young one?", mcImage: "transparent",),
//         Speech(c, characterText:"Hiii!", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"This is my friend, Naoki.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"What do you think you’re doing?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Say hello, Naoki. Just talk.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"U-uh… hello?", charImage: "naoki_sad",),
//         Speech(c, characterText:"You talk funny.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Excuse me?", charImage: "naoki_frown",),
//         Speech(c, characterText:"Your hair is so long.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"What of it?", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: n, characterText:"O-ow!", charImage: "naoki_sad",),
//         Speech(characterName: m, characterText:"Ha ha…", mcImage: "transparent",),
//         Speech(c, characterText:"I’m sorry. Did that hurt? Please don’t cry.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Of course I’m not going to cry.", charImage: "naoki_frown",),
//         Speech(c, characterText:"Really?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Yes!", charImage: "naoki_sad",),
//         Speech(c, characterText:"I think I’d cry if I looked like a girl. Are you a girl?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"What is the difference!", charImage: "naoki_frown",),
//         Speech(c, characterText:"I’m sorry, miss. I won’t touch your pretty hair anymore.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"P-pretty?", charImage:"naoki_blush",),
//         Speech(characterName: m, characterText:"Well, you do have pretty hair, Naoki…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He clicks his tongue and gently pushes the child’s hand away from his hair.", charImage: "naoki_frown",),
//         Speech(characterName: n, characterText:"You are a ridiculous human!", mcImage: "transparent",),
//         Speech(c, characterText:"Aren’t you a hucharacterName: n, too?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I… I’m different.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He steps back and unfurls his wings with a heavy sigh.", charImage:"raven_naoki_sad",),
//         Speech(characterName: n, characterText:"See?", charImage:"raven_naoki_neutral",),
//         Speech(c, characterText:"Oooh! You have wings! That’s so cool!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Cool?", charImage:"raven_naoki_blush",),
//         Speech(c, characterText:"I want wings too! How did you do that!", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: n, characterText:"Don’t tug on them!", charImage:"raven_naoki_frown",),
//         Speech(c, characterText:"Miss, can you fly? What kind of wings are they?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I don’t know. I’m a raven.", charImage:"raven_naoki_neutral",),
//         Speech(c, characterText:"Is that the black one?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Yes, it is.", charImage:"raven_naoki_happy",),
//         Speech(c, characterText:"I’ve never seen a raven up close.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"That’s because you’re so small and ravens fly up high.", mcImage: "transparent",),
//         Speech(c, characterText:"I’m not small!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Ha ha… Yes, you are. But that means you can see things ravens can’t, right? You’re closer to the ground.", mcImage: "transparent",),
//         Speech(c, characterText:"Hmmm… I guess… But I wanna fly! I’d fly to the top of the mountain!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"It’s far too cold up there. Not worth it at all. You’d freeze.", mcImage: "transparent",),
//         Speech(c, characterText:"But I want to go! I don’t care!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"You don’t care about freezing? You don’t mind being an icicle?", mcImage: "transparent",),
//         Speech(c, characterText:"Wait… no, I don’t want that!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Are you sure? I heard icicles are a tasty treat.", mcImage: "transparent",),
//         Speech(c, characterText:"Nooooo!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Ha ha ha ha…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"There are many animals on the mountain that can fly you know. And even the ones who can’t have other fun things they can do.", mcImage: "transparent",),
//         Speech(c, characterText:"Really?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Of course. You should appreciate what you have and learn about all the animals.", mcImage: "transparent",),
//         Speech(c, characterText:"But I don’t know anything…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Then seek out information. Ask questions.", mcImage: "transparent",),
//         Speech(c, characterText:"Okay… what do ravens eat? Do they like candy?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"They eat all sorts of things. Meat and eggs, berries and other plants. I imagine they might candy as well.", mcImage: "transparent",),
//         Speech(c, characterText:"Ohhh so they’re like me! I eat those too!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I… suppose you do.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: n, characterText:"It’s time to go!", mcImage: "transparent",),
//         Speech(c, characterText:"Oh! Coming!", mcImage: "transparent",),
//         Speech(c, characterText:"I’m sorry, my mom and dad are waiting for me, Miss.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I don’t need an apology, don’t be silly.", charImage:"raven_naoki_happy",),
//         Speech(c, characterText:"Okay! Bye!", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: n, characterText:"?!", charImage:"raven_naoki_blush",),
//         Speech(characterName: nar, characterText:"The child hugs Naoki before running back off to join his parents, mischievously grinning as he spins a feather between his fingers.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Sigh…", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"You had fun.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"H-huh? I wouldn’t say that…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"But I understand why you brought me here now.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: n, characterText:"That was a human child. They didn’t know… anything. They were just as ridiculous as a cub.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"If it’s not protected, it could just as easily fall prey to something.", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"That’s right, Naoki…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki exhales and watches as the child disappears out of view.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"And it will grow up hunting like all carnivorous animals. For itself. For its parents.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"It doesn’t know what it’s like to be a raven any more than a raven knows how to be a human.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"It is just a child. It is not… evil. Or good.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…", charImage:"raven_naoki_neutral",),
//         Speech(characterName: n, characterText:"Thank you, MC. I think I understand now.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Do you really?", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"As much as I can at the moment.", charImage:"raven_naoki_happy",),
//         Speech(characterName: m, characterText:"Then I’m happy.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Well, that’s always a good thing.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Is it now?", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki smiles in my direction for a moment before pacing the shrine on his owcharacterName: n, gaze turned toward the clear sky.", mcImage: "transparent",),
//         // Naoki prepares MC a meal and Naoki confesses (misunderstood) romantic feelings
//         //bg clearing by the lake, sunset
//         Speech(characterName: m, characterText:"Oh! There you are!", mcImage: "mc_happy",),
//         Speech(characterName: m, characterText:"Ina told me to find you here. What’s going on?", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I’m worn from today’s duties, but I still manage to keep the weariness from my voice as I hurry to Naoki’s side.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"There you are.", charImage:"naoki_happy",),
//         Speech(characterName: m, characterText:"What’s all this?", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"It’s a silly question as I approach. It’s clearly an elaborate dinner set up for us near the temple lake. The delicious smell of mint and crispy face makes its way to my nostrils.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki bows and waits for me to take a seat, which I do, albeit confused.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"What’s the occasiocharacterName: n, Naoki?", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He’s cooked a few times now, but never to this extent. It’s by all means a feast, far too much for two people.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I wanted to thank you for your perseverance and kindness.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Y-you can start by sitting! Please stop bowing!", mcImage:"mc_blush",),
//         Speech(characterName: nar, characterText:"He takes a seat, still polite as he pours me tea in elaborate, traditional fashion.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Did… Ina teach you this as well?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"No. This was all on my own. From my own research.", charImage:"naoki_neutral",),
//         Speech(characterName: m, characterText:"That’s amazing, Naoki…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…", charImage:"naoki_happy",),
//         Speech(characterName: n, characterText:"We’ve been together quite some time now, have we?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Yes. We have.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"ThecharacterName: n, please enjoy.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"…I will. Thank you.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki eats only a little, instead insisting on explaining each dish and cutting my own.", charImage:"naoki_neutral",),
//         Speech(characterName: nar, characterText:"It’s a bit too much but it is not my place to refuse gifts.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"It reminds me of when Naoki first became my familiar, awkward and stumbling and asking me personal questions I’d never considered before.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"I can’t say I have a favorite type of dress cut. Whatever kimono is most comfortable was always my go-to choice.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I don’t think that’s true. You tend to avoid wearing darker colors.", charImage:"naoki_happy",),
//         Speech(characterName: m, characterText:"What, really? I never noticed.", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"It’s true! But I think these colors suit your personality.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"And what’s that?", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"Simple-minded and affable.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Hey!", mcImage:"mc_frown",),
//         Speech(characterName: n, characterText:"Ha ha ha… I’m sorry. I’m just kidding.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"I’m not sure you are!", mcImage: "mc_happy",),
//         Speech(characterName: nar, characterText:"He turns his head to hide his smile but he’s doing a terrible job.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Gosh. I’m really full…", mcImage: "mc_sad",),
//         Speech(characterName: m, characterText:"Let’s try to save the rest for tomorrow.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"No. Wait.", charImage: "naoki_sad",),
//         Speech(characterName: nar, characterText:"Naoki scoots closer to me, still kneeling and folding his hands into his sleeves.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"When I first became your familiar, I was confused in many ways.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"But I’ve read things recently. Understood things recently.", charImage:"naoki_blush",),
//         Speech(characterName: m, characterText:"I know you have.", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"No. It’s…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"You are beautiful. A deity to proudly serve.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Thank you, Naoki.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"No. No, it’s more than that. Even if you weren’t a deity. Even if you did not have a shrine.", charImage:"naoki_happy",),
//         Speech(characterName: n, characterText:"I would serve at your side.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Naoki…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Just this once, I let myself get a bit carried away.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I happily wrap my arms around him in a hug, squeezing him tight against me.", charImage:"naoki_blush",),
//         // screen shake
//         Speech(characterName: m, characterText:"Thank you. I don’t know what to say. You’ve changed my life as well. You’re dear to me.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"N-no, you don’t understand…", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"What don’t I understand about your sincere devotiocharacterName: n, Naoki?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"You’ve made me the happiest I’ve felt in years.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I pull away enough to look him in the eye, squeezing his shoulders.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"I won’t forget tonight. But we should sleep, don’t you think?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"MC!", charImage: "naoki_sad",),
//         Speech(characterName: nar, characterText:"He grabs both my hands, leaning close.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Y-yes?", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"It’s not devotion! It has nothing to do with that!", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Then what? Just tell me, Naoki, whatever it is.", mcImage: "transparent",),
//         // [First Kiss CG – eyes open]
//         Speech(characterName: nar, characterText:"He hesitates for a moment before loosening his grip on me.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki… kisses me.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He finishes leaning in and kisses me, lips cool but soft against my own like a sunset prayer.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"All the confusion and skepticischaracterName: m, all the quiet moments of morning walks, and every decision I’ve made has led him here.", mcImage: "transparent",),
//         // choice A
//         Speech(characterName: nar, characterText:"And I’m okay with that.", mcImage: "transparent",),
//         //jump to NaokiAct4BranchA
//         Speech(characterName: nar, characterText:"But he is my familiar.", mcImage: "transparent",),
//         // choice B
//         //jump to NaokiAct4BranchA_B
// ];

// NaokiAct3BranchB = [
//     // bg mountain view, sunset (continuation of Act 2 choice B)
//     // Naoki distances himself from MC and only stays in the shrine library

//         Speech(characterName: n, characterText:"You can’t even pretend to care.", charImage: "naoki_frown",),
//         Speech(characterName: n, characterText:"You… you can’t even lie for me.", charImage: "naoki_sad",),
//         Speech(characterName: m, characterText:"My equality extends to humans, Naoki.", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"…That’s what you keep calling it.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"‘Lies are heavy upon the ego.’", charImage: "naoki_sad",),
//         Speech(characterName: n, characterText:"…I’m returning to the shrine.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"We can talk about this in the morning, okay?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…", mcImage: "transparent",),
//         // bg Naoki sprite leave
//         Speech(characterName: nar, characterText:"He doesn’t respond or wait for me, hurrying back toward the shrine on his own.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Naoki…", mcImage: "transparent",),
//         // //bg mountain path and trees, day, only MC
//         Speech(characterName: nar, characterText:"Naoki no longer joins me on our morning mountain surveys. He leaves before breakfast. Before me.", mcImage: "mc_sad",),
//         Speech(characterName: nar, characterText:"I eventually figure out his routine. He continues to help the mountain fauna on his own before locking himself in the library.", mcImage: "transparent",),
//         // bg Outdoor pathway, sunset
//         Speech(characterName: m, characterText:"Naoki!", mcImage:"mc_blush",),
//         Speech(characterName: m, characterText:"Good… afternoon.", charImage:"raven_naoki_frown",),
//         Speech(characterName: nar, characterText:"He’s getting thinner because of how many meals he skips to be away from me.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…Excuse me.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"A-are you going to the library again?", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"I have to do something to help the animals since I am trapped in this body.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Um. Y-you know, I have someone who can help teach you writing. It would help you.", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"I don’t need assistance from a human.", mcImage: "transparent",),
//         // bg Naoki sprite leave
//         Speech(characterName: m, characterText:"Sigh…", mcImage: "mc_sad",),
//         // bg outdoor pathway CORNER, day, only MC
//         Speech(characterName: nar, characterText:"Things change for the worse in the days to come.", mcImage: "transparent",),
//         Speech(wo, characterText:"Ahhhhh!", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"After hearing the scream of a wocharacterName: n, I take off towards where it’s coming from.", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: m, characterText:"Coming!", mcImage:"mc_frown",),
//         // bg outside shrine, day, Raven Naoki also appear
//         Speech(characterName: nar, characterText:"Naoki corners a woman in the library, wings spread threateningly.", charImage:"raven_naoki_frown",),
//         Speech(characterName: m, characterText:"Naoki! Stop!", mcImage:"mc_frown",),
//         Speech(characterName: n, characterText:"We have an intruder!", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I hurry to his side and push him away.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"It’s just Ina! A friend!", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"Who?", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"This is Ina, she’s from the family that has lived closest to this temple for generations.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Not that it matters who, because humans are not forbidden to come to the temple, Naoki.", mcImage:"mc_frown",),
//         Speech(characterName: m, characterText:"I’m sorry about that. Are you alright?", mcImage: "mc_sad",),
//         // screen shake
//         Speech(characterName: nar, characterText:"I help her to her feet and brush her off.", mcImage: "transparent",),
//         Speech(i, characterText:"I’m okay, I was just a little scared.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"This is Naoki, my familiar. He’s… a little wary of humans.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Naoki. Please introduce yourself.", mcImage:"mc_frown",),
//         Speech(characterName: nar, characterText:"Naoki grimaces but gives a curt bow to Ina. It’s not an apology, but it’s something.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…Hello.", charImage:"raven_naoki_frown",),
//         Speech(characterName: m, characterText:"Ahem… have you come to repurpose our old materials again?", mcImage: "mc_happy",),
//         Speech(i, characterText:"I have! It’s also about time to replace your utensils, correct?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"That would be lovely.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Gosh, you’ve gotten so big. Even your hair is so long now!", mcImage: "mc_happy",),
//         Speech(characterName: nar, characterText:"I pat her head before turning to Naoki again.", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"I’d ask Ina to help tutor Naoki when she has time, but Naoki looks like he’d rather fall upon a trap than even look at her.", mcImage: "mc_sad",),
//         Speech(characterName: nar, characterText:"He grabs a book and turns to rush away, but I call for him.", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"Wait!", mcImage:"mc_frown",),
//         Speech(characterName: m, characterText:"At least give a polite goodbye, Naoki.", mcImage: "mc_sad",),
//         Speech(characterName: nar, characterText:"He pauses on the way out the door, wings twitching as he slowly faces us both.", charImage:"raven_naoki_frown",),
//         Speech(characterName: n, characterText:"…I thought this unfamiliar human came to kill one of us. You rush to their side and do not ask me if I’m okay.", charImage:"raven_naoki_sad",),
//         Speech(characterName: n, characterText:"I have nothing to say to someone who cares so much for humans over their own familiar.", charImage:"raven_naoki_frown",),
//         // bg Naoki sprite leave
//         Speech(characterName: nar, characterText:"He’s that scared of humans hunting him…? What happened while Naoki was a raven…?", mcImage: "transparent",),
//         Speech(i, characterText:"Is he okay…?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"…I don’t know. He needs space.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I see that I have perhaps been more insensitive than I thought.", mcImage: "transparent",),
//         // Naoki gets angry and calls MC hypocritical and asks to be turned back into a ravecharacterName: n, MC confronts Naoki’s fear of humans
//         // bg outside shrine, sunset
//         Speech(characterName: nar, characterText:"It’s weeks before Naoki initiates a conversation with me. I rush to meet him in the library where he called for me.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He doesn’t look up when I enter, flipping slowly through a book with paper sprawled around him.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He’s clearly been practicing and learning writing all on his own.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Things I wish he’d let anyone help him with.", mcImage: "mc_sad",),
//         Speech(characterName: m, characterText:"Hello, Naoki…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…I only wished to ask why you insist on being so hypocritical. Helping animals. Helping humans. Convincing yourself you are doing the right thing.", charImage:"raven_naoki_frown",),
//         Speech(characterName: m, characterText:"…", mcImage:"mc_frown",),
//         Speech(characterName: m, characterText:"Goodnight, Naoki. You clearly need more rest.", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: nar, characterText:"Naoki nearly throws down the book as he stands to meet me head on.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Everything I read just makes it worse and worse!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Entire communities destroyed over things like thievery and prostitution! Scandals and murder about!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Humans have no redeeming qualities and you so eagerly help them!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"You…", charImage:"raven_naoki_sad",),
//         Speech(characterName: nar, characterText:"His anger crumbles to something more fearful for only a brief moment before he regains his composure.", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"You have to stop! You’re going to get seriously hurt!", charImage:"raven_naoki_frown",),
//         Speech(characterName: n, characterText:"Killed by these monsters!", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"I will never stop, Naoki.", mcImage:"mc_frown",),
//         Speech(characterName: m, characterText:"You know that…", mcImage: "mc_sad",),
//         Speech(characterName: nar, characterText:"My heart shatters to see him like this, so angry and confused and alone.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Then…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Then just turn me back.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki’s voice chokes before he takes a step back to bow.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He means it.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Please. I can’t be here. I can’t support this.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I don’t want to know what I know anymore. I don’t want to be human.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I take a deep breath to stop myself from crying.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He’d rather lose his entire being than know the pain I’ve bestowed upon him.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"And… I could turn him back.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I could set him free from this pain.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"…", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"I take his hand and lead him down to sit with me, instead.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Please, listen to me.", mcImage: "mc_sad",),
//         Speech(characterName: nar, characterText:"Naoki won’t look me in the eye but doesn’t remove his hand from mine either.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I keep my voice gentle, knowing this could be the last time we ever speak.", mcImage: "mc_neutral",),
//         Speech(characterName: m, characterText:"This mountain is an ecosystem. The cycle of life and death is entwined with everyone who lives on it.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Rabbits eat fruit and plants. Once living creatures. But foxes… foxes kill those same rabbits.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki’s hand clenches into a fist and I pause before continuing.", charImage:"raven_naoki_frown",),
//         Speech(characterName: m, characterText:"Even the falcons prey on living creatures. Sometimes, even the ravens.", charImage: "naoki_sad",),
//         Speech(characterName: m, characterText:"The cycle of life and death is not something that just happens, but it is a necessary factor of life to keep the mountain strong.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"When animals die, they decompose back into the same ground that sprouts forth new plants.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"And humans… humans have their part to play as well.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"If you cannot learn to coexist with humans, you cannot coexist with the mountain itself.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki pulls away his hand and folds them in his sleeves as he finally meets my gaze.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: n, characterText:"You think I’m a failure.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Of course not, Naoki. I just want you to open up to me. That’s all.", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"…When I was a ravecharacterName: n, I didn’t sleep for three days escaping poachers.", charImage:"raven_naoki_sad",),
//         Speech(characterName: n, characterText:"So when I first looked like one, I was so… angry. Confused. As if I’d become the monsters I hated so much.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I was afraid I’d do the same thing to other animals just because of my appearance.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"I’m sorry, Naoki.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…It is no one’s fault but theirs.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"‘True pain is not a sword, but its poison.’", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Yes. But you also know that this is something for you to reflect on and work through.", mcImage: "mc_neutral",),
//         Speech(characterName: m, characterText:"You will either confront your fear or live in it. You know it’s not healthy.", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"…I know.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"We sit in the library for a long time.", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"And although he doesn’t say anything the entire time, it means everything to me just to be allowed in his presence again.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"It’s the beginning of us rebuilding something new from the ashes.", mcImage: "transparent",),
//         //MC lets Naoki meet a human child and he changes his opinion on humans
//         // bg room, day
//         Speech(characterName: nar, characterText:"For the first time in what feels like years, I wake up from a dream.", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"I can’t remember it exactly. But the feeling of small hands in mine linger.", mcImage: "mc_happy",),
//         // bg Hot spring, day
//         Speech(characterName: m, characterText:"Naoki!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Ah!", charImage:"raven_naoki_blush",),
//         Speech(characterName: n, characterText:"Y-yes?", charImage:"raven_naoki_frown",),
//         Speech(characterName: m, characterText:"When you’re done with your bath, please meet me at the entrance. We’re going to the shrine today.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"The… shrine? With the humans?", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"Correct.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…Yes, MC.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"It doesn’t escape my notice how Naoki sinks further into the hot water as if he wants to escape under the bubbles.", mcImage: "transparent",),
//         //bg temple entrance, day
//         Speech(characterName: m, characterText:"Here we are.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"So we are.", charImage: "naoki_sad",),
//         Speech(characterName: nar, characterText:"I spot my target easily. I only need to shoot the child an encouraging smile before he comes barreling over and away from his parents.", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: n, characterText:"A-ah!", charImage: "naoki_frown",),
//         Speech(characterName: m, characterText:"Hello there. How are you today, young one?", mcImage: "transparent",),
//         Speech(c, characterText:"Hiii!", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"This is my friend, Naoki.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"What do you think you’re doing?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Say hello, Naoki. Just talk.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"U-uh… hello?", charImage: "naoki_sad",),
//         Speech(c, characterText:"You talk funny.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Excuse me?", charImage: "naoki_frown",),
//         Speech(c, characterText:"Your hair is so long.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"What of it?", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: n, characterText:"O-ow!", charImage: "naoki_sad",),
//         Speech(characterName: m, characterText:"Ha ha…", mcImage: "transparent",),
//         Speech(c, characterText:"I’m sorry. Did that hurt? Please don’t cry.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Of course I’m not going to cry.", charImage: "naoki_frown",),
//         Speech(c, characterText:"Really?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Yes!", charImage: "naoki_sad",),
//         Speech(c, characterText:"I think I’d cry if I looked like a girl. Are you a girl?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"What is the difference!", charImage: "naoki_frown",),
//         Speech(c, characterText:"I’m sorry, miss. I won’t touch your pretty hair anymore.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"P-pretty?", charImage:"naoki_blush",),
//         Speech(characterName: m, characterText:"Well, you do have pretty hair, Naoki…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He clicks his tongue and gently pushes the child’s hand away from his hair.", charImage: "naoki_frown",),
//         Speech(characterName: n, characterText:"You are a ridiculous human!", mcImage: "transparent",),
//         Speech(c, characterText:"Aren’t you a hucharacterName: n, too?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I… I’m different.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He steps back and unfurls his wings with a heavy sigh.", charImage:"raven_naoki_sad",),
//         Speech(characterName: n, characterText:"See?", charImage:"raven_naoki_neutral",),
//         Speech(c, characterText:"Oooh! You have wings! That’s so cool!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Cool?", charImage:"raven_naoki_blush",),
//         Speech(c, characterText:"I want wings too! How did you do that!", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: n, characterText:"Don’t tug on them!", charImage:"raven_naoki_frown",),
//         Speech(c, characterText:"Miss, can you fly? What kind of wings are they?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I don’t know. I’m a raven.", charImage:"raven_naoki_neutral",),
//         Speech(c, characterText:"Is that the black one?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Yes, it is.", charImage:"raven_naoki_happy",),
//         Speech(c, characterText:"I’ve never seen a raven up close.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"That’s because you’re so small and ravens fly up high.", mcImage: "transparent",),
//         Speech(c, characterText:"I’m not small!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Ha ha… Yes, you are. But that means you can see things ravens can’t, right? You’re closer to the ground.", mcImage: "transparent",),
//         Speech(c, characterText:"Hmmm… I guess… But I wanna fly! I’d fly to the top of the mountain!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"It’s far too cold up there. Not worth it at all. You’d freeze.", mcImage: "transparent",),
//         Speech(c, characterText:"But I want to go! I don’t care!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"You don’t care about freezing? You don’t mind being an icicle?", mcImage: "transparent",),
//         Speech(c, characterText:"Wait… no, I don’t want that!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Are you sure? I heard icicles are a tasty treat.", mcImage: "transparent",),
//         Speech(c, characterText:"Nooooo!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Ha ha ha ha…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"There are many animals on the mountain that can fly you know. And even the ones who can’t have other fun things they can do.", mcImage: "transparent",),
//         Speech(c, characterText:"Really?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Of course. You should appreciate what you have and learn about all the animals.", mcImage: "transparent",),
//         Speech(c, characterText:"But I don’t know anything…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Then seek out information. Ask questions.", mcImage: "transparent",),
//         Speech(c, characterText:"Okay… what do ravens eat? Do they like candy?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"They eat all sorts of things. Meat and eggs, berries and other plants. I imagine they might candy as well.", mcImage: "transparent",),
//         Speech(c, characterText:"Ohhh so they’re like me! I eat those too!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I… suppose you do.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: n, characterText:"It’s time to go!", mcImage: "transparent",),
//         Speech(c, characterText:"Oh! Coming!", mcImage: "transparent",),
//         Speech(c, characterText:"I’m sorry, my mom and dad are waiting for me, Miss.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I don’t need an apology, don’t be silly.", charImage:"raven_naoki_happy",),
//         Speech(c, characterText:"Okay! Bye!", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: n, characterText:"?!", charImage:"raven_naoki_blush",),
//         Speech(characterName: nar, characterText:"The child hugs Naoki before running back off to join his parents, mischievously grinning as he spins a feather between his fingers.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Sigh…", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"You had fun.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"H-huh? I wouldn’t say that…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"But I understand why you brought me here now.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: n, characterText:"That was a human child. They didn’t know… anything. They were just as ridiculous as a cub.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"If it’s not protected, it could just as easily fall prey to something.", charImage:"raven_naoki_sad",),
//         Speech(characterName: m, characterText:"That’s right, Naoki…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki exhales and watches as the child disappears out of view.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"And it will grow up hunting like all carnivorous animals. For itself. For its parents.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"It doesn’t know what it’s like to be a raven any more than a raven knows how to be a human.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"It is just a child. It is not… evil. Or good.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…", charImage:"raven_naoki_neutral",),
//         Speech(characterName: n, characterText:"Thank you, MC. I think I understand now.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Do you really?", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"As much as I can at the moment.", charImage:"raven_naoki_happy",),
//         Speech(characterName: m, characterText:"Then I’m happy.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Well, that’s always a good thing.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Is it now?", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki smiles in my direction for a moment before pacing the shrine on his owcharacterName: n, gaze turned toward the clear sky.", mcImage: "transparent",),
//         // Naoki apologies and seeks to rededicate and redeem himself, forcing himself to interact and even become friendly with humans at a tribute event
//         //bg temple entrance, day
//         Speech(characterName: m, characterText:"Are you sure you’re ready for this?", mcImage: "mc_neutral",),
//         Speech(characterName: m, characterText:"I don’t mind if you need just a little more time.", mcImage: "mc_happy",),
//         Speech(characterName: nar, characterText:"Naoki shakes his head before I can even finish.", charImage:"naoki_neutral",),
//         Speech(characterName: n, characterText:"No. I want to do this. I have to redeem myself.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He’s pushing himself…", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"I shouldn’t reject his feelings if this is what he wants.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Okay. Then let’s go together.", mcImage: "mc_happy",),
//         Speech(characterName: nar, characterText:"I open my palm to him and he cautiously holds my hand before we ascend the sandō steps.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He trembles against me, but his feet never stall.", mcImage: "transparent",),
//         // bg summer festival packed, night
//         Speech(characterName: nar, characterText:"After a long day, the villagers surprise us both. They reveal near the end of the tributes that they’re holding a festival tonight in our honor.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"And, of course, we attend.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki sticks close to my side.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"A bit too closely.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"N-Naoki, um…", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"Yes!", charImage: "naoki_frown",),
//         Speech(characterName: m, characterText:"Why don’t you relax a bit, okay?", mcImage: "mc_neutral",),
//         Speech(characterName: m, characterText:"They want to thank you. They want you to have a nice time.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…", charImage: "naoki_sad",),
//         Speech(characterName: nar, characterText:"He lets go of my arm but fidgets with his sleeves, looking around uncomfortably.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"There’s a lot of… food.", charImage:"naoki_neutral",),
//         Speech(characterName: m, characterText:"There sure is. Let’s try some, okay?", mcImage: "mc_happy",),
//         // bg food stall
//         Speech(characterName: n, characterText:"Goddess! Thank you for your hard work! Please, pick whichever you like!", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Thank you!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…What is this?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Takoyaki. Try one, please. They’re all good.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Hesitantly, Naoki takes one of the skewers and nibbles at the end.", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: n, characterText:"Oops, careful there. It’s hot. Don’t burn yourself.", charImage: "naoki_sad",),
//         Speech(characterName: m, characterText:"Looks like it’s a bit too late for that. Ha ha…", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Are you okay?", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"…Ow.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"You’re the one helping out MC, right?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Yes…", charImage:"naoki_neutral",),
//         Speech(characterName: n, characterText:"My sincerest thanks. The color is back in her cheeks these days.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Oh. Yes.", mcImage: "transparent",),
//         // bg summer festival packed
//         Speech(characterName: m, characterText:"That was nice of him.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I suppose.", charImage: "naoki_sad",),
//         Speech(characterName: m, characterText:"You’re doing great, Naoki.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"Someday I will agree.", charImage:"naoki_happy",),
//         Speech(c, characterText:"Excuse me! Excuse me!", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"A little girl comes rushing up to Naoki, not sparing me a single glance.", charImage:"naoki_neutral",),
//         Speech(characterName: n, characterText:"Y-yes?", charImage: "naoki_sad",),
//         Speech(c, characterText:"Hurry, please! I need a dance partner or I can’t compete!", mcImage: "transparent",),
//         Speech(c, characterText:"And you’re nice and tall!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Um.", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: nar, characterText:"She takes it as a ‘yes,’ taking Naoki’s hand and dragging him deeper into the crowd.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I follow quickly, a bit anxious to see how he’ll react to being surrounded by humans.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki holds the child’s hand tight like a lifeline and I wait on the outskirts as people part to give me respectable space.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Instruments blare and partners of various ages begin their dances. Naoki barely manages to keep up with the excited child, trying his best not to step on her.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I try my best not to laugh at the ridiculous sight.", mcImage: "mc_happy",),
//         Speech(characterName: nar, characterText:"But before long, it’s not ridiculous at all.", charImage:"naoki_happy",),
//         Speech(characterName: nar, characterText:"In fact… it’s the most beautiful thing I’ve seen in a long time—the most genuine smile on Naoki’s face I’ve seen in weeks.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"A smile I feel, in the pit of my stomach, will never truly be because of me again.", mcImage: "mc_sad",),
//         //jump to NaokiAct4BranchB
//         ];

// NaokiAct4BranchA_B = [
//         // MC rejects Naoki’s advances on grounds of being her familiar and he sadly accepts it
//         // bg clearing by the lake, sunset (continuation of Act3BranchA choice B)
//         Speech(characterName: nar, characterText:"I hurriedly push Naoki away.", mcImage: "mc_sad",),
//         Speech(characterName: nar, characterText:"Even the gentle motion seems too harsh.", charImage: "naoki_sad",),
//         Speech(characterName: nar, characterText:"But…", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"I’m sorry, Naoki. I… I can’t.", mcImage:"mc_blush",),
//         Speech(characterName: m, characterText:"I accept gratitude. I accept admiration. But…", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"I cannot reciprocate something like infatuation. I am a goddess.", mcImage: "mc_sad",),
//         Speech(characterName: nar, characterText:"He blinks slowly at me, hurt in his eyes.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"But, why?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"I can’t return your feelings, Naoki.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"But, why? Because you are a goddess? What does that have to do with how I feel?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"I…", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"My job is everything I acharacterName: m, Naoki. If I value all things equally, if I am to do my job properly, I cannot break that one rule.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Your job is not all you are! You are capable of great things, things that do not contradict each other.", charImage: "naoki_frown",),
//         Speech(characterName: n, characterText:"I thought I meant more to you than being a means to an end. You…", charImage: "naoki_sad",),
//         Speech(characterName: nar, characterText:"He clamps his mouth shut and looks to his side at the shimmering waters of the lake.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I don’t know what to say. I didn’t expect things to go this way.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Of course, I love Naoki, but…", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"You always said you valued all beings. I see.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He stands slowly and buries his hands in his sleeves, the slight tremble of his arms the only giveaway of his true feelings.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"My heart sinks.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Naoki…?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I am heartbrokecharacterName: n, Goddess.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I stand to join him and, selfishly, hug him for a few moments before pulling away.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki bows low and his gorgeous hair nearly touches the ground where his leftovers—his efforts—lay scattered about and empty.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He doesn’t move.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He’s waiting for me to leave.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I swallow the lump in my throat and return a slight bow before doing Naoki his last favor of the night by leaving.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"…Goodnight, Naoki.", mcImage: "transparent",),
//         //jump to NaokiAct4BranchB

// ];

// NaokiAct4BranchA = [
//         // romantic ending, shrine becomes an open library and animals and humans co-exist, people pilgrimage from far and wide
//         // [First Kiss CG – eyes closed] (continuation of Act3BranchA) or bg clearing by the lake, sunset
//         Speech(characterName: nar, characterText:"I kiss him back, eyes closing as I accept Naoki’s feelings and…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"My own.", mcImage: "transparent",),
//         // end CG; bg clearing by the lake, sunset
//         Speech(characterName: n, characterText:"Uh!", charImage:"naoki_blush",),
//         Speech(characterName: m, characterText:"I’ve… never been in this situation before. I’m sorry I didn’t understand.", mcImage:"mc_blush",),
//         Speech(characterName: nar, characterText:"Naoki presses his forehead to mine and I can feel how hot he’s gotten.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I can’t say I’ve ever done such a thing either.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Please. Does this mean you feel the same way about me as I do you?", charImage: "naoki_sad",),
//         Speech(characterName: m, characterText:"I think you should tell me how you feel, first.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He places a gentle kiss on my forehead and chuckles as he moves away.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"When I was a ravecharacterName: n, I didn’t sleep for three days escaping poachers.", charImage: "naoki_sad",),
//         Speech(characterName: n, characterText:"So when I first looked like one, I was so… angry. Confused. As if I’d become the monsters I hated so much.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I was afraid I’d do the same thing to other animals just because of my appearance.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"But you changed everything for me.", charImage:"naoki_happy",),
//         Speech(characterName: n, characterText:"You gave me a second chance at life. I feel more like myself than I ever have before.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"‘A person is what they’ve etched into the world.’", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"So when you ask me how I feel about you…", charImage:"naoki_neutral",),
//         Speech(characterName: n, characterText:"I know that I love you.", charImage:"naoki_happy",),
//         Speech(characterName: m, characterText:"…I love you, too.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"And I love this shrine. And this mountain. And I want everyone to love it the way you do!", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I’ve never see Naoki so animated in my life. It does something to my chest to see him spread his wings as his dark eyes reflect orange and yellow.", charImage:"raven_naoki_happy",),
//         Speech(characterName: m, characterText:"And how do you suppose we do that?", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"With flushed cheeks, he hurries to stand and brings me up with him.", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: m, characterText:"Slow dowcharacterName: n, ha ha! Where are we going?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"To ring the Bonshō! To invite Ina in! To tell everyone how amazing you are!", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"N-Naoki! Look!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Yes?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"You’re flying!", mcImage:"mc_blush",),
//         Speech(characterName: nar, characterText:"His feet hover just barely over the ground as he flaps his wings.", charImage:"raven_naoki_neutral",),
//         Speech(characterName: nar, characterText:"The only thing keeping him low is…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I smile and let go of his hand, watching as he gains air.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"Well, what do you know.", charImage:"raven_naoki_blush",),
//         Speech(characterName: n, characterText:"I guess the poem was true.", charImage:"raven_naoki_happy",),
//         Speech(characterName: nar, characterText:"Naoki looks up to the sky, just now beginning to show stars, and I prepare to see how far he can go.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"But he doesn’t go anywhere.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki flies right back down to my side.", mcImage: "transparent",),
//         // bg outside shrine, day (library)
//         Speech(c, characterText:"Excuse me, I’m tired.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Then go sleep outside while it’s still warm. Don’t wake that litter of foxes, though.", charImage:"raven_naoki_happy",),
//         Speech(c, characterText:"Yes, thank you!", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki finishes putting away the latest addition to our ever-expanding library before stepping back to look at the giant row of shelves.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"We’ll need another bookcase soon.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"I think we’ll run out of room. The shrine itself needs to be expanded.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Yes, I suppose you’re right. There’s a lot of work to do.", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"We’ll have the help.", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"As if to emphasize his point, a raven pokes its head out from where its been hiding atop the tall bookcase to hand Naoki another book.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"It gives a low caw before disappearing back and Naoki sighs.", charImage:"raven_naoki_sad",),
//         Speech(characterName: n, characterText:"It’s almost time for your reading time to the children.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Don’t sigh, it’s only an hour! And you’ll be going to greet our latest pilgrims anyway, right?", mcImage: "mc_happy",),
//         Speech(characterName: m, characterText:"They really appreciate you, you know. The mountain’s never been safer or more respected.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I suppose it’s become quite fun to talk to all the humans.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Hey. MC.", charImage:"raven_naoki_happy",),
//         Speech(characterName: m, characterText:"Yes?", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki opens the book and uses it as a barrier to hide our faces from any visitors of the open library.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"H-huh?", mcImage:"mc_blush",),
//         Speech(characterName: n, characterText:"Ssh…", mcImage: "transparent",),
//         // [CG – hidden library bookshelf kiss]
//         Speech(characterName: nar, characterText:"He kisses my lips gingerly and lets it linger even as the laughter of human children and the pitter patter of running paws rings in the background.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Naoki…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"With a breathy chuckle he pulls away and snaps the book closed.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I’ll see you soon.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"See you soon.", mcImage: "mc_happy",),
//         Speech(characterName: nar, characterText:"It’s funny. I made Naoki my familiar because he happened to come across me, not out of any sort of prophecy or deeper meaning. But…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"This feels like fate.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"And I wonder what kind of fables the people will spin of us.", mcImage: "transparent",),

//         // romantic ending END
// ];

// NaokiAct4BranchB = [
//         // platonic Ending, Naoki runs the human library to be away from MC and sort their feelings/passion elsewhere
//         // bg mountain view, day
//         Speech(characterName: nar, characterText:"For what feels like the first instance in my lifetime, the seasons pass slowly.", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"While my duties are easier because of the help from Naoki, I see him less and less.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I’ve never been among the people this often and yet I am the loneliest I’ve ever been.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Are you going back down to the village again?", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"Yes. They want me to oversee the library renovations.", charImage:"naoki_happy",),
//         Speech(characterName: m, characterText:"It’s really coming along. Do you still have time to read?", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"Ha ha… I manage.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Not very convincing!", mcImage: "mc_happy",),
//         Speech(characterName: nar, characterText:"Naoki looks down the mountain path and readjusts the bag of books he brought with him to the shrine.", charImage:"naoki_neutral",),
//         Speech(characterName: m, characterText:"I’m heading in that direction. Shall I help you carry some of the books?", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"Hmm…", charImage: "naoki_sad",),
//         Speech(characterName: n, characterText:"No. I would feel more at ease if you enjoyed your walk.", charImage:"naoki_happy",),
//         Speech(characterName: nar, characterText:"I sigh but yield to his wishes. He doesn’t ask much of me these days, I suppose I can humor him.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Naoki, you work in the village library so often. Why there and not the shrine?", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki’s face slightly falls as he hums.", charImage: "naoki_sad",),
//         Speech(characterName: n, characterText:"I… like to be of use to you.", charImage:"naoki_neutral",),
//         Speech(characterName: m, characterText:"Yes. I appreciate it.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"But I found I am of better use when I am away from you.", charImage: "naoki_sad",),
//         Speech(characterName: n, characterText:"‘The only acceptable love is one that can be endured.’", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"W-what…?", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"…I found that my feelings are perhaps a hindrance to not only your duties, but mine.", mcImage:"mc_blush",),
//         Speech(characterName: n, characterText:"It’s easier this way. For me.", charImage:"naoki_happy",),
//         Speech(characterName: nar, characterText:"His smile is bittersweet, but it reaches his eyes. I have no choice but to believe him.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Alright…", mcImage: "mc_sad",),
//         Speech(characterName: nar, characterText:"Without my needing to pry, Naoki changes the subject and talks on about the library he’s running.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"How the humans understand the mountain more than ever now, how their children are getting involved, how they are ethically sourcing things…", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"He’s become so amazing right under my nose.", mcImage: "mc_happy",),
//         Speech(characterName: nar, characterText:"It’s funny. I made Naoki to be my familiar but he’s become so much more to the animals and people.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"But he’s always been so bright. It feels like fate.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"And I wonder what kind of fables the people will spin of him.", mcImage: "transparent",),

//         // platonic ending END
// ];
// }
