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

class NaokiAct3BranchA1 {
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

  String? getBGM() {
    return "";
  }

  String? getBgImage() {
    return "mininature_003_y_19201440";
  }

  List<Speech> textBank = [
    // Naoki understands but does not accept MC's stance on humans and animals.
    // todo: bg mountain view, sunset (continuation of choice A)
    Speech(
      characterName: n,
      characterText: "…Okay.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "If you say so, I believe you.",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "I’m sorry for my behavior.",
      sideCharImage: "naoki_blush",
    ),
    Speech(
      characterName: m,
      characterText: "Do you feel better now?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Yes. But…",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "It’s still difficult for me to accept your feelings on humans while you claim to love animals.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I cannot trust them like you do.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "I don’t expect you to feel the exact same way I do, Naoki.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: m,
      characterText: "I expect you to simply want the best for us.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "…I can do that.",
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText:
          "I think, with time, you can see humans for the kind beings they can be.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "I think we are getting ahead of ourselves.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Ha ha… Perhaps.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "Humans seem to have more unkindness to them than can be easily seen. They seem to do whatever they want just because they want to.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "They fall prey to their own instincts more than hatchlings.",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "I think you’re biased. You will see many more humans throughout your life than just today. You will see.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "That doesn’t sound like a good thing to me.",
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Will you try to keep an open mind about it, at least?",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Hm…",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Have you ever been… hunted?",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "No… I can’t say that I have.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "Then you might understand why it is hard for me, who was a crow, to see hunted animals.",
      mcImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Why I might relate to them more than a human.",
      mcImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Yes… I can see that. I’m sorry, Naoki.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "…But I will try my best, as you command.",
      sideCharImage: "naoki_happy",
    ),
  ];
}

class NaokiAct3BranchA2 {
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

  String? getBGM() {
    return "";
  }

  String? getBgImage() {
    return "1710heian22_19201080";
  }

  List<Speech> textBank = [
    //As Naoki and MC continue with their duties, Naoki’s anger turns into more of a fearfulness, but he comes to appreciate (gradually) her sense of equality in regards to all beings
    // bg outdoor pathway CORNER, day, only MC

    Speech(
      characterName: nar,
      characterText:
          "It was scary having an argument with Naoki, but after I confirmed I do love the mountain animals, he seems to be trying to understand humans.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "The work never stops, but now more can be accomplished than ever before.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "The aches and pains I’ve been accustomed to now come and go. I don’t think I’ve ever slept this much in my life.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "MC!",
      mcImage: "mc_neutral",
    ),
    // Raven Naoki appear
    Speech(
      characterName: nar,
      characterText:
          "Naoki rushes to me, breathless, a broom still in hand that will snap in half if he clutches it any tighter.",
      sideCharImage: "raven_naoki_blush",
    ),
    Speech(
      characterName: m,
      characterText: "Y-yes? What’s wrong?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "T-there’s a… a human! There’s a human in the temple!",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "Oh! Let’s go welcome them!",
      mcImage: "mc_happy",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "What? No! It’s an /intruder/!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Humans are not forbidden to come to the temple, Naoki.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Well, they should be!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: wo,
      characterText: "Excuse me, MC?",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "You will not address her so casually!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Oh! It’s you!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: m,
      characterText:
          "Naoki. This woman is from the family that has lived closest to this temple for generations.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Ina. It’s so nice to see you again. Have you come to repurpose our old materials?",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: i,
      characterText:
          "I have! It’s also about time to replace your utensils, correct?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "That would be lovely.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki, please introduce yourself.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "If I didn’t know hicharacterName: m, it’d look like he was ready to completely ignore me.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "But Naoki sighs and gives a curt bow to Ina. It’s not an apology, but it’s something.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…Hello.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "You’ve gotten so big. Even your hair is so long now.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText: "I pat her head before turning to Naoki again.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "It’s as good a time as ever.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Hey, Ina? If you have the time, would you mind visiting once a week or so?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "W-what?",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: i,
      characterText: "Sure. What would you like me to do?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "My familiar is learning to write and you have such pretty handwriting. I think you’d be a much better teacher than I.",
      mcImage: "mc_happy",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "I don’t need it!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Yes, you really, /really/ do.",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: n,
      characterText: "Erk…",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: i,
      characterText: "I can make time for that.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Thank you. I’d appreciate it.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Ina takes off to pack up our old utensils and materials and Naoki waits until she’s out of sight before furiously flapping his wings.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Why?",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "You haven’t had much personal exposure. This will be a good opportunity for you to learn about kind humans.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "…I already know that.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "What?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "The way you speak and interact with humans is the same as with the other animals.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "I do not need to be locked in a room with a human to see that ‘Ina’ is nice.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "…",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: n,
      characterText: "What.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "I’m just so happy to hear that, Naoki…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "…I’m returning to work! I still do not see your point of view!",
      sideCharImage: "raven_naoki_blush",
    ),
    Speech(
      characterName: m,
      characterText: "Have fun!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Hmph.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki’s wings stretch fully as he stalks away in the opposite direction of Ina.",
      mcImage: "transparent",
    ),
    // Naoki off screen
    Speech(
      characterName: m,
      characterText: "You’re pretty childish sometimes, Naoki!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "You missed a spot!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Ha ha…",
      mcImage: "transparent",
    ),
  ];
}

class NaokiAct3BranchA3 {
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

  String? getBGM() {
    return "";
  }

  String? getBgImage() {
    return "1710heian15_n_19201080";
  }

