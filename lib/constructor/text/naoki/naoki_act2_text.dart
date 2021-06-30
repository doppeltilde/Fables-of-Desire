// Fables of Desire - Naoki Route
// Copyright (c) 2021 Destini Islands and The SmallDreams Authors.

import 'package:fablesofdesire/constructor/text/coreSpeech.dart';

/* 

  API REFERENCE: https://pub.dev/documentation/simple_rich_text/latest/simple_rich_text/SimpleRichText-class.html

  Formating

  Format Character       Format Effect          Example
  asterisk (*)      =    bold             =     "this is *bold*"
  slash (/)         =    italics          =     "this is /italicized/"
  underscore (_)    =    underline        =     "this is _underlined_"


  Coloring

  {color:INSERTCOLOR} =  "this makes the name {color:blue}bob blue"

  Color Map: https://pub.dev/documentation/simple_rich_text/latest/simple_rich_text/colorMap-constant.html
*/

/// Name documentation
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  // TODO: bgm Kanui
  String? getBGM() {
    return "kanui";
  }

  List<Speech> textBank = [
    // Character Name, Dialogue, Image
    // TODO: bg room, day
    // TODO: Naoki skeptical over why and how he's been given human form.

    Speech(
      characterName: m,
      characterText: "Naoki...? Good morning!",
      mcImage: "mc_happy",
      //sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "/Today I’ve decided to try to get closer to Naoki after the rough start./",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "/But as I enter his room, I see that he doesn’t even turn his face to greet me. His gaze peers beyond the windows./",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "/Early rays of sunlight brighten curious gray irises but I can see eyebags under them./",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki? Did you not sleep well?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Good morning.",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText: "/Silence. This won’t do./",
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
          "/I certainly don't know what I would think if I were suddenly in a different body./",
    ),
    Speech(
      characterName: nar,
      characterText: "/He turns to face me, his head tilting in wonder./",
    ),
    Speech(
      characterName: n,
      characterText: "Who...?",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Who am I now...?",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "My appearance. My thoughts. The sound of my voice. Why this?",
      mcImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "/I stand at the entrance of his room, considering the weight of his question./",
    ),
    Speech(
      characterName: nar,
      characterText: "What does it mean to be Naoki? A raven? Something more?",
      mcImage: "mc_sad",
    ),
    Speech(
        characterName: m,
        characterText: "Who /are/ you, huh...?",
        mcImage: "mc_neutral"),
    Speech(
      characterName: m,
      characterText: "You’re Naoki.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "But…",
      mcImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "You’re Naoki. What ‘Naoki’ is is entirely up to you. I can give you all the explanations you want about being my familiar, but beyond that…",
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
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "I suppose that gives me some freedom of interpretation.",
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "I will ponder it on my own then.",
      sideCharImage: "naoki_neutral",
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
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "You want to show me the mountain?",
      mcImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "But I /know/ the mountain.",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText: "I... well, I thought I did.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "I’d like to show you the mountain and the temple from /my/ point of view.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Your point of view… Alright.",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "/I extend my hand to him, but it takes Naoki a moment to understand what I want./",
    ),
    Speech(
      characterName: nar,
      characterText:
          "/The coolness of his hand settles in mine as I excitedly hurry to get to work./",
      mcImage: "mc_blush",
      sideCharImage: "naoki_happy",
    ),
    // TODO: bgm music fade
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  // TODO: bgm Red Leaf
  String? getBGM() {
    return "redleaf";
  }

  List<Speech> textBank = [
    // TODO: bg Outdoor pathway, day
    Speech(
      characterName: n,
      characterText:
          "Where are we going? Where is this? Why are the ceilings so high?",
      mcImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "W-what? Slow down, please!",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: nar,
      characterText:
          "/Naoki looks up to the overpass ceiling and uses his free hand to point at the beam./",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "Why is it so high? I wouldn’t be able to reach it even if I jumped. Am I… short?",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "Ha ha… No, Naoki. You are quite tall for a human, actually.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Hm… then why?",
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Ah… I suppose there would be no flying among humans.",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Ha ha… You’re so inquisitive, Naoki.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I’m sorry.",
      sideCharImage: "naoki_sad",
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
  nextQuestion() {
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  // TODO: bgm Edos journey
  String getBGM() {
    return "edosjourney";
  }

  List<Speech> textBank = [
    // TODO: bg Hot spring, day
    // 0
    Speech(
      characterName: m,
      characterText: "Here we are!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "W-what is this?",
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_blush",
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
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_happy",
    ),

    // TODO: bgm continuation from last track (Edos journey)
    // TODO: bg Outdoor pathway, day

    Speech(
      characterName: n,
      characterText: "Okay, I'm prepared.",
      sideCharImage: "naoki_blush",
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  // TODO: bgm Flowing season
  String? getBGM() {
    return "Flowing_season";
  }

  // TODO: bg pottery room, day
  String? getBG() {
    return "1710heian08_19201080";
  }

  List<Speech> textBank = [
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
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Thank you.",
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "That’s a relief.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Where are we now?",
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_happy",
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
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "I will not fail you again.",
      sideCharImage: "naoki_frown",
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
    // TODO: music fade
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  // TODO: bgm Japanese landscape
  String? getBGM() {
    return "Japaneselandscape";
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
          "But Naoki slows it down, unsure how humans can create stone or of his body down long stairs.",
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg mountain path and trees, day
    // TODO: bgm continuation from previous (Japanese landscape)
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
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "That’s right. Tell me what you see.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Hm…",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "Well. The first thing I notice is definitely the strange-colored stones here.",
      sideCharImage: "naoki_happy",
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
      sideCharImage: "naoki_happy",
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
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "I see now that it has always been you.",
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_happy",
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO bg mountain path and trees, sunset
    // TODO: bgm continuation from previous (Japanese landscape)
    Speech(
      characterName: m,
      characterText:
          "Alright Naoki, we’re done for today. Let’s go on to the next task.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Are you sure? Shouldn’t we do one more round?",
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_neutral",
    ),
    // TODO: bgm music fade
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  // TODO: bgm Edgeside
  String? getBGM() {
    return "edgeside";
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Do you really think so? It’s beautiful to me as it is.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Hm…",
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "O-oh do I?",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: n,
      characterText: "I can help you cook!",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "No, no, it’s alright. I’d rather you take this time to relax or do something you’d like.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "I’d /like/ to help you cook.",
      sideCharImage: "naoki_happy",
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
      sideCharImage: "naoki_neutral",
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO bg clearing by the lake, sunset
    // TODO: bgm continuation from previous (Edgeside)
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
      sideCharImage: "naoki_happy",
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
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: nar,
      characterText: "Gah! He noticed!",
      mcImage: "mc_blush",
    ),
    // TODO screen shake
    Speech(
      characterName: n,
      characterText: "Ah. Almost… Then, I returned to the shrine.",
      mcImage: "transparent",
    ),
    // TODO screen shake
    Speech(
      characterName: n,
      characterText: "Ah!",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "And what did you do in the shrine?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Oh… I looked through the various scribbles and drawings.",
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Sorry. What was that? Crooks?",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Ha ha… no, /books/. They’re full of information and stories. People write things down and then you can read them whenever you want.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText:
          "Books… for transferring information? Like talking without voices?",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Yes, that’s right.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "It sounds incredibly useful.",
      sideCharImage: "naoki_happy",
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
      sideCharImage: "naoki_blush",
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
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Mm, yes…",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "A little distracted, are we? At least he’s having fun, ha ha…",
      mcImage: "mc_happy",
    ),
    // TODO: bgm fade
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  // TODO: bgm Month Nori Yuki
  String? getBGM() {
    return "monthnoriyukiriver";
  }

  List<Speech> textBank = [
    // Naoki comes to also develop his own reasoning for serving as a deity of the mountain, for he finds himself inspired by MCs cause; equality. Little does he know at this point, this includes humans.
    // TODO: bg mountain path and trees, day
    Speech(
      characterName: nar,
      characterText:
          "A week passes comfortably, although something is… /off/ about Naoki this morning.",
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
      sideCharImage: "naoki_sad",
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
      characterText: "You care for all the animals in the mountain, it seems.",
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "That’s right.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Then…",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "I’ll ask again. If you needed a familiar, why did it have to be in this form? Do you think ravens are… inferior?",
      sideCharImage: "naoki_frown",
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
      sideCharImage: "naoki_sad",
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
          "There are things only humans can do that other animals cannot. But being my familiar is not a job fit for /any/ human.",
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
      sideCharImage: "naoki_happy",
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
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "I admit I didn’t think much of the other animals before you. I only sometimes feared the foxes or owls.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "I want to learn everything I can with this opportunity. To be the best version of myself that I can be.",
      sideCharImage: "naoki_happy",
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
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_neutral",
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
    // TODO: bgm Sakura full bloom
    Speech(
      characterName: n,
      characterText:
          "You know… the ravens have a game we play at almost every age.",
      sideCharImage: "naoki_happy",
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
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Oh! It’s a balancing game.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "It is. Are you ready?",
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Yes!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Then… begin.",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Oh…! Look, yours is wobbling.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "It sure is.",
      sideCharImage: "naoki_happy",
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
      characterText: "B-but you /tickled/ me!",
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
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "You’re not entirely human, you know. It’s entirely possible that you have parts of your raven form latent.",
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
      sideCharImage: "naoki_frown",
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
      sideCharImage: "raven_naoki_blush",
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
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "How does it feel?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Like… I tore your clothing. I’m sorry.",
      sideCharImage: "raven_naoki_sad",
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
      sideCharImage: "raven_naoki_neutral",
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
      sideCharImage: "raven_naoki_sad",
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
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Let us continue.",
      sideCharImage: "raven_naoki_neutral",
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
    // bgm music fade
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  //TODO: bgm Yogetsu
  String? getBGM() {
    return "yogetsu";
  }

  List<Speech> textBank = [
    //Naoki is uneasy but finds footing in other areas - literature in the shrine, local history and ancient legend.
    //TODO: bg rock gardecharacterName: n, night
    Speech(
      characterName: n,
      characterText: "I’ll do one last sweep, MC.",
      sideCharImage: "raven_naoki_neutral",
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
      sideCharImage: "raven_naoki_sad",
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
      sideCharImage: "raven_naoki_neutral",
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
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "But…",
      sideCharImage: "raven_naoki_neutral",
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
      sideCharImage: "raven_naoki_sad",
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
      characterText: "If they’d recognize /me/.",
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
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "You seem to do well with remembering things and gathering information. I’d like it if you continued to do that with purpose.",
      sideCharImage: "raven_naoki_neutral",
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
      sideCharImage: "raven_naoki_happy",
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
      sideCharImage: "raven_naoki_happy",
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // MC offers to teach Naoki things like basic reading, writing, and so forth. MC works a little too much and Naoki thinks it’s strange there’s so much human literature in MCs collection.
    //TODO: bg outdoor pathway CORNER, day
    //TODO: bgm continuation from previous (Yogetsu)
    Speech(
      characterName: m,
      characterText: "Good morning, Naoki!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Good morning.",
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "We do not need to clean the library yet. I thought we were focusing on the walkways?",
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_sad",
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  // TODO: bg outside shrine, day
  String? bgImage() {
    return "1710heian20_19201080";
  }

  List<Speech> textBank = [
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
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "As long as you have the time of course.",
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Then I will graciously accept the offer.",
      mcImage: "transparent",
    ),
    //TODO: bgm fade
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  String? bgImage() {
    return "1710heian15_n_19201080";
  }

  List<Speech> textBank = [
    //TODO: bg room, night, no Naoki
    Speech(
      characterName: nar,
      characterText: "/Thump, thump, thump!/",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I startle to sit up in my bed as footsteps rush to my door.",
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
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "Gah! Y-yes? Naoki, it’s late!",
      mcImage: "transparent",
      //TODO: bgm Summer Cloud
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
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "I-I suppose. But, Naoki… you should sleep.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Mm… Yes. I apologize for the intrusion.",
      sideCharImage: "naoki_sad",
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
          "Not really… I suppose I like bright, natural colors. Greens and yellows and blues.",
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Goodnight.",
      sideCharImage: "naoki_neutral",
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
    //TODO: bgm fade
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  String bgImage() {
    return "snowmori_022_19201440";
  }

  List<Speech> textBank = [
    //Naoki finds his first trap - a dying fox within it and he’s shaken about poachers/humans
    //TODO: bg bamboo forest, day
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "It’s been a month since I began.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He’s going to think I don’t trust him, but I’m honestly just concerned…",
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
      sideCharImage: "naoki_frown",
      //TODO: bgm DIsordered Hair
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
      sideCharImage: "naoki_sad",
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
      characterText: "Wait? Wait /why/? She’s dying!",
      sideCharImage: "naoki_frown",
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
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_frown",
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "If you can pet her, that’d help a lot.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Um…",
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "On her head.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Understood.",
      sideCharImage: "naoki_frown",
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
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_frown",
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
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_frown",
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "What should we do now with the fox?",
      sideCharImage: "naoki_neutral",
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
    //TODO: bgm fade
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    //TODO: bg room, day
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
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText: "Per… haps…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "There. Perfect.",
      sideCharImage: "naoki_happy",
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

    //TODO: bg pond, day
    //TODO: bgm Edgeside
    Speech(
      characterName: m,
      characterText: "Here it is.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Are we retrieving more water?",
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "I don’t mind if you want to, Naoki. You look drained. This place has restorative properties.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Then I will rephrase. I do not /want/ to rest.",
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_happy",
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
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_frown",
    ),
    //TODO: bgm Thousand Year Old Forest
    Speech(
      characterName: m,
      characterText:
          "They’re not the sole reason, but they are the biggest and most immediate one.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "These humans come to the mountain for the sole purpose of thievery and /torture/ and don’t care who gets hurt in the process.",
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
      characterText: "I can’t say for certain, but it’s possible.",
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
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_neutral",
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
      sideCharImage: "naoki_sad",
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
    //TODO: bgm music stop/fade
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    //TODO: bg pottery room, day
    //TODO: bgm Yogetsu
    Speech(
      characterName: m,
      characterText: "Naoki, it’s going to burn…",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Huh? Ah! Sorry!",
      sideCharImage: "raven_naoki_sad",
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
      sideCharImage: "raven_naoki_sad",
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
      sideCharImage: "raven_naoki_sad",
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
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "This is /my/ room, Naoki.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Oh.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Oh!",
      sideCharImage: "raven_naoki_blush",
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
      sideCharImage: "raven_naoki_neutral",
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
      sideCharImage: "raven_naoki_frown",
    ),
    // todo screen shake
    Speech(
      characterName: n,
      characterText: "N-no, I mean…",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "I can do it. I want to go.",
      sideCharImage: "raven_naoki_neutral",
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
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki bows when he exits, wings half-extended as he does.",
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // Naoki’s first visit to the tribute house, MC sees his fear and anger
    // todo bg temple entrance, day
    //TODO: bgm continued from before (Yogetsu)
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
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_happy",
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
      sideCharImage: "naoki_neutral",
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
    //TODO: bgm stops/fades
    Speech(
      characterName: nar,
      characterText:
          "As we approach the sandō steps, the crowd greets us with loud cheers and some jeers.",
      sideCharImage: "naoki_frown",
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
    //TODO: bgm Disordered Hair
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
      sideCharImage: "naoki_neutral",
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
      characterName: man,
      characterText: "Blessings to you, Goddess!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: man,
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
      sideCharImage: "naoki_frown",
    ),
    // screen shake
    Speech(
      characterName: man,
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "I-I’m so sorry, sir. Are you okay? Let me help you up…",
      mcImage: "mc_sad",
    ),
    // screen shake
    Speech(
      characterName: man,
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
      characterName: man,
      characterText: "Okay…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: man,
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
    //TODO: bgm music fades
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

  String? getSideCharImage() {
    return textBank[textNumber].sideCharImage;
  }

  void reset() {
    textNumber = 0;
  }

  //TODO: bgm  Month Nori Yuki River
  String? getBGM() {
    return "monthnoriyukiriver";
  }

  List<Speech> textBank = [
    // todo: bg mountain view, sunset
    Speech(
      characterName: nar,
      characterText:
          "/As we walk back to the central shrine and far enough away from prying ears, I finally stop and put down some of the tributes./",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki places his down as well, not looking me in the eye as if he knows what I’ll say.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki. What was that?",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "You can never, /ever/ do something like that again. You /attacked/ a human!",
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
      sideCharImage: "naoki_frown",
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
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText:
          "They come to pay you tribute and request things while directly disobeying you.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "/Disrespecting/ you!",
      sideCharImage: "naoki_frown",
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
      sideCharImage: "naoki_sad",
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
      sideCharImage: "naoki_frown",
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "You /love/ humans.",
    ),
    Speech(
      characterName: n,
      characterText:
          "You keep exclusively human texts in your library. You do not speak to most of the fauna but hold special ceremonies for the same beings who have their own term for being specialized killers.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "You ask me to hide my /wings/!",
      sideCharImage: "naoki_frown",
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
      sideCharImage: "naoki_sad",
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
          "My life is not easy. /Life/ is not easy. There is no pure good or pure bad.",
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
      sideCharImage: "naoki_frown",
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
      sideCharImage: "naoki_sad",
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
    ////TODO: bgm music fades
    Speech(
      characterName: n,
      characterText:
          "Who do you love more? The animals of the mountain or the humans?",
      sideCharImage: "naoki_frown",
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
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He bows low to me, as if that will hide the truth in his eyes—fear.",
      mcImage: "transparent",
    ),

    // todo: choice A
    // todo: jump to NaokiAct3BranchA
    Speech(
      characterName: m,
      characterText: "The animals of the mountain.",
      mcImage: "mc_happy",
    ),

    // todo: choice B
    // todo: jump to NaokiAct3BranchB
    Speech(
      characterName: m,
      characterText: "I can’t answer that, Naoki.",
      mcImage: "mc_happy",
    ),
  ];
}

/* 

  MAP:

  Choice A:

  NaokiAct2A -> NaokiAct3BranchA ->


*/