  List<Speech> textBank = [
    //As MC and Naoki take a walk and Naoki tells of the horror he’s read of humans in books
    // bg room, night, only MC
    Speech(
      characterName: nar,
      characterText:
          "As promised, Ina comes to tutor Naoki the following week.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "But I don’t know how it went. When she left, Naoki simply returned to work.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "It’s one of my first times going to Naoki’s room since he first became my familiar.",
      mcImage: "mc_neutral",
    ),
    // screen shake
    Speech(
      characterName: m,
      characterText: "Hello? Naoki?",
      mcImage: "transparent",
    ),
    // Raven Naoki appear
    Speech(
      characterName: n,
      characterText: "Oh. Hello.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "I’m just checking up on you.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Yes… Please, come in.",
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Sure. Thank you.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Oh… what’s all this, Naoki?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Huh? A-ah…",
      sideCharImage: "raven_naoki_blush",
    ),
    Speech(
      characterName: n,
      characterText:
          "I seem to have started a collection of sorts. I didn’t realize I had so much.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki’s room absolutely /glitters/ with shiny objects neatly placed about.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "A few poetry books from the library sit next to his bedding, while the other half of the room is covered with sparkling rocks, glass, and metals that are organized by size and color.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Have you been collecting these the whole time?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "‘A love that frees your heart is one that has been allowed to sprout wings.’",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Ahem…",
      sideCharImage: "raven_naoki_blush",
    ),
    Speech(
      characterName: n,
      characterText: "Yes, since we began our mountain rounds…",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "I’ll clean it.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "No! No, this is great!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: m,
      characterText: "If you like it, please keep it.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "It’s okay?",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Of course it is. It makes you happy, right?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Never be afraid to do what makes you happy as long as it doesn’t hurt anyone.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Alright.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Then…",
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "I would like to go on a walk with you.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Huh? Right now?",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: n,
      characterText: "Yes. It would make me happy.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Oh. W-well, I suppose I am done working for today.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Ina mentioned a festival.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Would you like to see a human festival, Naoki?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…Not in particular. But I suppose we can make it short.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Ha ha, yes. Short.",
      mcImage: "mc_happy",
    ),
  ];
}

class NaokiAct3BranchA4 {
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

  String? getBGM() {
    return "";
  }

  String? getBgImage() {
    return "SummerFestivalPacked";
  }

  List<Speech> textBank = [
    // bg summer festival packed
    Speech(
      characterName: nar,
      characterText:
          "We find a quiet spot right outside the local village, close enough to hear and see the festivities without being spotted.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "It’s absolutely bustling despite it being so late. People chat and walk among food stalls without a care in the world.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Away from the warmth of fire and bodies, Naoki’s wings serve as a shield from the wind, stretched around us both.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "What do you think, Naoki?",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "It’s loud.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Ha ha… yes, I suppose it is.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "But what have you learned recently on humans?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "The more I read about thecharacterName: m, the worse they make their case.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Why’s that?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "They document their own atrocities. It’s hard to believe good things about them.",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText:
          "Entire communities destroyed over things like thievery and prostitution. Scandals and murder about.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Surely you read something other than that?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "If humans have much kindness to thecharacterName: m, it is not in their history texts.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "…Look there, Naoki.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "His gaze follows my finger that points to one of the food stalls and the performance artist next to it.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "The artist puts on a show to attract people to buy food from the stall. He doesn’t do it for profit, but out of kindness.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "And that family there is learning a dance together.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "And that couple there are attempting to hide while they kiss.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Why would they do that?",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Well, I suppose it must be embarrassing for them.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "I mean why do humans kiss at all? I see it often in the texts but there’s no formal explanation. Is it a type of mating call?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Ha ha…",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "Sorry, I don’t mean to laugh.",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: m,
      characterText:
          "It’s not always a mating call. Sometimes it is just a form of affection.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "ThecharacterName: n, should I be kissing you?",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "N-no! I-it’s complicated.",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: n,
      characterText: "Hm…",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "If you’re trying to get me to sympathize with the humans, it won’t work.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Humans are anathema to the mountain and all of nature.",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "…You’re using big words and big ideas with a small mind.",
      mcImage: "mc_frown",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText:
          "How big must my mind be to forgive humans who hunt animals?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "You are being biased against them and not looking at it logically.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Should I get closer to a trap then?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Humans are not so different from the rest of the animals!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "…You believing that is the same as approving of their methods, of their killing.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Perhaps worse if you are a god.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "Humans are prone to corruption. It’s in their /blood/. No amount of shiny festival lights will cover up their crimes! They’ll only keep going and going and—",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "No!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I shake my head as I feel myself reaching a boiling point that I haven’t before.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "The only corruption I see right now is my familiar, so blinded by his fear and hatred to live up to the cause of equality.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "I beg you to ponder why you feel this way. To take the time to find out how humans are different from one another.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText: "For the good of the mountain.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      mcImage: "transparent",
    ),
  ];
}

class NaokiAct3BranchA5 {
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

  String? getBGM() {
    return "";
  }

  String? getBgImage() {
    return "1710heian07_19201080";
  }

  List<Speech> textBank = [
    //During a night of chess, Naoki shares his reflections and compliments MC
    //bg clearing by the lake, day
    Speech(
      characterName: nar,
      characterText: "To my surprise, Naoki invited me to play chess today.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Apparently, Ina taught him and they play every time she comes.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Which I don’t understand, considering his views on humans…",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "The next tribute is soon.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "Oh! Yes, it is. We’ll have to take a trip and clean the temple.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Ever diligent.",
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Is there something on your mind?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Hm…",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "I think… you’re incredible for how you manage to fit all the complexities of humans and animals like.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "Huh…?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Checkmate.",
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Gah! Were you trying to distract me?",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: n,
      characterText: "Ha ha…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I mean my words with no ulterior motives.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "…You’re hot and cold, Naoki.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Hm?",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "You tell me you support my cause. You back out. You tell me I’m incredible for not hating humans, then tell me you hate humans.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "It’s hard to believe you.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "…I know. You are a saint for putting up with me.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "I only wish you could see the world as I do. The only difference between us is my patience.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Patience…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Yes. Patience.",
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki picks up my king piece and brings it close to his face.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "I never know what he’s thinking.",
      mcImage: "transparent",
    ),
  ];
}

class NaokiAct3BranchA6 {
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

  String? getBGM() {
    return "";
  }

  List<Speech> textBank = [
    //MC lets Naoki meet a human child and he changes his opinion on humans
    //todo: bg room, day
    Speech(
      characterName: nar,
      characterText:
          "For the first time in what feels like years, I wake up from a dream.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I can’t remember it exactly. But the feeling of small hands in mine linger.",
      mcImage: "mc_happy",
    ),
    //todo: bg Hot spring, day
    Speech(
      characterName: m,
      characterText: "Naoki!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Ah!",
      sideCharImage: "raven_naoki_blush",
    ),
    Speech(
      characterName: n,
      characterText: "Y-yes?",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "When you’re done with your bath, please meet me at the entrance. We’re going to the shrine today.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "The… shrine? With the humans?",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Correct.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…Yes, MC.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "It doesn’t escape my notice how Naoki sinks further into the hot water as if he wants to escape under the bubbles.",
      mcImage: "transparent",
    ),
    //todo: bg temple entrance, day
    Speech(
      characterName: m,
      characterText: "Here we are.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "So we are.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I spot my target easily. I only need to shoot the child an encouraging smile before he comes barreling over and away from his parents.",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "A-ah!",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "Hello there. How are you today, young one?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "Hiii!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "This is my friend, Naoki.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "What do you think you’re doing?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Say hello, Naoki. Just talk.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "U-uh… hello?",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: c,
      characterText: "You talk funny.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Excuse me?",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: c,
      characterText: "Your hair is so long.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "What of it?",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "O-ow!",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Ha ha…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "I’m sorry. Did that hurt? Please don’t cry.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Of course I’m not going to /cry/.",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: c,
      characterText: "Really?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Yes!",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: c,
      characterText: "I think I’d cry if I looked like a girl. Are you a girl?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "What is the difference!",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: c,
      characterText: "I’m sorry, miss. I won’t touch your pretty hair anymore.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "P-pretty?",
      sideCharImage: "naoki_blush",
    ),
    Speech(
      characterName: m,
      characterText: "Well, you /do/ have pretty hair, Naoki…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He clicks his tongue and gently pushes the child’s hand away from his hair.",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText: "You are a ridiculous human!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "Aren’t you a hucharacterName: n, too?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I… I’m different.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "He steps back and unfurls his wings with a heavy sigh.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "See?",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: c,
      characterText: "Oooh! You have wings! That’s so cool!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Cool?",
      sideCharImage: "raven_naoki_blush",
    ),
    Speech(
      characterName: c,
      characterText: "I want wings too! How did you do that!",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "Don’t tug on them!",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: c,
      characterText: "Miss, can you fly? What kind of wings are they?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I don’t know. I’m a raven.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: c,
      characterText: "Is that the black one?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Yes, it is.",
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: c,
      characterText: "I’ve never seen a raven up close.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "That’s because you’re so small and ravens fly up high.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "I’m not small!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "Ha ha… Yes, you are. But that means you can see things ravens can’t, right? You’re closer to the ground.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText:
          "Hmmm… I guess… But I wanna fly! I’d fly to the top of the mountain!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "It’s far too cold up there. Not worth it at all. You’d freeze.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "But I want to go! I don’t care!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "You don’t care about freezing? You don’t mind being an icicle?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "Wait… no, I don’t want that!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Are you sure? I heard icicles are a tasty treat.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "Nooooo!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Ha ha ha ha…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "There are many animals on the mountain that can fly you know. And even the ones who can’t have other fun things they can do.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "Really?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "Of course. You should appreciate what you have and learn about all the animals.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "But I don’t know anything…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Then seek out information. Ask questions.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "Okay… what do ravens eat? Do they like candy?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "They eat all sorts of things. Meat and eggs, berries and other plants. I imagine they might candy as well.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "Ohhh so they’re like me! I eat those too!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I… suppose you do.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "It’s time to go!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "Oh! Coming!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "I’m sorry, my mom and dad are waiting for me, Miss.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I don’t need an apology, don’t be silly.",
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: c,
      characterText: "Okay! Bye!",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "?!",
      sideCharImage: "raven_naoki_blush",
    ),
    Speech(
      characterName: nar,
      characterText:
          "The child hugs Naoki before running back off to join his parents, mischievously grinning as he spins a feather between his fingers.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Sigh…",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "You had fun.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "H-huh? I wouldn’t say that…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "But I understand why you brought me here now.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "That was a human child. They didn’t know… anything. They were just as ridiculous as a cub.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "If it’s not protected, it could just as easily fall prey to something.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "That’s right, Naoki…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki exhales and watches as the child disappears out of view.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "And it will grow up hunting like all carnivorous animals. For itself. For its parents.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "It doesn’t know what it’s like to be a raven any more than a raven knows how to be a human.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "It is just a child. It is not… evil. Or good.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Thank you, MC. I think I understand now.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Do you really?",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "As much as I can at the moment.",
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Then I’m happy.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Well, that’s always a good thing.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Is it now?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki smiles in my direction for a moment before pacing the shrine on his own, gaze turned toward the clear sky.",
      mcImage: "transparent",
    ),
  ];
}

class NaokiAct3BranchA7 {
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

  String? getBGM() {
    return "";
  }

  String? getBgImage() {
    return "1710heian09_y_19201080";
  }

  List<Speech> textBank = [
    // Naoki prepares MC a meal and Naoki confesses (misunderstood) romantic feelings
    //bg clearing by the lake, sunset
    Speech(
      characterName: m,
      characterText: "Oh! There you are!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Ina told me to find you here. What’s going on?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I’m worn from today’s duties, but I still manage to keep the weariness from my voice as I hurry to Naoki’s side.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "There you are.",
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "What’s all this?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "It’s a silly question as I approach. It’s clearly an elaborate dinner set up for us near the temple lake. The delicious smell of mint and crispy face makes its way to my nostrils.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki bows and waits for me to take a seat, which I do, albeit confused.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "What’s the occasiocharacterName: n, Naoki?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He’s cooked a few times now, but never to this extent. It’s by all means a feast, far too much for two people.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "I wanted to thank you for your perseverance and kindness.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Y-you can start by sitting! Please stop bowing!",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He takes a seat, still polite as he pours me tea in elaborate, traditional fashion.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Did… Ina teach you this as well?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "No. This was all on my own. From my own research.",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "That’s amazing, Naoki…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "We’ve been together quite some time now, have we?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Yes. We have.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "ThecharacterName: n, please enjoy.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "…I will. Thank you.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki eats only a little, instead insisting on explaining each dish and cutting my own.",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "It’s a bit too much but it is not my place to refuse gifts.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "It reminds me of when Naoki first became my familiar, awkward and stumbling and asking me personal questions I’d never considered before.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "I can’t say I have a favorite type of dress cut. Whatever kimono is most comfortable was always my go-to choice.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "I don’t think that’s true. You tend to avoid wearing darker colors.",
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "What, really? I never noticed.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "It’s true! But I think these colors suit your personality.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "And what’s that?",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Simple-minded and affable.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Hey!",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: n,
      characterText: "Ha ha ha… I’m sorry. I’m just kidding.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "I’m not sure you are!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He turns his head to hide his smile but he’s doing a terrible job.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Gosh. I’m really full…",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Let’s try to save the rest for tomorrow.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "No. Wait.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki scoots closer to me, still kneeling and folding his hands into his sleeves.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "When I first became your familiar, I was confused in many ways.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "But I’ve read things recently. Understood things recently.",
      sideCharImage: "naoki_blush",
    ),
    Speech(
      characterName: m,
      characterText: "I know you have.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "No. It’s…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "You are beautiful. A deity to proudly serve.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Thank you, Naoki.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "No. No, it’s more than that. Even if you weren’t a deity. Even if you did not have a shrine.",
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "I would serve at your side.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "Just this once, I let myself get a bit carried away.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I happily wrap my arms around him in a hug, squeezing him tight against me.",
      sideCharImage: "naoki_blush",
    ),
    // screen shake
    Speech(
      characterName: m,
      characterText:
          "Thank you. I don’t know what to say. You’ve changed my life as well. You’re dear to me.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "N-no, you don’t understand…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "What don’t I understand about your sincere devotiocharacterName: n, Naoki?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "You’ve made me the happiest I’ve felt in /years/.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I pull away enough to look him in the eye, squeezing his shoulders.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "I won’t forget tonight. But we should sleep, don’t you think?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "MC!",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText: "He grabs both my hands, leaning close.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Y-yes?",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "It’s not devotion! It has nothing to do with that!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Then what? Just tell me, Naoki, whatever it is.",
      mcImage: "transparent",
    ),
    // [First Kiss CG – eyes open]
    Speech(
      characterName: nar,
      characterText:
          "He hesitates for a moment before loosening his grip on me.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "Naoki… kisses me.",
      mcImage: "transparent",
    ),
    Speech(
        characterName: nar,
        characterText:
            "He finishes leaning in and /kisses/ me, lips cool but soft against my own like a sunset prayer."),
    Speech(
      characterName: nar,
      characterText:
          "All the confusion and skepticischaracterName: m, all the quiet moments of morning walks, and every decision I’ve made has led him here.",
      mcImage: "transparent",
    ),
    // choice A
    Speech(
      characterName: nar,
      characterText: "And I’m okay with that.",
      mcImage: "transparent",
    ),
    //jump to NaokiAct4BranchA
    Speech(
      characterName: nar,
      characterText: "But he is my familiar.",
      mcImage: "transparent",
    ),
    // choice B
    //jump to NaokiAct4BranchA_B
  ];
}

class NaokiAct3BranchB1 {
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

  String? getBGM() {
    return "";
  }

  String? getBgImage() {
    return "mininature_003_y_19201440";
  }

  List<Speech> textBank = [
    // NaokiAct3BranchB = [
    // bg mountain view, sunset (continuation of Act 2 choice B)
    // Naoki distances himself from MC and only stays in the shrine library

    Speech(
      characterName: n,
      characterText: "You can’t even pretend to care.",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText: "You… you can’t even /lie/ for me.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "My equality extends to humans, Naoki.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "…That’s what you keep calling it.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "‘Lies are heavy upon the ego.’",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "…I’m returning to the shrine.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "We can talk about this in the morning, okay?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      mcImage: "transparent",
    ),
    // bg Naoki sprite leave
    Speech(
      characterName: nar,
      characterText:
          "He doesn’t respond or wait for me, hurrying back toward the shrine on his own.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki…",
      mcImage: "transparent",
    ),
  ];
}

class NaokiAct3BranchB2 {
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

  String? getBGM() {
    return "";
  }

  String? getBgImage() {
    return "1710heian09_y_19201080";
  }

  List<Speech> textBank = [
    // //bg mountain path and trees, day, only MC
    Speech(
      characterName: nar,
      characterText:
          "Naoki no longer joins me on our morning mountain surveys. He leaves before breakfast. Before /me/.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I eventually figure out his routine. He continues to help the mountain fauna on his own before locking himself in the library.",
      mcImage: "transparent",
    ),
    // bg Outdoor pathway, sunset
    Speech(
      characterName: m,
      characterText: "Naoki!",
      mcImage: "mc_blush",
    ),
    Speech(
      characterName: m,
      characterText: "Good… afternoon.",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He’s getting thinner because of how many meals he skips to be away from me.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…Excuse me.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "A-are you going to the library again?",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText:
          "I have to do /something/ to help the animals since I am trapped in this body.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Um. Y-you know, I have someone who can help teach you writing. It would help you.",
      mcImage: "mc_neutral",
    ),
    Speech(
        characterName: n,
        characterText: "I don’t need assistance from a /human/."),
    // bg Naoki sprite leave
    Speech(
      characterName: m,
      characterText: "Sigh…",
      mcImage: "mc_sad",
    ),
    // bg outdoor pathway CORNER, day, only MC
    Speech(
      characterName: nar,
      characterText: "Things change for the worse in the days to come.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: wo,
      characterText: "Ahhhhh!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "After hearing the scream of a wocharacterName: n, I take off towards where it’s coming from.",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: m,
      characterText: "Coming!",
      mcImage: "mc_frown",
    ),
    // bg outside shrine, day, Raven Naoki also appear
    Speech(
      characterName: nar,
      characterText:
          "Naoki corners a woman in the library, wings spread threateningly.",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki! Stop!",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: n,
      characterText: "We have an intruder!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "I hurry to his side and push him away.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "It’s just Ina! A friend!",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Who?",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "This is Ina, she’s from the family that has lived closest to this temple for generations.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Not that it matters who, because humans are not forbidden to come to the temple, Naoki.",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: m,
      characterText: "I’m sorry about that. Are you alright?",
      mcImage: "mc_sad",
    ),
    // screen shake
    Speech(
      characterName: nar,
      characterText: "I help her to her feet and brush her off.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: i,
      characterText: "I’m okay, I was just a little scared.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "This is Naoki, my familiar. He’s… a little wary of humans.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Naoki. Please introduce yourself.",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki grimaces but gives a curt bow to Ina. It’s not an apology, but it’s something.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…Hello.",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "Ahem… have you come to repurpose our old materials again?",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: i,
      characterText:
          "I have! It’s also about time to replace your utensils, correct?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "That would be lovely.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Gosh, you’ve gotten so big. Even your hair is so long now!",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText: "I pat her head before turning to Naoki again.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I’d ask Ina to help tutor Naoki when she has time, but Naoki looks like he’d rather fall upon a trap than even look at her.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He grabs a book and turns to rush away, but I call for him.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Wait!",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: m,
      characterText: "At least give a polite goodbye, Naoki.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He pauses on the way out the door, wings twitching as he slowly faces us both.",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText:
          "…I thought this unfamiliar human came to /kill/ one of us. You rush to their side and do not ask me if /I’m/ okay.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "I have nothing to say to someone who cares so much for humans over their own familiar.",
      sideCharImage: "raven_naoki_frown",
    ),
    // bg Naoki sprite leave
    Speech(
      characterName: nar,
      characterText:
          "He’s that scared of humans hunting him…? What happened while Naoki was a raven…?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: i,
      characterText: "Is he okay…?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "…I don’t know. He needs space.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I see that I have perhaps been more insensitive than I thought.",
      mcImage: "transparent",
    ),
    // Naoki gets angry and calls MC hypocritical and asks to be turned back into a ravecharacterName: n, MC confronts Naoki’s fear of humans
    // bg outside shrine, sunset
    Speech(
      characterName: nar,
      characterText:
          "It’s weeks before Naoki initiates a conversation with me. I rush to meet him in the library where he called for me.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He doesn’t look up when I enter, flipping slowly through a book with paper sprawled around him.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He’s clearly been practicing and learning writing all on his own.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "Things I wish he’d let anyone help him with.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Hello, Naoki…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "…I only wished to ask why you insist on being so hypocritical. Helping animals. Helping humans. Convincing yourself you are doing the right thing.",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "…",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: m,
      characterText: "Goodnight, Naoki. You clearly need more rest.",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: nar,
      characterText:
          "Naoki nearly throws down the book as he stands to meet me head on.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Everything I read just makes it worse and worse!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "Entire communities destroyed over things like thievery and prostitution! Scandals and murder about!",
      mcImage: "transparent",
    ),
    Speech(
        characterName: n,
        characterText:
            "Humans have no redeeming qualities and you so eagerly /help/ them!"),
    Speech(
      characterName: n,
      characterText: "You…",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "His anger crumbles to something more fearful for only a brief moment before he regains his composure.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "You have to /stop/! You’re going to get seriously hurt!",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText: "/Killed/ by these monsters!",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "I will never stop, Naoki.",
      mcImage: "mc_frown",
    ),
    Speech(
      characterName: m,
      characterText: "You know that…",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "My heart shatters to see him like this, so angry and confused and /alone/.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Then…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Then just turn me back.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "Naoki’s voice chokes before he takes a step back to bow.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "He means it.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Please. I can’t be here. I can’t support this.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "I don’t want to know what I know anymore. I don’t want to be human.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "I take a deep breath to stop myself from crying.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He’d rather lose his entire being than know the pain I’ve bestowed upon him.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "And… I /could/ turn him back.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "I could set him free from this pain.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "…",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I take his hand and lead him down to sit with me, instead.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Please, listen to me.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki won’t look me in the eye but doesn’t remove his hand from mine either.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I keep my voice gentle, knowing this could be the last time we ever speak.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "This mountain is an ecosystem. The cycle of life and death is entwined with everyone who lives on it.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Rabbits eat fruit and plants. Once living creatures. But foxes… foxes kill those same rabbits.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki’s hand clenches into a fist and I pause before continuing.",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "Even the falcons prey on living creatures. Sometimes, even the ravens.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText:
          "The cycle of life and death is not something that just happens, but it is a necessary factor of life to keep the mountain strong.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "When animals die, they decompose back into the same ground that sprouts forth new plants.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "And humans… humans have their part to play as well.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "If you cannot learn to coexist with humans, you cannot coexist with the mountain itself.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki pulls away his hand and folds them in his sleeves as he finally meets my gaze.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "You think I’m a failure.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Of course not, Naoki. I just want you to open up to me. That’s all.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "…When I was a ravecharacterName: n, I didn’t sleep for three days escaping poachers.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "So when I first looked like one, I was so… angry. Confused. As if I’d become the monsters I hated so much.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "I was afraid I’d do the same thing to other animals just because of my appearance.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "I’m sorry, Naoki.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…It is no one’s fault but theirs.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "‘True pain is not a sword, but its poison.’",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText:
          "Yes. But you also know that this is something for you to reflect on and work through.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "You will either confront your fear or live in it. You know it’s not healthy.",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "…I know.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "We sit in the library for a long time.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "And although he doesn’t say anything the entire time, it means everything to me just to be allowed in his presence again.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "It’s the beginning of us rebuilding something new from the ashes.",
      mcImage: "transparent",
    ),
  ];
}

class NaokiAct3BranchB3 {
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

  String? getBGM() {
    return "";
  }

  String? getBgImage() {
    return "1710heian09_y_19201080";
  }

  List<Speech> textBank = [
    //MC lets Naoki meet a human child and he changes his opinion on humans
    // bg room, day
    Speech(
      characterName: nar,
      characterText:
          "For the first time in what feels like years, I wake up from a dream.",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I can’t remember it exactly. But the feeling of small hands in mine linger.",
      mcImage: "mc_happy",
    ),
    // bg Hot spring, day
    Speech(
      characterName: m,
      characterText: "Naoki!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Ah!",
      sideCharImage: "raven_naoki_blush",
    ),
    Speech(
      characterName: n,
      characterText: "Y-yes?",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText:
          "When you’re done with your bath, please meet me at the entrance. We’re going to the shrine today.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "The… shrine? With the humans?",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Correct.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…Yes, MC.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "It doesn’t escape my notice how Naoki sinks further into the hot water as if he wants to escape under the bubbles.",
      mcImage: "transparent",
    ),
    //bg temple entrance, day
    Speech(
      characterName: m,
      characterText: "Here we are.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "So we are.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I spot my target easily. I only need to shoot the child an encouraging smile before he comes barreling over and away from his parents.",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "A-ah!",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "Hello there. How are you today, young one?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Hiii!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "This is my friend, Naoki.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "What do you think you’re doing?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Say hello, Naoki. Just talk.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "U-uh… hello?",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: c,
      characterText: "You talk funny.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Excuse me?",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: c,
      characterText: "Your hair is so long.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "What of it?",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "O-ow!",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Ha ha…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "I’m sorry. Did that hurt? Please don’t cry.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Of course I’m not going to /cry/.",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: c,
      characterText: "Really?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Yes!",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: c,
      characterText: "I think I’d cry if I looked like a girl. Are you a girl?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "What is the difference!",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: c,
      characterText: "I’m sorry, miss. I won’t touch your pretty hair anymore.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "P-pretty?",
      sideCharImage: "naoki_blush",
    ),
    Speech(
      characterName: m,
      characterText: "Well, you /do/ have pretty hair, Naoki…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He clicks his tongue and gently pushes the child’s hand away from his hair.",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText: "You are a ridiculous human!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "Aren’t you a hucharacterName: n, too?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I… I’m different.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "He steps back and unfurls his wings with a heavy sigh.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText: "See?",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: c,
      characterText: "Oooh! You have wings! That’s so cool!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Cool?",
      sideCharImage: "raven_naoki_blush",
    ),
    Speech(
      characterName: n,
      characterText: "I want wings too! How did you do that!",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "Don’t tug on them!",
      sideCharImage: "raven_naoki_frown",
    ),
    Speech(
      characterName: n,
      characterText: "Miss, can you fly? What kind of wings are they?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I don’t know. I’m a raven.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: c,
      characterText: "Is that the black one?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Yes, it is.",
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: c,
      characterText: "I’ve never seen a raven up close.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "That’s because you’re so small and ravens fly up high.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "I’m not small!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "Ha ha… Yes, you are. But that means you can see things ravens can’t, right? You’re closer to the ground.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText:
          "Hmmm… I guess… But I wanna fly! I’d fly to the top of the mountain!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "It’s far too cold up there. Not worth it at all. You’d freeze.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "But I want to go! I don’t care!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "You don’t care about freezing? You don’t mind being an icicle?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "Wait… no, I don’t want that!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Are you sure? I heard icicles are a tasty treat.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: c,
      characterText: "Nooooo!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Ha ha ha ha…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "There are many animals on the mountain that can fly you know. And even the ones who can’t have other fun things they can do.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Really?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "Of course. You should appreciate what you have and learn about all the animals.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "But I don’t know anything…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Then seek out information. Ask questions.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Okay… what do ravens eat? Do they like candy?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "They eat all sorts of things. Meat and eggs, berries and other plants. I imagine they might candy as well.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Ohhh so they’re like me! I eat those too!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I… suppose you do.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "It’s time to go!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Oh! Coming!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I’m sorry, my mom and dad are waiting for me, Miss.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I don’t need an apology, don’t be silly.",
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Okay! Bye!",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "?!",
      sideCharImage: "raven_naoki_blush",
    ),
    Speech(
      characterName: nar,
      characterText:
          "The child hugs Naoki before running back off to join his parents, mischievously grinning as he spins a feather between his fingers.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Sigh…",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "You had fun.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "H-huh? I wouldn’t say that…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "But I understand why you brought me here now.",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "That was a human child. They didn’t know… anything. They were just as ridiculous as a cub.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "If it’s not protected, it could just as easily fall prey to something.",
      sideCharImage: "raven_naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "That’s right, Naoki…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki exhales and watches as the child disappears out of view.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "And it will grow up hunting like all carnivorous animals. For itself. For its parents.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText:
          "It doesn’t know what it’s like to be a raven any more than a raven knows how to be a human.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "It is just a child. It is not… evil. Or good.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      sideCharImage: "raven_naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Thank you, MC. I think I understand now.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Do you really?",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "As much as I can at the moment.",
      sideCharImage: "raven_naoki_happy",
    ),
    Speech(
      characterName: m,
      characterText: "Then I’m happy.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Well, that’s always a good thing.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Is it now?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki smiles in my direction for a moment before pacing the shrine on his owcharacterName: n, gaze turned toward the clear sky.",
      mcImage: "transparent",
    ),
    // Naoki apologies and seeks to rededicate and redeem himself, forcing himself to interact and even become friendly with humans at a tribute event
    //bg temple entrance, day
    Speech(
      characterName: m,
      characterText: "Are you sure you’re ready for this?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "I don’t mind if you need just a little more time.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText: "Naoki shakes his head before I can even finish.",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "No. I want to do this. I have to redeem myself.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "He’s pushing himself…",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I shouldn’t reject his feelings if this is what he wants.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Okay. Then let’s go together.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I open my palm to him and he cautiously holds my hand before we ascend the sandō steps.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "He trembles against me, but his feet never stall.",
      mcImage: "transparent",
    ),
    // bg summer festival packed, night
    Speech(
      characterName: nar,
      characterText:
          "After a long day, the villagers surprise us both. They reveal near the end of the tributes that they’re holding a festival tonight in our honor.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "And, of course, we attend.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "Naoki sticks close to my side.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "A bit /too/ closely.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "N-Naoki, um…",
      mcImage: "mc_sad",
    ),
    Speech(
      characterName: n,
      characterText: "Yes!",
      sideCharImage: "naoki_frown",
    ),
    Speech(
      characterName: m,
      characterText: "Why don’t you relax a bit, okay?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: m,
      characterText:
          "They want to /thank/ you. They want you to have a nice time.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: nar,
      characterText:
          "He lets go of my arm but fidgets with his sleeves, looking around uncomfortably.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "There’s a lot of… food.",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: m,
      characterText: "There sure is. Let’s try some, okay?",
      mcImage: "mc_happy",
    ),
    // bg food stall
    Speech(
      characterName: n,
      characterText:
          "Goddess! Thank you for your hard work! Please, pick whichever you like!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Thank you!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "…What is this?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Takoyaki. Try one, please. They’re all good.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Hesitantly, Naoki takes one of the skewers and nibbles at the end.",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: n,
      characterText: "Oops, careful there. It’s hot. Don’t burn yourself.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "Looks like it’s a bit too late for that. Ha ha…",
      mcImage: "transparent",
    ),
    Speech(
      characterName: m,
      characterText: "Are you okay?",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "…Ow.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "You’re the one helping out MC, right?",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Yes…",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText:
          "My sincerest thanks. The color is back in her cheeks these days.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Oh. Yes.",
      mcImage: "transparent",
    ),
    // bg summer festival packed
    Speech(
      characterName: m,
      characterText: "That was nice of him.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "I suppose.",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: m,
      characterText: "You’re doing great, Naoki.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Someday I will agree.",
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: n,
      characterText: "Excuse me! Excuse me!",
      mcImage: "mc_neutral",
    ),
    Speech(
      characterName: nar,
      characterText:
          "A little girl comes rushing up to Naoki, not sparing me a single glance.",
      sideCharImage: "naoki_neutral",
    ),
    Speech(
      characterName: n,
      characterText: "Y-yes?",
      sideCharImage: "naoki_sad",
    ),
    Speech(
      characterName: n,
      characterText:
          "Hurry, please! I need a dance partner or I can’t compete!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "And you’re nice and tall!",
      mcImage: "transparent",
    ),
    Speech(
      characterName: n,
      characterText: "Um.",
      mcImage: "transparent",
    ),
    // screen shake
    Speech(
      characterName: nar,
      characterText:
          "She takes it as a ‘yes,’ taking Naoki’s hand and dragging him deeper into the crowd.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "I follow quickly, a bit anxious to see how he’ll react to being surrounded by humans.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Naoki holds the child’s hand tight like a lifeline and I wait on the outskirts as people part to give me respectable space.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "Instruments blare and partners of various ages begin their dances. Naoki barely manages to keep up with the excited child, trying his best not to step on her.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText: "I try my best not to laugh at the ridiculous sight.",
      mcImage: "mc_happy",
    ),
    Speech(
      characterName: nar,
      characterText: "But before long, it’s not ridiculous at all.",
      sideCharImage: "naoki_happy",
    ),
    Speech(
      characterName: nar,
      characterText:
          "In fact… it’s the most beautiful thing I’ve seen in a long time—the most genuine smile on Naoki’s face I’ve seen in weeks.",
      mcImage: "transparent",
    ),
    Speech(
      characterName: nar,
      characterText:
          "A smile I feel, in the pit of my stomach, will never truly be because of me again.",
      mcImage: "mc_sad",
    ),
    //jump to NaokiAct4BranchB

// NaokiAct4BranchA_B = [
//         // MC rejects Naoki’s advances on grounds of being her familiar and he sadly accepts it
//         // bg clearing by the lake, sunset (continuation of Act3BranchA choice B)
//         Speech(characterName: nar, characterText:"I hurriedly push Naoki away.", mcImage: "mc_sad",),
//         Speech(characterName: nar, characterText:"Even the gentle motion seems too harsh.", sideCharImage: "naoki_sad",),
//         Speech(characterName: nar, characterText:"But…", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"I’m sorry, Naoki. I… I can’t.", mcImage:"mc_blush",),
//         Speech(characterName: m, characterText:"I accept gratitude. I accept admiration. But…", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"I cannot reciprocate something like infatuation. I am a goddess.", mcImage: "mc_sad",),
//         Speech(characterName: nar, characterText:"He blinks slowly at me, hurt in his eyes.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"But, why?"),
//         Speech(characterName: m, characterText:"I can’t return your feelings, Naoki.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"But, /why/? Because you are a goddess? What does that have to do with how I feel?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"I…", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"My job is everything I acharacterName: m, Naoki. If I value all things equally, if I am to do my job properly, I cannot break that one rule.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Your job is /not/ all you are! You are capable of great things, things that do not contradict each other.", sideCharImage: "naoki_frown",),
//         Speech(characterName: n, characterText:"I thought I meant more to you than being a means to an end. You…", sideCharImage: "naoki_sad",),
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
//         Speech(characterName: n, characterText:"Uh!", sideCharImage:"naoki_blush",),
//         Speech(characterName: m, characterText:"I’ve… never been in this situation before. I’m sorry I didn’t understand.", mcImage:"mc_blush",),
//         Speech(characterName: nar, characterText:"Naoki presses his forehead to mine and I can feel how hot he’s gotten.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I can’t say I’ve ever done such a thing either.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Please. Does this mean you feel the same way about me as I do you?", sideCharImage: "naoki_sad",),
//         Speech(characterName: m, characterText:"I think you should tell me how you feel, first.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"He places a gentle kiss on my forehead and chuckles as he moves away.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"When I was a ravecharacterName: n, I didn’t sleep for three days escaping poachers.", sideCharImage: "naoki_sad",),
//         Speech(characterName: n, characterText:"So when I first looked like one, I was so… angry. Confused. As if I’d become the monsters I hated so much.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I was afraid I’d do the same thing to other animals just because of my appearance.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"But you changed everything for me.", sideCharImage:"naoki_happy",),
//         Speech(characterName: n, characterText:"You gave me a second chance at life. I feel more like myself than I ever have before.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"‘A person is what they’ve etched into the world.’", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"So when you ask me how I feel about you…", sideCharImage:"naoki_neutral",),
//         Speech(characterName: n, characterText:"I know that I love you.", sideCharImage:"naoki_happy",),
//         Speech(characterName: m, characterText:"…I love you, too.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"And I love this shrine. And this mountain. And I want everyone to love it the way you do!", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I’ve never see Naoki so animated in my life. It does something to my chest to see him spread his wings as his dark eyes reflect orange and yellow.", sideCharImage:"raven_naoki_happy",),
//         Speech(characterName: m, characterText:"And how do you suppose we do that?", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"With flushed cheeks, he hurries to stand and brings me up with him.", mcImage: "transparent",),
//         // screen shake
//         Speech(characterName: m, characterText:"Slow dowcharacterName: n, ha ha! Where are we going?", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"To ring the Bonshō! To invite Ina in! To tell everyone how amazing you are!", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"N-Naoki! Look!", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Yes?", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"You’re /flying/!", mcImage:"mc_blush",),
//         Speech(characterName: nar, characterText:"His feet hover just barely over the ground as he flaps his wings.", sideCharImage:"raven_naoki_neutral",),
//         Speech(characterName: nar, characterText:"The only thing keeping him low is…", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"I smile and let go of his hand, watching as he gains air.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"Well, what do you know.", sideCharImage:"raven_naoki_blush",),
//         Speech(characterName: n, characterText:"I guess the poem was true.", sideCharImage:"raven_naoki_happy",),
//         Speech(characterName: nar, characterText:"Naoki looks up to the sky, just now beginning to show stars, and I prepare to see how far he can go.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"But he doesn’t go anywhere.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki flies right back down to my side.", mcImage: "transparent",),
//         // bg outside shrine, day (library)
//         Speech(c, characterText:"Excuse me, I’m tired.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Then go sleep outside while it’s still warm. Don’t wake that litter of foxes, though.", sideCharImage:"raven_naoki_happy",),
//         Speech(c, characterText:"Yes, thank you!", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki finishes putting away the latest addition to our ever-expanding library before stepping back to look at the giant row of shelves.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"We’ll need another bookcase soon.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"I think we’ll run out of room. The shrine itself needs to be expanded.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Yes, I suppose you’re right. There’s a lot of work to do.", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"We’ll have the help.", mcImage: "mc_neutral",),
//         Speech(characterName: nar, characterText:"As if to emphasize his point, a raven pokes its head out from where its been hiding atop the tall bookcase to hand Naoki another book.", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"It gives a low caw before disappearing back and Naoki sighs.", sideCharImage:"raven_naoki_sad",),
//         Speech(characterName: n, characterText:"It’s almost time for your reading time to the children.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Don’t sigh, it’s only an hour! And you’ll be going to greet our latest pilgrims anyway, right?", mcImage: "mc_happy",),
//         Speech(characterName: m, characterText:"They really appreciate you, you know. The mountain’s never been safer or more respected.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"I suppose it’s become quite fun to talk to all the humans.", mcImage: "transparent",),
//         Speech(characterName: n, characterText:"Hey. MC.", sideCharImage:"raven_naoki_happy",),
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
//         Speech(characterName: n, characterText:"Yes. They want me to oversee the library renovations.", sideCharImage:"naoki_happy",),
//         Speech(characterName: m, characterText:"It’s really coming along. Do you still have time to read?", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"Ha ha… I manage.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Not very convincing!", mcImage: "mc_happy",),
//         Speech(characterName: nar, characterText:"Naoki looks down the mountain path and readjusts the bag of books he brought with him to the shrine.", sideCharImage:"naoki_neutral",),
//         Speech(characterName: m, characterText:"I’m heading in that direction. Shall I help you carry some of the books?", mcImage: "mc_neutral",),
//         Speech(characterName: n, characterText:"Hmm…", sideCharImage: "naoki_sad",),
//         Speech(characterName: n, characterText:"No. I would feel more at ease if you enjoyed your walk.", sideCharImage:"naoki_happy",),
//         Speech(characterName: nar, characterText:"I sigh but yield to his wishes. He doesn’t ask much of me these days, I suppose I can humor him.", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"Naoki, you work in the village library so often. Why there and not the shrine?", mcImage: "transparent",),
//         Speech(characterName: nar, characterText:"Naoki’s face slightly falls as he hums.", sideCharImage: "naoki_sad",),
//         Speech(characterName: n, characterText:"I… like to be of use to you.", sideCharImage:"naoki_neutral",),
//         Speech(characterName: m, characterText:"Yes. I appreciate it.", mcImage: "mc_happy",),
//         Speech(characterName: n, characterText:"But I found I am of better use when I am away from you.", sideCharImage: "naoki_sad",),
//         Speech(characterName: n, characterText:"‘The only acceptable love is one that can be endured.’", mcImage: "transparent",),
//         Speech(characterName: m, characterText:"W-what…?", mcImage: "mc_sad",),
//         Speech(characterName: n, characterText:"…I found that my feelings are perhaps a hindrance to not only your duties, but mine.", mcImage:"mc_blush",),
//         Speech(characterName: n, characterText:"It’s easier this way. For me.", sideCharImage:"naoki_happy",),
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
  ];
}
