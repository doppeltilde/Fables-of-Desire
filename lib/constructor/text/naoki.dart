// Fables of Desire - Naoki Route - Destini Islands

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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // Character Name, Dialogue, Image

    // TODO: bg room, day
    // TODO: Naoki skeptical over why and how he's been given human form.

    Speech(m, "Naoki...? Good morning!", "mc_happy"),
    Speech(
        nar,
        "Today I’ve decided to try to get closer to Naoki after the rough start.",
        "mc_happy"),
    Speech(
        nar,
        "But as I enter his room, I see that he doesn’t even turn his face to greet me. His gaze peers beyond the windows.",
        "mc_neutral"),
    Speech(
        nar,
        "Early rays of sunlight brighten curious gray irises but I can see eyebags under them.",
        "transparent"),
    Speech(m, "Naoki? Did you not sleep well?", "mc_sad"),
    Speech(n, "Good morning.", "naoki_neutral"),
    Speech(nar, "Silence. This won’t do.", "transparent"),
    Speech(m, "Please. Tell me what troubles you?", "mc_neutral"),
    Speech(
        nar,
        "I certainly don't know what I would think if I were suddenly in a different body.",
        "transparent"),
    Speech(
        nar, "He turns to face me, his head tilting in wonder.", "transparent"),
    Speech(n, "Who...?", "naoki_neutral"),
    Speech(n, "Who am I now...?", "naoki_sad"),
    Speech(n, "My appearance. My thoughts. The sound of my voice. Why this?",
        "transparent"),
    Speech(
        nar,
        "I stand at the entrance of his room, considering the weight of his question.",
        "transparent"),
    Speech(nar, "What does it mean to be Naoki? A raven? Something more?",
        "mc_sad"),
    Speech(m, "Who are you, huh...?", "mc_neutral"),
    Speech(m, "You’re Naoki.", "mc_happy"),
    Speech(n, "But…", "transparent"),
    Speech(
        m,
        "You’re Naoki. What ‘Naoki’ is entirely up to you. I can give you all the explanations you want about being my familiar, but beyond that…",
        "mc_neutral"),
    Speech(m, "It’s your own decision. Your life is yours in the end.",
        "mc_happy"),
    Speech(n, "…", "naoki_neutral"),
    Speech(n, "I suppose that gives me some freedom of interpretation.",
        "naoki_happy"),
    Speech(n, "I will ponder it on my own then.", "naoki_neutral"),
    Speech(
        nar,
        "I didn’t consider how unsettled a familiar could be from the change. Surely there’s something I can do…",
        "mc_neutral"),
    Speech(m, "Oh! I know. Naoki, let me show you around.", "mc_happy"),
    Speech(m, "I think seeing everything will help you find your place.",
        "transparent"),
    Speech(n, "You want to show me the mountain?", "transparent"),
    Speech(n, "But I know the mountain.", "naoki_frown"),
    Speech(n, "I... well, I thought I did.", "naoki_sad"),
    Speech(
        m,
        "I’d like to show you the mountain and the temple from my point of view.",
        "transparent"),
    Speech(n, "Your point of view… Alright.", "naoki_neutral"),
    Speech(
        nar,
        "I extend my hand to him, but it takes Naoki a moment to understand what I want.",
        "transparent"),
    Speech(
        nar,
        "The coolness of his hand settles in mine as I excitedly hurry to get to work.",
        "transparent"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg Outdoor pathway, day
    Speech(
        n,
        "Where are we going? Where is this? Why are the ceilings so high?",
        "transparent"),
    Speech(m, "W-what? Slow down, please!", "mc_blush"),
    Speech(
        nar,
        "Naoki looks up to the overpass ceiling and uses his free hand to point at the beam.",
        "mc_neutral"),
    Speech(
        n,
        "Why is it so high? I wouldn’t be able to reach it even if I jumped. Am I… short?",
        "naoki_frown"),
    Speech(m, "Ha ha… No, Naoki. You are quite tall for a human, actually.",
        "mc_happy"),
    Speech(n, "Hm… then why?", "naoki_neutral"),
    Speech(
        m,
        "There are practical reasons for high ceilings, like allowing more light or air into a room, but…",
        "mc_neutral"),
    Speech(
        m,
        "I think they look nicer. It feels like I have more freedom under a high ceiling than a low one.",
        "mc_happy"),
    Speech(n, "But why have a ceiling at all then? How does one even fly?",
        "naoki_sad"),
    Speech(n, "Ah… I suppose there would be no flying among humans.",
        "naoki_neutral"),
    Speech(m, "Ha ha… You’re so inquisitive, Naoki.", "transparent"),
    Speech(n, "I’m sorry.", "naoki_sad"),
    Speech(m, "Oh! No, no, don’t be.", "mc_sad"),
    Speech(
        m,
        "I like that about you. You’re making me think about things I don’t normally.",
        "mc_neutral"),
    Speech(
        m,
        "Now come along. I’d love to know your thoughts on where we’re going next.",
        "mc_happy"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg Hot spring, day
    Speech(m, "Here we are!", "mc_happy"),
    Speech(n, "W-what is this?", "naoki_sad"),
    Speech(
        m,
        "The private temple hot spring. It is used for bathing and relaxation.",
        "mc_neutral"),
    // TODO: screen shake
    Speech(
        n, "B-bathing? Won’t you drown in something so large?", "naoki_blush"),
    Speech(
        m,
        "Of course not. This is one of the benefits of being human I wanted to show you.",
        "mc_sad"),
    Speech(
        m,
        "Not only is it good for you, but it feels nice. It’s an enjoyable experience.",
        "mc_happy"),
    Speech(m, "As a human, you should bathe and eat often.", "mc_neutral"),
    Speech(
        n,
        "There are many nice stones as well… I see. Then shall we get in now?",
        "naoki_neutral"),
    Speech(
        m,
        "A-ah, no. You should get in without your clothes on so we’ll only bathe separately.",
        "mc_blush"),
    Speech(
        n,
        "I’m not sure I understand. Wouldn’t it be faster if we bathed together?",
        "naoki_sad"),
    Speech(
        m,
        "Well, yes, but… Um, I think this is a good opportunity for you to do something on your own.",
        "mc_neutral"),
    Speech(m, "I also prefer to be naked alone.", "mc_sad"),
    Speech(n, "Hmm… Okay. I understand.", "naoki_neutral"),
    Speech(
        m,
        "When you’re done, meet me back in the walkway we came through. Okay?",
        "mc_happy"),
    Speech(n, "Understood. Thank you.", "naoki_happy"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg Outdoor pathway, day
    Speech(n, "MC. I am prepared.", "naoki_blush"),
    Speech(m, "There you are! I was getting worried—", "mc_happy"),
    //screen shake
    Speech(m, "Ah! A-are you okay? You’re burning up!", "mc_frown"),
    Speech(n, "Is there fire on me?", "transparent"),
    Speech(nar, "I have to get him cooled down!", "transparent"),
    // TODO: screen shake
    Speech(m, "Come with me!", "transparent"),
    Speech(n, "Goddess?", "transparent"),
    Speech(
        nar,
        "Naoki’s once-cool hand sears into mine as I hurry to bring him to where water awaits us.",
        "transparent"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg pottery room, day
    Speech(m, "Here you go. Drink this, please.", "mc_sad"),
    Speech(n, "Sure…", "transparent"),
    Speech(
        nar,
        "The cool water typically saved for working clay easily goes down Naoki’s throat.",
        "transparent"),
    Speech(m, "Um. How are you feeling now?", "transparent"),
    Speech(n, "Better than I was before.", "naoki_neutral"),
    Speech(n, "Thank you.", "naoki_happy"),
    Speech(m, "That’s a relief.", "mc_happy"),
    Speech(n, "Where are we now?", "naoki_neutral"),
    Speech(
        m,
        "An area to create things for use in the temple like bowls or containers",
        "mc_neutral"),
    Speech(
        n,
        "These are so… detailed. I suppose this is a merit of human hands?",
        "naoki_happy"),
    Speech(m, "Absolutely!", "mc_happy"),
    Speech(
        nar,
        "I’m certainly glad he’s considering the positives of having a human form.",
        "transparent"),
    Speech(n, "Is this where my duties should begin?", "naoki_neutral"),
    Speech(
        m,
        "Oh, no need. We should always survey the mountain first thing in the morning. It’s why we get up so early.",
        "mc_neutral"),
    Speech(
        m,
        "We’re a bit late today but I thought checking out the hot spring would help you relax first.",
        "mc_happy"),
    Speech(n, "…I apologize if I’ve already failed as your familiar.",
        "naoki_sad"),
    Speech(n, "I will not fail you again.", "naoki_frown"),
    Speech(
        m,
        "You haven’t failed anything! It’ll be easier for you to learn if you’re less anxious.",
        "mc_sad"),
    Speech(
        m,
        "Making you comfortable is part of my job. So please don’t blame yourself.",
        "mc_neutral"),
    Speech(nar, "I’m not sure how much he believes me…", "transparent"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg temple entrance, day
    Speech(
        nar,
        "Traveling from the temple and to the mountain has always been a meticulous, lonely endeavor with hurried steps.",
        "transparent"),
    Speech(
        nar,
        "But Naoki slows it down, unsure how humans can create stone or of his body down long stairs.",
        "transparent"),
    Speech(
        nar,
        "I’m not sure what I expected of a familiar, but it wasn’t this. It’s… nice.",
        "transparent"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO: bg mountain path and trees, day
    Speech(
        m,
        "Naoki. Do you remember what I told you before about monitoring the fauna and flora?",
        "transparent"),
    Speech(
        n,
        "Yes. I should always be aware of any changes in the terrain, no matter how small.",
        "transparent"),
    Speech(m, "That’s right. Tell me what you see.", "mc_happy"),
    Speech(n, "Hm…", "transparent"),
    Speech(
        n,
        "Well. The first thing I notice is definitely the strange-colored stones here.",
        "naoki_happy"),
    Speech(
        nar,
        "Naoki takes careful steps over roots and fallen leaves, hands caressing tree bark or fiddling with his own sleeves.",
        "transparent"),
    Speech(nar, "He’ll probably ask about the human footprints on the path.",
        "mc_happy"),
    Speech(n, "You must be the reason so many broken wings come home.",
        "naoki_happy"),
    Speech(m, "Uh, what?", "mc_sad"),
    Speech(
        n,
        "Sometimes in the morning, several birds in this mountain have mysteriously returned unharmed with the faint smell of human on them.",
        "transparent"),
    Speech(n, "I see now that it has always been you.", "transparent"),
    Speech(
        m,
        "Oh! Yes, I suppose it must. Every now and then a younger or elderly bird needs help, so I’ve carried them to nests.",
        "mc_neutral"),
    Speech(m, "I did not realize it became a legend of sorts.", "transparent"),
    Speech(
        nar,
        "Naoki chuckles to himself and it takes me by surprise. I don’t think I’ve ever heard him laugh before. It reminds me of a fledgling’s trill.",
        "mc_happy"),
    Speech(n, "I wonder how many more mysteries I will solve at your side.",
        "naoki_neutral"),
    Speech(
        m,
        "I wonder how many more mysteries I will be made aware of by yours.",
        "mc_happy"),
    Speech(
        n,
        "It seems I might teach you more things than either of us anticipated.",
        "naoki_happy"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO bg mountain path and trees, sunset
    Speech(
        m,
        "Alright Naoki, we’re done for today. Let’s go on to the next task.",
        "mc_neutral"),
    Speech(n, "Are you sure? Shouldn’t we do one more round?", "naoki_sad"),
    Speech(
        m,
        "Haha… No, Naoki, I think surveying the mountain twice is enough for one day",
        "mc_happy"),
    Speech(
        m,
        "Don’t worry, we’ll do this every day. There’s no rush, especially when there’s two of us to do the work.",
        "transparent"),
    Speech(n, "Okay.", "naoki_neutral"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO bg boulder and flowers, sunset
    Speech(m, "You learn so quickly, Naoki. You’re really impressive.",
        "mc_happy"),
    Speech(
        nar,
        "Naoki stops pruning the bushes long enough to look up to me with a pout on his face.",
        "naoki_frown"),
    Speech(n, "It is not perfectly even.", "naoki_sad"),
    Speech(m, "Do you really think so? It’s beautiful to me as it is.",
        "mc_neutral"),
    Speech(n, "Hm…", "naoki_neutral"),
    Speech(
        m,
        "How about looking at it again tomorrow? Sometimes it’s difficult to pinpoint mistakes if you stare at them too long.",
        "transparent"),
    Speech(n, "Really? Then I shall take your advice.", "transparent"),
    Speech(
        m,
        "Good. Because it’s about time for us to eat. I need to hurry and cook.",
        "mc_happy"),
    Speech(n, "But you look exhausted.", "naoki_sad"),
    Speech(m, "O-oh do I?", "mc_blush"),
    Speech(n, "I can help you cook!", "naoki_frown"),
    Speech(
        m,
        "No, no, it’s alright. I’d rather you take this time to relax or do something you’d like.",
        "mc_neutral"),
    Speech(n, "I’d like to help you cook.", "naoki_happy"),
    Speech(
        m,
        "Ha ha… Well, I’ll consider it for the future, okay? For now, please do as you’d like and meet me by the lake in an hour.",
        "mc_happy"),
    Speech(m, "Do you remember where it is?", "mc_neutral"),
    Speech(
        n,
        "To the right of the library, down the wooden pathway, past the three pointed rocks—",
        "naoki_neutral"),
    Speech(m, "Okay! Yeah, I’d say you remember.", "mc_happy"),
    Speech(n, "I will see you there.", "transparent"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // TODO bg clearing by the lake, sunset
    Speech(
        nar,
        "It’s heavier carrying two dining sets instead of one but I, miraculously, manage to bring hot bowls of vegetable poke without spilling anything.",
        "transparent"),
    Speech(m, "Naoki!", "mc_happy"),
    Speech(
        nar,
        "Naoki quickly drops whatever is in his hands so he can stand and take the trays from my arms.",
        "transparent"),
    Speech(m, "Oh. Thank you!", "mc_neutral"),
    Speech(
        nar,
        "He gently sets them down on the outdoor blanket and waits for me to sit before sitting across from me.",
        "naoki_neutral"),
    Speech(m, "Thanks for the food.", "transparent"),
    Speech(n, "Thanks for the food…", "transparent"),
    Speech(
        nar,
        "Naoki waits for me to take my chopsticks before mimicking me, watching intently.",
        "transparent"),
    Speech(
        m,
        "Let me know if you need help, but you’re free to eat how you like…",
        "transparent"),
    Speech(n, "Mm…", "transparent"),
    Speech(
        nar,
        "I try to suppress my grin and staring as I watch Naoki try different hand positions, practicing his opening and closing before going for his first grain of rice.",
        "transparent"),
    Speech(m, "So, Naoki, what did you do on your break?", "transparent"),
    // TODO screen shake
    Speech(
        nar,
        "He concentrates intently on his bowls, not looking at me as he mumbles his answers.",
        "transparent"),
    Speech(n, "At first, I dusted that one ceiling you couldn’t reach earlier…",
        "transparent"),
    Speech(nar, "Gah! He noticed!", "mc_blush"),
    // TODO screen shake
    Speech(n, "Ah. Almost… Then, I returned to the shrine.", "transparent"),
    // TODO screen shake
    Speech(n, "Ah!", "naoki_sad"),
    Speech(m, "And what did you do in the shrine?", "mc_neutral"),
    Speech(n, "Oh… I looked through the various scribbles and drawings.",
        "naoki_neutral"),
    Speech(m, "The… books?", "mc_neutral"),
    // TODO screen shake
    Speech(n, "There we go.", "naoki_happy"),
    Speech(n, "Sorry. What was that? Crooks?", "naoki_neutral"),
    Speech(
        m,
        "Ha ha… no, books. They’re full of information and stories. People write things down and then you can read them whenever you want.",
        "mc_happy"),
    Speech(
        n,
        "Books… for transferring information? Like talking without voices?",
        "transparent"),
    Speech(m, "Yes, that’s right.", "transparent"),
    Speech(n, "It sounds incredibly useful.", "naoki_happy"),
    Speech(
        m,
        "It sure is. What you saw was the shrine collection, or library of books.",
        "transparent"),
    Speech(n, "Could I learn to cook in a library?", "transparent"),
    Speech(m, "Ha ha! You sure could, there’s a few books on that.",
        "transparent"),
    Speech(m, "You’d have to learn how to read, though.", "mc_neutral"),
    Speech(
        m,
        "Perhaps later if you still have an interest I can start teaching you how to read.",
        "transparent"),
    Speech(
        m,
        "We definitely need to get you comfortable on the morning clearings, though. It can be dangerous if you’re not prepared.",
        "naoki_neutral"),
    Speech(n, "Mm, yes…", "transparent"),
    Speech(nar, "A little distracted, are we? At least he’s having fun, ha ha…",
        "mc_happy"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // Naoki comes to also develop his own reasoning for serving as a deity of the mountain, for he finds himself inspired by MCs cause; equality. Little does he know at this point, this includes humans.
    // TODO bg mountain path and trees, day
    Speech(
        nar,
        "A week passes comfortably, although something is… off about Naoki this morning.",
        "mc_sad"),
    Speech(
        nar,
        "I move away from checking on the mountain’s newest litter of foxes to walk by his side.",
        "transparent"),
    Speech(m, "Naoki?", "transparent"),
    Speech(
        nar,
        "He’s unusually quiet as we do our pass. Not a single question from his lips.",
        "transparent"),
    Speech(m, "Naoookkiiii?", "transparent"),
    Speech(n, "Oh. Yes? I’m sorry for not paying attention.", "naoki_sad"),
    Speech(
        m,
        "It’s okay! I know you’re working, I was just wondering if you’re feeling alright?",
        "mc_neutral"),
    Speech(n, "Hmm…", "transparent"),
    Speech(n, "You care for all the animals in the mountain, it seems.",
        "naoki_neutral"),
    Speech(
        m,
        "Of course! My job is the most important thing in the world to me.",
        "mc_happy"),
    Speech(n, "So important you used part of yourself to create a familiar.",
        "naoki_happy"),
    Speech(m, "That’s right.", "mc_neutral"),
    Speech(n, "Then…", "naoki_sad"),
    Speech(
        n,
        "I’ll ask again. If you needed a familiar, why did it have to be in this form? Do you think ravens are… inferior?",
        "naoki_frown"),
    Speech(m, "Inferior? No, of course not…", "mc_sad"),
    Speech(
        n,
        "Then why change me? Why not get a human if you needed this form?",
        "naoki_sasd"),
    Speech(
        m,
        "That’s… a difficult question to answer, Naoki. As you can see from my appearance, I am also human-like.",
        "mc_neutral"),
    Speech(m, "It’s easiest for my familiar and I to take similar forms.",
        "mc_neutral"),
    Speech(
        m,
        "There are things only humans can do that other animals cannot. But being my familiar is not a job fit for any human.",
        "transparent"),
    Speech(m, "Does that make any sense to you?", "mc_sad"),
    Speech(n, "…", "naoki_happy"),
    Speech(
        n,
        "No. But I can feel your compassion. You treat all animals of the mountain with care. Not just the ravens.",
        "transparent"),
    Speech(m, "I sure try. They’re all important to me. I love them equally.",
        "mc_happy"),
    Speech(n, "Equal. Yes.", "naoki_neutral"),
    Speech(
        n,
        "I admit I didn’t think much of the other animals before you. I only sometimes feared the foxes or owls.",
        "naoki_sad"),
    Speech(
        n,
        "I want to learn everything I can with this opportunity. To be the best version of myself that I can be.",
        "naoki_happy"),
    Speech(
        m, "What kind of things are you interested in learning?", "mc_neutral"),
    Speech(
        n,
        "First, I’d like to know more about why they eat the strange things they do.",
        "naoki_neutral"),
    Speech(
        m,
        "Ha ha ha… well, what’s considered strange is different for everyone.",
        "mc_happy"),
    Speech(
        n,
        "Yes, but I think it’s very evident that cooking is the best way to go.",
        "transparent"),
    Speech(m, "Ha ha ha. I won’t disagree with you there.", "transparent"),
    Speech(n, "I think I’m ready.", "naoki_neutral"),
    Speech(m, "Ready?", "mc_neutral"),
    Speech(
        n,
        "It was difficult to dedicate myself to these tasks. But I see the merit in these daily activities. I want to do everything I can to help the mountain.",
        "transparent"),
    Speech(
        n,
        "There’s lots of work to be done. Work I cannot begin to imagine.",
        "transparent"),
    Speech(m, "Then we’d better keep going.", "mc_happy"),
    Speech(n, "Yes.", "transparent"),
    Speech(n, "You know… the ravens have a game we play at almost every age.",
        "naoki_happy"),
    Speech(
        n,
        "We mate for life and tend to play it together a lot, so this could be fun.",
        "transparent"),
    Speech(
        m,
        "Oh? Really? I think I’ve seen them play with sticks and the like.",
        "mc_neutral"),
    Speech(
        n,
        "Yes, but there are other things that are maybe less obvious. Would you like to play?",
        "transparent"),
    Speech(m, "Sure, Naoki. As long as it doesn’t take too much time.",
        "mc_happy"),
    Speech(n, "No. It’s quick.", "transparent"),
    Speech(
        nar,
        "He walks deeper into grass to pick up a stick, breaking it in two as he returns.",
        "mc_neutral"),
    Speech(
        n,
        "I’ve never played with one this big of course, but I also think this game might be more fun in this form.",
        "transparent"),
    Speech(m, "What should I do?", "transparent"),
    Speech(n, "It’s simple. Hold out your arm and hand.", "transparent"),
    Speech(m, "Like this?", "transparent"),
    Speech(n, "Yes.", "transparent"),
    Speech(
        nar,
        "He stands in front of me and stretches his arm out before placing a stick in the center of both.",
        "transparent"),
    Speech(
        n,
        "You can’t touch your opponent’s stick and whoever’s hits the ground first loses.",
        "naoki_neutral"),
    Speech(m, "Oh! It’s a balancing game.", "mc_happy"),
    Speech(n, "It is. Are you ready?", "naoki_happy"),
    Speech(m, "Yes!", "transparent"),
    Speech(n, "Then… begin.", "naoki_neutral"),
    Speech(m, "Oh…! Look, yours is wobbling.", "transparent"),
    Speech(n, "It sure is.", "naoki_happy"),
    // screen shake
    Speech(m, "Wha?!", "mc_blush"),
    Speech(m, "H-hey!", "transparent"),
    Speech(n, "I win.", "transparent"),
    Speech(m, "B-but you tickled me!", "transparent"),
    Speech(n, "So I did, ha ha.", "transparent"),
    Speech(n, "Are you surprised?", "transparent"),
    Speech(m, "Gah…", "mc_sad"),
    Speech(m, "I demand a rematch!", "mc_frown"),
    Speech(n, "Ha ha ha… I thought we were busy?", "transparent"),
    Speech(m, "You’re just saying that now because you won!", "transparent"),
    Speech(n, "I sure am.", "transparent"),
    Speech(
        m,
        "Ravens have always been so crafty! I won’t forget this next time!",
        "mc_happy"),
    Speech(n, "I suppose you won’t.", "transparent"),
    Speech(m, "Sigh…", "transparent"),
    Speech(m, "Also, Naoki, I want you to try something.", "mc_neutral"),
    Speech(n, "Yes?", "naoki_neutral"),
    Speech(
        m,
        "You’re not entirely human, you know. It’s entirely possible that you have parts of your raven form latent.",
        "transparent"),
    Speech(n, "Latent?", "transparent"),
    Speech(
        m,
        "Yes… I want you to imagine that you’re still a raven. The parts of you that you’ve always known.",
        "transparent"),
    Speech(nar, "Naoki tilts his head in thought before peering up at the sky.",
        "transparent"),
    Speech(
        nar,
        "Lazy clouds cast shadows on his face before he exhales deeply, facial expression crumbling.",
        "naoki_frown"),
    Speech(m, "Are you okay? Are you in pain?", "mc_sad"),
    // todo raven form naoki appears
    Speech(n, "Ah…", "raven_naoki_blush"),
    Speech(m, "Ah! Naoki! Your wings!", "mc_happy"),
    Speech(
        nar,
        "He looks behind him and slowly flaps what are unmistakably raven wings.",
        "transparent"),
    Speech(n, "It worked…", "raven_naoki_happy"),
    Speech(m, "How does it feel?", "transparent"),
    Speech(n, "Like… I tore your clothing. I’m sorry.", "raven_naoki_sad"),
    Speech(
        m,
        "Ha ha… that’s okay. It’s an easy fix. I’ll show you how to mend.",
        "transparent"),
    Speech(n, "Do you think I’ll be able to fly with these?",
        "raven_naoki_neutral"),
    Speech(m, "Hmm… You might be too heavy to actually fly in this body.",
        "mc_sad"),
    Speech(n, "I see…", "raven_naoki_sad"),
    Speech(
        m,
        "B-but I don’t know for certain! You can practice and determine it for yourself.",
        "mc_happy"),
    Speech(n, "Yes… I think I will.", "raven_naoki_happy"),
    Speech(n, "Let us continue.", "raven_naoki_neutral"),
    Speech(m, "Let’s.", "transparent"),
    Speech(
        nar,
        "Naoki doesn’t actually try to fly, but his gentle flapping throughout the day becomes a calming presence.",
        "transparent"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    //Naoki is uneasy but finds footing in other areas - literature in the shrine, local history and ancient legend.
    // todo bg rock garden, night
    Speech(n, "I’ll do one last sweep, MC.", "raven_naoki_neutral"),
    Speech(m, "No, it’s clean enough for now! It’s late, we should sleep.",
        "mc_neutral"),
    Speech(n, "…I’m not very good at this, am I?", "raven_naoki_sad"),
    Speech(
        nar,
        "Naoki frowns as he plays with a crystal he must’ve picked up from the rock garden.",
        "transparent"),
    Speech(m, "You’re making great progress, Naoki.", "transparent"),
    Speech(n, "…", "transparent"),
    Speech(n, "The ravens told me something strange today.",
        "raven_naoki_neutral"),
    Speech(m, "What? The ravens spoke to you?", "mc_happy"),
    Speech(
        n,
        "…No. I suppose they didn’t really speak to me. But I overheard them.",
        "mc_neutral"),
    Speech(
        n,
        "There’s a rumor that the humans who come here are typically kinder.",
        "transparent"),
    Speech(n, "And so these are safer parts to fly to.", "raven_naoki_happy"),
    Speech(n, "But…", "raven_naoki_neutral"),
    Speech(n, "It was difficult to understand them.", "transparent"),
    Speech(m, "Were they far away?", "mc_sad"),
    Speech(
        n,
        "No… It was as if their speech was garbled. Like I lost my fluency.",
        "transparent"),
    Speech(
        n,
        "Am I going to lose everything? Will I never be able to talk to them again?",
        "raven_naoki_sad"),
    Speech(
        m,
        "…I’m sorry, Naoki. That’s not something you should be losing, no. Are you looking for your family from before?",
        "transparent"),
    Speech(n, "I’m not. But, I wonder if I’d even be able to recognize them.",
        "transparent"),
    Speech(n, "If they’d recognize me.", "transparent"),
    Speech(
        nar,
        "It’s not until Naoki’s wings droop that I realize he hasn’t stretched them in a while.",
        "transparent"),
    Speech(
        nar,
        "They’re almost invisible against the black of the night, nothing but shadows to accompany us.",
        "transparent"),
    Speech(m, "Um. I have a new job for you, if you don’t mind.", "mc_happy"),
    Speech(n, "Yes.", "raven_naoki_frown"),
    Speech(
        m,
        "You seem to do well with remembering things and gathering information. I’d like it if you continued to do that with purpose.",
        "raven_naoki_neutral"),
    Speech(n, "From the animals?", "transparent"),
    Speech(
        m,
        "Yes. It’s difficult for me to find the time to communicate with the mountain residents atop my deity duties.",
        "mc_sad"),
    Speech(
        m,
        "But you… you understand them in a unique way that I cannot. I’d like to give that task to you.",
        "mc_neutral"),
    Speech(
        m,
        "So please let me know whatever you find. More rumors or tales or legends that the residents pass along.",
        "transparent"),
    Speech(
        m,
        "It’s helpful to know what they’re thinking to plan for the future or to fix something wrong.",
        "mc_happy"),
    Speech(n, "I can do that.", "transparent"),
    Speech(
        m,
        "Thank you! And, consider listening and observing as a vital part of your rounds.",
        "transparent"),
    Speech(
        n,
        "…I think you are giving me a task as an excuse for me to stay in-touch with my raven side.",
        "raven_naoki_happy"),
    Speech(m, "It’s an important task!", "mc_blush"),
    Speech(n, "I know. I believe you.", "mc_neutral"),
    Speech(n, "I don’t believe you’ve ever lied to me about anything, really.",
        "transparent"),
    Speech(
        n, "I will do my best to live up to your expectations.", "transparent"),
    Speech(m, "You exceed them every day.", "mc_happy"),
    Speech(
        n, "You tend to give me undeserved compliments.", "raven_naoki_happy"),
    Speech(m, "I do not!", "mc_blush"),
    Speech(n, "Ha ha…", "transparent"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // MC offers to teach Naoki things like basic reading, writing, and so forth. MC works a little too much and Naoki thinks it’s strange there’s so much human literature in MCs collection.
    // todo bg outdoor pathway CORNER, day
    Speech(m, "Good morning, Naoki!", "mc_happy"),
    Speech(n, "Good morning.", "naoki_neutral"),
    Speech(nar, "He’s hidden his wings again… I wonder why?", "mc_neutral"),
    Speech(
        m, "Naoki… why don’t you start in the library today?", "transparent"),
    Speech(
        nar,
        "He folds his arms into his sleeves, looking scandalized by my small suggestion.",
        "naoki_sad"),
    Speech(
        n,
        "We do not need to clean the library yet. I thought we were focusing on the walkways?",
        "naoki_neutral"),
    Speech(
        m,
        "I actually don’t mean for you to clean the library today. I thought you might enjoy going through the tomes for an hour or two.",
        "transparent"),
    Speech(
        n,
        "I absolutely cannot spend my time like that when you are still working, Goddess.",
        "naoki_sad"),
    Speech(nar, "I knew he’d say that…", "mc_sad"),
    Speech(m, "Naoki. You know I want you to live here, right? Not just work.",
        "mc_neutral"),
    Speech(
        n,
        "…Is that what you are doing, day after day? Living, not just working?",
        "naoki_neutral"),
    Speech(m, "I…", "transparent"),
    Speech(
        nar,
        "I’m honestly a bit speechless. Naoki has never confronted me like this before.",
        "mc_sad"),
    Speech(n, "I apologize.", "naoki_sad"),
    Speech(
        m,
        "No… no, you are free to speak your mind with me. I was just surprised.",
        "mc_neutral"),
    Speech(m, "What is living to you, Naoki?", "transparent"),
    Speech(n, "Serving as your familiar.", "transparent"),
    Speech(m, "Well… If that’s how you feel.", "mc_happy"),
    Speech(m, "Here.", "mc_neutral"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // todo bg outside shrine, day
    Speech(
        nar,
        "I walk past scrolls and tomes to pick up a thin book that sits red and pretty, tucked in the corner of a shelf.",
        "transparent"),
    // screen shake
    Speech(
        m,
        "This is a children’s book, admittedly. But it’s a great start. There are a lot of pictures and simple words. How about you come and study here every day after you ring the Bonshō?",
        "mc_happy"),
    Speech(n, "Study?", "naoki_sad"),
    Speech(
        m,
        "Yes. The things that I teach you. For example, this character here… is pronounced ‘na.’",
        "transparent"),
    Speech(m, "And if we go to this page… this one is pronounced ‘oh.’",
        "naoki_neutral"),
    Speech(m, "And this one here is—", "mc_neutral"),
    Speech(n, "‘Ki.’", "transparent"),
    Speech(m, "That’s right!", "mc_happy"),
    Speech(n, "My name.", "transparent"),
    Speech(
        m,
        "And this is just one spelling. There are so many things for you to learn. What do you think?",
        "transparent"),
    Speech(n, "…I would appreciate your lessons.", "naoki_happy"),
    Speech(n, "As long as you have the time of course.", "naoki_neutral"),
    Speech(
        m,
        "We’ll make time. You’ve been a great help to me so far, Naoki. More than you probably realize.",
        "mc_neutral"),
    Speech(
        nar,
        "Naoki looks the book over in his hands before giving me a small smile.",
        "naoki_happy"),
    Speech(n, "Then I will graciously accept the offer.", "transparent"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // todo bg room, night, no Naoki
    Speech(nar, "*Thump, thump, thump!*", "transparent"),
    Speech(nar, "I startle to sit up in my bed as footsteps rush to my door.",
        "transparent"),
    Speech(m, "H-hello?", "mc_frown"),
    // screen shake
    // Naoki appear
    Speech(n, "MC!", "naoki_frown"),
    Speech(m, "Gah! Y-yes? Naoki, it’s late!", "transparent"),
    Speech(
        nar,
        "He takes it as an invitation, hurrying to kneel at my side and show me a page of the book he’s holding.",
        "transparent"),
    Speech(n, "Goddess. Please, what does this say?", "naoki_neutral"),
    Speech(m, "What…?", "mc_sad"),
    Speech(nar, "I skim the page, increasingly confused the more I read.",
        "transparent"),
    Speech(
        m,
        "This is a history book of folktales, Naoki. This page in particular is about a shapeshifting tanuki. This isn’t one of the children’s books I gave you?",
        "transparent"),
    Speech(n, "I know! But…", "naoki_sad"),
    Speech(m, "What is it?", "mc_neutral"),
    Speech(
        n,
        "Is the tanuki happy? It seems that this story is happy, but aren’t they doing something bad together?",
        "transparent"),
    Speech(
        m,
        "Well, yes… in some versions, the human and the tanuki are scamming someone together.",
        "transparent"),
    Speech(n, "There are so many stories of humans in your collection.",
        "naoki_neutral"),
    Speech(m, "I-I suppose. But, Naoki… you should sleep.", "mc_sad"),
    Speech(n, "Mm… Yes. I apologize for the intrusion.", "naoki_sad"),
    Speech(m, "It’s okay… Goodnight, Naoki.", "mc_happy"),
    Speech(
      nar,
      "Naoki closes the book but doesn’t leave. He continues to sit and watch as I lay back down.",
      "transparent",
    ),
    Speech(m, "Um… yes?", "mc_sad"),
    Speech(n, "What do you like to eat, MC?", "transparent"),
    Speech(m, "Food…? I-I guess I like hot soups.", "mc_neutral"),
    Speech(n, "Do you have a favorite color?", "transparent"),
    Speech(
        m,
        "Not really… I suppose I like bright, natural colors. Greens and yellows and blues",
        "mc_neutral"),
    Speech(n, "Do you have a favorite book?", "transparent"),
    Speech(
        m,
        "Naoki… you should really go to bed. What’s with all these questions?",
        "transparent"),
    Speech(
        n,
        "…I do not know much about myself or you. No book can give me those answers.",
        "naoki_sad"),
    Speech(n, "Goodnight.", "naoki_neutral"),
    Speech(
        nar,
        "Before I can ask, Naoki stands and promptly leaves me to sit in the darkness of my room, bowing before sliding the door shut.",
        "transparent"),
    // screen shake
    Speech(m, "Jeez…", "mc_happy"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    //Naoki finds his first trap - a dying fox within it and he’s shaken about poachers/humans
    // todo bg bamboo forest, day
    Speech(
        m,
        "I agree that you understand the route, but I don’t want to leave this large task to you alone.",
        "mc_sad"),
    Speech(
        n,
        "But it would give you so much extra time. I thought that was the point of teaching me how to survey the mountain.",
        "naoki_sad"),
    Speech(n, "It’s been a month since I began.", "transparent"),
    Speech(
        nar,
        "He’s going to think I don’t trust him, but I’m honestly just concerned…",
        "transparent"),
    Speech(nar, "And I was right to be, in hindsight.", "transparent"),
    Speech(n, "!", "naoki_frown"),
    Speech(n, "MC…!", "transparent"),
    // screen shake
    Speech(m, "Coming! What’s wrong?", "mc_frown"),
    Speech(n, "A-ah…", "naoki_sad"),
    Speech(nar, "Naoki pales as he comes to a sudden stop.", "transparent"),
    Speech(
        nar,
        "Normally, the early golden sunlight of the morning makes this part of the forest seem to rain glitter through the canopies.",
        "transparent"),
    Speech(
        nar,
        "Today it mingles with blood sprinkled across the forest flooring and makes it difficult to see where it starts or ends.",
        "transparent"),
    Speech(
        nar,
        "There’s no warpath to make sense of it, but a single fox with its bottom half still in a trap.",
        "transparent"),
    Speech(
        nar,
        "I quickly drop to my knees to assess the damage, to see if today I’m saving an animal…",
        "transparent"),
    Speech(nar, "…or praying for it.", "mc_sad"),
    Speech(n, "W-we have to get it out, right? How do I help?", "transparent"),
    Speech(m, "Naoki. Wait.", "transparent"),
    Speech(n, "Wait? Wait why? She’s dying!", "naoki_frown"),
    Speech(
        m,
        "If we move the trap too quickly, we could do more harm than help.",
        "mc_neutral"),
    Speech(m, "Please calm down.", "transparent"),
    Speech(n, "…Yes.", "naoki_sad"),
    Speech(
        nar,
        "He kneels shakily at my side as I get to work, carefully prying the contraption open. More blood seems to gush forth but I can’t let it distract me.",
        "transparent"),
    // screen shake
    Speech(
        nar,
        "The fox scratches weakly at my hand in self-defense and Naoki bristles.",
        "naoki_frown"),
    Speech(m, "It’s okay. You’re alright.", "mc_happy"),
    Speech(
        nar,
        "A small consolation to someone that I now see, without a doubt, is dying.",
        "mc_neutral"),
    Speech(m, "There you are…", "transparent"),
    Speech(
        nar,
        "With the trap removed, I take out my hidden pouch’s supplies to see if I can stop the bleeding.",
        "transparent"),
    Speech(n, "What can I do? Please.", "naoki_sad"),
    Speech(m, "If you can pet, that’d help a lot.", "mc_happy"),
    Speech(n, "Um…", "naoki_neutral"),
    Speech(m, "Like this.", "transparent"),
    Speech(
        nar,
        "I pause for only a moment to scratch the top of Naoki’s head to demonstrate.",
        "transparent"),
    Speech(
        nar, "He freezes up before relaxing into the touch.", "naoki_neutral"),
    Speech(m, "On her head.", "transparent"),
    Speech(n, "Understood.", "naoki_frown"),
    Speech(
        nar,
        "He methodically strokes the fur between her ears as I mix my herbs into a usable paste.",
        "mc_neutral"),
    Speech(nar, "It’s nice having Naoki here for the hard moments like these.",
        "transparent"),
    Speech(nar, "Soon enough, the fox is sleeping peacefully in its wrappings.",
        "transparent"),
    Speech(m, "The hardest part is always the waiting.", "mc_sad"),
    Speech(n, "…How could this happen? Why? What is this?", "naoki_sad"),
    Speech(
        m,
        "The poachers set up traps. They hope to capture certain animals.",
        "transparent"),
    Speech(n, "There are less cruel ways to eat and scavenge.", "naoki_frown"),
    Speech(
        m,
        "I agree. Traps are forbidden here because of the harm they can do to just about anyone.",
        "transparent"),
    Speech(n, "…Including yourself.", "naoki_sad"),
    Speech(
        m,
        "Yes. But it’s okay, that’s why we do our rounds to make sure something like this doesn’t happen often.",
        "mc_neutral"),
    Speech(n, "…", "transparent"),
    Speech(
        nar,
        "Naoki buries his hands in his sleeves as he stares down at the broken trap.",
        "transparent"),
    Speech(
        n,
        "It was hidden. I didn’t realize what exactly they looked like. This is… my fault. I think I passed this.",
        "transparent"),
    Speech(
        m,
        "It’s okay, Naoki… You didn’t know. If it’s anyone’s fault it’s mine.",
        "mc_sad"),
    Speech(
        n,
        "No… no, this could’ve been you. You could’ve been hurt because I wasn’t thinking.",
        "transparent"),
    Speech(n, "And this fox… she’s hurt. She could—!", "naoki_frown"),
    Speech(m, "Don’t…", "transparent"),
    Speech(m, "I’m telling you it’s okay. Believe me, please?", "transparent"),
    Speech(n, "…Yes.", "naoki_sad"),
    Speech(n, "What should we do now with the fox?", "naoki_neutral"),
    Speech(
        m,
        "She’s too hurt to leave to her family. We should take her back to the temple.",
        "mc_neutral"),
    Speech(n, "I’ll carry her.", "transparent"),
    Speech(m, "Appreciated.", "mc_happy"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // todo bg room, day
    Speech(
        m,
        "Naoki. Maybe medicine is in your future. You’re very intuitive and gentle.",
        "mc_happy"),
    Speech(
        nar,
        "He doesn’t share my enthusiasm as he focuses on measuring the portion sizes I gave him.",
        "naoki_frown"),
    Speech(n, "Per… haps…", "transparent"),
    Speech(n, "There. Perfect.", "naoki_happy"),
    Speech(m, "Extremely perfect.", "transparent"),
    Speech(m, "Let’s let her rest and go elsewhere for now.", "mc_neutral"),
    Speech(n, "Okay.", "transparent"),
    Speech(m, "Follow me. Let me grab my pail and let’s take a walk.",
        "mc_neutral"),

    // todo bg pond, day
    Speech(m, "Here it is.", "mc_happy"),
    Speech(n, "Are we retrieving more water?", "naoki_neutral"),
    Speech(m, "Mhmm. And you can sit here and rest. You did great work today.",
        "transparent"),
    Speech(n, "I will not rest while you work.", "naoki_sad"),
    Speech(
        m,
        "I don’t mind if you want to, Naoki. You look drained. This place has restorative properties.",
        "mc_neutral"),
    Speech(n, "Then I will rephrase. I do not want to rest.", "naoki_neutral"),
    Speech(
        n,
        "And you look far more drained than I. Your left leg has been shaking.",
        "transparent"),
    Speech(m, "Oh! Has it? I didn’t notice.", "mc_blush"),
    Speech(n, "…", "transparent"),
    Speech(
        nar,
        "Naoki gently pries the pail from my hand before putting a hand on my shoulder and pushing me to sit on the rocks.",
        "transparent"),
    Speech(m, "I’m okay! Really!", "mc_sad"),
    Speech(
        nar,
        "He doesn’t listen. Naoki slips off my getas and only pauses when he reaches for my feet.",
        "transparent"),
    Speech(n, "May I?", "naoki_happy"),
    Speech(m, "I… guess…", "transparent"),
    Speech(
        nar,
        "Those gentle hands of his guide my feet into the soothing, but cold water. Naoki places my shoes next to me and moves further down to scoop a bucket of water.",
        "naoki_neutral"),
    Speech(
        n,
        "MC. Please tell me about the poachers. If I can recognize what type of creature they are, maybe I can help stop them.",
        "transparent"),
    Speech(m, "Oh… Poachers aren’t a name of an animal, Naoki.", "mc_neutral"),
    Speech(n, "What?", "naoki_sad"),
    Speech(
        m,
        "Poachers are what we call humans who trespass the mountain and kill. They’re the only ones who set traps like that.",
        "transparent"),
    Speech(n, "Poachers are… humans?", "transparent"),
    Speech(m, "Yes.", "mc_sad"),
    Speech(n, "All of them?", "transparent"),
    Speech(m, "Unfortunately.", "transparent"),
    Speech(n, "So poachers… poachers are why we survey the mountain?",
        "naoki_frown"),
    Speech(
        m,
        "They’re not the sole reason, but they are the biggest and most immediate one.",
        "mc_neutral"),
    Speech(
        n,
        "These humans come to the mountain for the sole purpose of thievery and torture and don’t care who gets hurt in the process.",
        "transparent"),
    Speech(m, "Not all humans, just the poachers.", "mc_sad"),
    Speech(
        n, "…Are these poachers the reason ravens go missing?", "transparent"),
    Speech(m, "I can’t say for certain, but it’s possible I suppose.",
        "transparent"),
    Speech(m, "There are other animals who can be to blame.", "mc_neutral"),
    Speech(
        n,
        "Other animals leave behind carcasses for burials. They don’t torture their prey.",
        "naoki_sad"),
    Speech(m, "Naoki…", "mc_sad"),
    Speech(
        nar,
        "He’s nearly knee-deep in the water now, pacing and distracted by his own spiraling thoughts.",
        "transparent"),
    Speech(m, "Come sit with me?", "mc_neutral"),
    Speech(
        nar,
        "Naoki wades through the water and places the full bucket next to me, but he doesn’t get out to sit on the rocks.",
        "naoki_neutral"),
    Speech(
        n,
        "There’s a legend I’ve known of my whole life. A warning. One not just the ravens know.",
        "transparent"),
    Speech(m, "Oh? Yes?", "transparent"),
    Speech(
        nar,
        "Naoki sinks further down in the water where it’s shallow in front of me, down until he’s kneeling between my legs and his long hair floats on the clear surface.",
        "transparent"),
    Speech(n, "The warning is of a twinkling jaw.", "naoki_sad"),
    Speech(
        n,
        "Of an animal that waits, completely still, for anyone to be swallowed.",
        "transparent"),
    Speech(n, "I see now that it was not an animal, but a human trap.",
        "transparent"),
    Speech(m, "Yes… that does sound like a trap.", "mc_sad"),
    Speech(
        nar,
        "He peers up at me for a moment before deciding to take my dangling feet and set them on his lap to use as a foot rest.",
        "transparent"),
    Speech(m, "…", "mc_blush"),
    Speech(
        nar,
        "Despite wanting to hurry back to work, I say nothing and let the peaceful moment pass.",
        "transparent"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // todo bg pottery room, day
    Speech(m, "Naoki, it’s going to burn…", "mc_sad"),
    Speech(n, "Huh? Ah! Sorry!", "raven_naoki_sad"),
    // todo bg hot spring, day
    Speech(m, "Naoki…", "mc_sad"),
    Speech(n, "…I swept the debris into the spring. I know. I’ll fix it.",
        "raven_naoki_sad"),
    // todo bg boulder and flowers, sunset
    Speech(m, "Naoki, you cut yourself…", "mc_sad"),
    Speech(n, "I’ll clean it. My apologies.", "raven_naoki_sad"),
    // todo bg room, night
    Speech(m, "Naoki.", "mc_frown"),
    Speech(n, "Yes? I’m sorry, did I forget something?", "raven_naoki_sad"),
    Speech(m, "This is my room, Naoki.", "mc_sad"),
    Speech(n, "Oh.", "raven_naoki_neutral"),
    Speech(n, "Oh!", "raven_naoki_blush"),
    Speech(n, "I’m so sorry. I’ll go.", "transparent"),
    Speech(m, "No, just wait.", "transparent"),
    Speech(
        m,
        "Are you going to be okay for tomorrow? It’s your first visit to the tribute house.",
        "raven_naoki_neutral"),
    Speech(
        m,
        "If you need some time, you can stay here and try again next time.",
        "mc_neutral"),
    Speech(n, "No!", "raven_naoki_frown"),
    // todo screen shake
    Speech(n, "N-no, I mean…", "raven_naoki_sad"),
    Speech(n, "I can do it. I want to go.", "raven_naoki_neutral"),
    Speech(m, "Okay… did you want to go like this?", "transparent"),
    Speech(n, "I don’t know yet.", "transparent"),
    Speech(
        m,
        "It’s better to have a more human appearance for the tributes. At least the first one.",
        "mc_happy"),
    Speech(n, "…Goodnight, Goddess.", "raven_naoki_sad"),
    Speech(
        nar,
        "Naoki bows when he exits, wings half-extended upwards as he does.",
        "mc_neutral"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // Naoki’s first visit to the tribute house, MC sees his fear and anger
    // todo bg temple entrance, day
    Speech(
        m,
        "I can’t wait to introduce you. I think many people will be excited to see you.",
        "mc_happy"),
    Speech(
        nar,
        "Naoki’s more focused today, seeming to relax after releasing the healed fox back into the mountain.",
        "transparent"),
    Speech(n, "There’s a lot of voices in the distance.", "naoki_sad"),
    Speech(
        nar,
        "He hides his face behind the parchment he insisted on bringing to take notes of the tributes.",
        "transparent"),
    Speech(
        m,
        "You really don’t need to do anything, you know. I haven’t taught you too much writing yet.",
        "mc_sad"),
    Speech(m, "It’s enough for me just to have you here.", "mc_happy"),
    Speech(n, "I can write it.", "naoki_happy"),
    Speech(m, "You… can?", "mc_sad"),
    Speech(
        n,
        "When you told me the typical types of tributes, I practiced the letters for them. I’ve already set up a system to keep count of each gift for temple inventory.",
        "transparent"),
    Speech(m, "What… really? Naoki, thank you!", "mc_blush"),
    Speech(n, "It is my duty.", "naoki_neutral"),
    Speech(
        nar,
        "He bows to me and I have to stop myself from just grabbing him in a hug.",
        "transparent"),
    Speech(m, "Here we are.", "mc_neutral"),
    Speech(
        nar,
        "As we approach the sandō steps, the crowd greets us with loud cheers and some jeers.",
        "naoki_frown"),
    Speech(
        nar,
        "They fill out the steps but respectfully move to give us room to climb.",
        "transparent"),
    Speech(
        nar,
        "But as I take the first step, I pause and see that Naoki’s not following.",
        "transparent"),
    Speech(
        m,
        "Naoki? It’s okay, no need to be shy. You don’t have to do anything.",
        "mc_happy"),
    Speech(
        nar,
        "When he tears his gaze away from the crowd and back to me, I shiver.",
        "mc_neutral"),
    Speech(nar, "He doesn’t look skittish at all. He looks… angry. Afraid.",
        "transparent"),
    Speech(nar, "A lump forms in my throat and I can’t swallow it.",
        "transparent"),
    Speech(nar, "I take his hand and tug him with me, instead.", "transparent"),
    // todo bg outside shrine, day
    Speech(
        nar,
        "Naoki doesn’t kneel at my side throughout the hours tributes. He sits at a distance behind me, nothing but the barely audible sound of his brush strokes letting me know he’s here at all.",
        "naoki_neutral"),
    Speech(nar, "It’s even lonelier than if I were alone.", "mc_sad"),
    Speech(m, "Thank you!", "mc_happy"),
    Speech(man, "Blessings to you, Goddess!", "transparent"),
    Speech(man, "I have a request, if possible…", "transparent"),
    Speech(m, "Of course I will hear out any request.", "transparent"),
    //Naoki confronts a human and MC ends proceedings early, making little of the incident.
    Speech(n, "...!", "naoki_frown"),
    // screen shake
    Speech(man, "Oof!", "mc_blush"),
    Speech(m, "Naoki!", "transparent"),
    Speech(n, "…", "naoki_sad"),
    Speech(
        m, "I-I’m so sorry, sir. Are you okay? Let me help you up…", "mc_sad"),
    // screen shake
    Speech(
        man,
        "Did I do something wrong? Is that your new guard? I thought he was your familiar?",
        "transparent"),
    Speech(
        m,
        "You didn’t. Please forget this incident and accept our humblest apologies.",
        "transparent"),
    Speech(man, "Okay…", "transparent"),
    Speech(man, "I was just going to ask for less rain on the west…",
        "transparent"),
    Speech(m, "Yes. Thank you for letting me know.", "mc_happy"),
    Speech(m, "Goodbye!", "transparent"),
    Speech(m, "…", "mc_frown"),
    Speech(n, "…", "transparent"),
    Speech(m, "Sigh.", "mc_sad"),
    Speech(
        m,
        "Everyone! Thank you for your tributes today. There are matters I must pray to and I will have to end proceedings early.",
        "mc_happy"),
    Speech(
        nar,
        "The crowd is understandably dissatisfied by the sudden ending, but they don’t question me as they depart, some leaving behind their tributes.",
        "mc_neutral"),
    Speech(
        m, "We will only carry back the perishables for now.", "transparent"),
    Speech(n, "…", "transparent"),
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

  String? getImage() {
    return textBank[textNumber].image;
  }

  void reset() {
    textNumber = 0;
  }

  List<Speech> textBank = [
    // bg mountain view, sunset
    Speech(
        nar,
        "As we walk back to the central shrine and far enough away from prying ears, I finally stop and put down some of the tributes.",
        "transparent"),
    Speech(
        nar,
        "Naoki places his down as well, not looking me in the eye as if he knows what I’ll say.",
        "naoki_sad"),
    Speech(m, "Naoki. What was that?", "mc_frown"),
    Speech(
        m,
        "You can never, ever do something like that again. You attacked a human!",
        "transparent"),
    Speech(m, "If something like that got out, I don’t know what—", "mc_sad"),
    // screen shake
    Speech(m, "Ah?!", "mc_sad"),
    Speech(nar, "Naoki grabs my hand and tugs it close to his face.",
        "naoki_frown"),
    Speech(n, "You’re naïve.", "transparent"),
    Speech(m, "What…?", "transparent"),
    Speech(
        nar,
        "He brushes his nose against my palm and exhales, thumb pressing into the skin.",
        "naoki_sad"),
    Speech(n, "The humans… they prey on the mountain fauna.", "transparent"),
    Speech(m, "Some of the poachers do. We already discussed this, Naoki.",
        "transparent"),
    Speech(n, "That one reeked of animal blood!", "naoki_frown"),
    Speech(
        n,
        "They come to pay you tribute and request things while directly disobeying you.",
        "naoki_sad"),
    Speech(n, "Disrespecting you!", "naoki_frown"),
    Speech(n, "And it wasn’t just him. So many of them.", "transparent"),
    Speech(
        n,
        "Nothing but the stench of blood for hours, only that man was fresh.",
        "transparent"),
    Speech(n, "And now I can smell it on you, too.", "naoki_sad"),
    Speech(nar, "He releases my hand and tucks his arms into his sleeves.",
        "transparent"),
    Speech(m, "…I didn’t realize, Naoki.", "transparent"),
    Speech(n, "How could you not!", "naoki_frown"),
    Speech(
        nar,
        "The lump that’s been forming this entire day now chokes me as Naoki looks at me with… distrust.",
        "transparent"),
    Speech(n, "You…", "naoki_sad"),
    Speech(n, "You love humans.", "transparent"),
    Speech(
        n,
        "You keep exclusively human texts in your library. You do not speak to most of the fauna but hold special ceremonies for the same beings who have their own term for being specialized killers.",
        "transparent"),
    Speech(n, "You ask me to hide my wings!", "naoki_frown"),
    Speech(
        n,
        "You turn me into a monster that can’t be told apart from the poachers we hate.",
        "transparent"),
    Speech(n, "I… I don’t know if you’re as equal as you claim to be.",
        "naoki_sad"),
    Speech(n, "I just…", "transparent"),
    // MC consoling and Naoki’s ultimatuSpeech(m, "Does MC love the mountain, or does she love the humans? MC answers with the animals of the mountain (branch A) or refuses (branch B)
    Speech(m, "Naoki.", "mc_neutral"),
    Speech(m, "I understand your feelings… but please try to understand mine.",
        "mc_sad"),
    Speech(
        m,
        "My life is not easy. Life is not easy. There is no pure good or pure bad.",
        "transparent"),
    Speech(
        m,
        "My job is to keep balance, not to be something all-seeing and all-knowing that can control and punish as I see fit.",
        "transparent"),
    Speech(n, "Is that what this is?", "naoki_frown"),
    Speech(m, "What?", "mc_frown"),
    Speech(n, "Does this look balanced to you?", "transparent"),
    Speech(
        n,
        "Does receiving tributes from only humans and only learning about humans feel balanced to you?",
        "transparent"),
    Speech(
        m,
        "Naoki, only humans even have a written language. It’s not like that.",
        "mc_sad"),
    Speech(m, "They have different needs, different methods of communication.",
        "transparent"),
    Speech(n, "So you have a reason to love them more.", "naoki_sad"),
    Speech(m, "That’s not what I meant and you know it.", "transparent"),
    Speech(n, "…I need an answer.", "transparent"),
    Speech(
        n,
        "Who do you love more? The animals of the mountain or the humans?",
        "naoki_frown"),
    Speech(m, "What…", "transparent"),
    Speech(m, "How could you ask something like that?", "mc_frown"),
    Speech(n, "Please.", "naoki_sad"),
    Speech(
        nar,
        "He bows low to me, as if that will hide the truth in his eyes—fear.",
        "transparent"),
    // choice A
    Speech(m, "The animals of the mountain.", "mc_happy"),
    //jump to NaokiAct3BranchA
    // choice B
    Speech(m, "I can’t answer that, Naoki.", "mc_happy"),
    //jump to NaokiAct3BranchB
  ];
}
// NaokiAct3BranchA = [
//         //Naoki understands but does not accept MC's stance on humans and animals.
//         // bg mountain view, sunset (continuation of choice A)
//         Speech(n, "…Okay.", "mc_neutral"),
//         Speech(n, "If you say so, I believe you.", "naoki_neutral"),
//         Speech(n, "I’m sorry for my behavior.", "naoki_blush"),
//         Speech(m, "Do you feel better now?", "mc_sad"),
//         Speech(n, "Yes. But…", "naoki_neutral"),
//         Speech(n, "It’s still difficult for me to accept your feelings on humans while you claim to love animals.", "transparent"),
//         Speech(n, "I cannot trust them like you do.", "naoki_sad"),
//         Speech(m, "I don’t expect you to feel the exact same way I do, Naoki.", "mc_happy"),
//         Speech(m, "I expect you to simply want the best for us.", "mc_neutral"),
//         Speech(n, "…I can do that.", "naoki_happy"),
//         Speech(m, "I think, with time, you can see humans for the kind beings they can be.", "mc_happy"),
//         Speech(n, "I think we are getting ahead of ourselves.", "transparent"),
//         Speech(m, "Ha ha… Perhaps.", "transparent"),
//         Speech(n, "Humans seem to have more unkindness to them than can be easily seen. They seem to do whatever they want just because they want to.", "naoki_sad"),
//         Speech(n, "They fall prey to their own instincts more than hatchlings.", "naoki_frown"),
//         Speech(m, "I think you’re biased. You will see many more humans throughout your life than just today. You will see.", "transparent"),
//         Speech(n, "That doesn’t sound like a good thing to me.", "naoki_happy"),
//         Speech(m, "Will you try to keep an open mind about it, at least?", "mc_happy"),
//         Speech(n, "Hm…", "naoki_neutral"),
//         Speech(n, "Have you ever been… hunted?", "naoki_sad"),
//         Speech(m, "No… I can’t say that I have.", "mc_sad"),
//         Speech(n, "Then you might understand why it is hard for me, who was a crow, to see hunted animals.", "transparent"),
//         Speech(n, "Why I might relate to them more than a human.", "transparent"),
//         Speech(m, "Yes… I can see that. I’m sorry, Naoki.", "transparent"),
//         Speech(n, "…But I will try my best, as you command.", "naoki_happy"),

//         //As Naoki and MC continue with their duties, Naoki’s anger turns into more of a fearfulness, but he comes to appreciate (gradually) her sense of equality in regards to all beings
//         // bg outdoor pathway CORNER, day, only MC

//         Speech(nar, "It was scary having an argument with Naoki, but after I confirmed I do love the mountain animals, he seems to be trying to understand humans.", "mc_neutral"),
//         Speech(nar, "The work never stops, but now more can be accomplished than ever before.", "transparent"),
//         Speech(nar, "The aches and pains I’ve been accustomed to now come and go. I don’t think I’ve ever slept this much in my life.", "mc_happy"),
//         Speech(n, "MC!", "mc_neutral"),
//         // Raven Naoki appear
//         Speech(nar, "Naoki rushes to me, breathless, a broom still in hand that will snap in half if he clutches it any tighter.", "raven_naoki_blush"),
//         Speech(m, "Y-yes? What’s wrong?", "mc_sad"),
//         Speech(n, "T-there’s a… a human! There’s a human in the temple!", "raven_naoki_frown"),
//         Speech(m, "Oh! Let’s go welcome them!", "mc_happy"),
//         // screen shake
//         Speech(n, "What? No! It’s an intruder!", "transparent"),
//         Speech(m, "Humans are not forbidden to come to the temple, Naoki.", "mc_sad"),
//         Speech(n, "Well, they should be!", "transparent"),
//         Speech(wo, "Excuse me, MC?", "transparent"),
//         // screen shake
//         Speech(n, "You will not address her so casually!", "transparent"),
//         Speech(m, "Oh! It’s you!", "mc_happy"),
//         Speech(m, "Naoki. This woman is from the family that has lived closest to this temple for generations.", "mc_neutral"),
//         Speech(m, "Ina. It’s so nice to see you again. Have you come to repurpose our old materials?", "mc_happy"),
//         Speech(i, "I have! It’s also about time to replace your utensils, correct?", "transparent"),
//         Speech(m, "That would be lovely.", "transparent"),
//         Speech(m, "Naoki, please introduce yourself.", "mc_neutral"),
//         Speech(nar, "If I didn’t know him, it’d look like he was ready to completely ignore me.", "raven_naoki_sad"),
//         Speech(nar, "But Naoki sighs and gives a curt bow to Ina. It’s not an apology, but it’s something.", "transparent"),
//         Speech(n, "…Hello.", "raven_naoki_neutral"),
//         Speech(m, "You’ve gotten so big. Even your hair is so long now.", "mc_happy"),
//         Speech(nar, "I pat her head before turning to Naoki again.", "transparent"),
//         Speech(nar, "It’s as good a time as ever.", "mc_neutral"),
//         Speech(m, "Hey, Ina? If you have the time, would you mind visiting once a week or so?", "transparent"),
//         Speech(n, "W-what?", "raven_naoki_frown"),
//         Speech(i, "Sure. What would you like me to do?", "transparent"),
//         Speech(m, "My familiar is learning to write and you have such pretty handwriting. I think you’d be a much better teacher than I.", "mc_happy"),
//         // screen shake
//         Speech(n, "I don’t need it!", "transparent"),
//         Speech(m, "Yes, you really, really do.", "mc_frown"),
//         Speech(n, "Erk…", "raven_naoki_sad"),
//         Speech(i, "I can make time for that.", "transparent"),
//         Speech(m, "Thank you. I’d appreciate it.", "mc_happy"),
//         Speech(nar, "Ina takes off to pack up our old utensils and materials and Naoki waits until she’s out of sight before furiously flapping his wings.", "transparent"),
//         Speech(n, "Why?", "raven_naoki_frown"),
//         Speech(m, "You haven’t had much personal exposure. This will be a good opportunity for you to learn about kind humans.", "mc_neutral"),
//         Speech(n, "…I already know that.", "raven_naoki_sad"),
//         Speech(m, "What?", "mc_sad"),
//         Speech(n, "The way you speak and interact with humans is the same as with the other animals.", "raven_naoki_neutral"),
//         Speech(n, "I do not need to be locked in a room with a human to see that ‘Ina’ is nice.", "transparent"),
//         Speech(m, "…", "mc_blush"),
//         Speech(n, "What.", "raven_naoki_sad"),
//         Speech(m, "I’m just so happy to hear that, Naoki…", "transparent"),
//         Speech(n, "…I’m returning to work! I still do not see your point of view!", "raven_naoki_blush"),
//         Speech(m, "Have fun!", "mc_happy"),
//         Speech(n, "Hmph.", "transparent"),
//         Speech(nar, "Naoki’s wings stretch fully as he stalks away in the opposite direction of Ina.", "transparent"),
//         // Naoki off screen
//         Speech(m, "You’re pretty childish sometimes, Naoki!", "transparent"),
//         Speech(n, "You missed a spot!", "transparent"),
//         Speech(m, "Ha ha…", "transparent"),
//         //As MC and Naoki take a walk and Naoki tells of the horror he’s read of humans in books
//         // bg room, night, only MC
//         Speech(nar, "As promised, Ina comes to tutor Naoki the following week.", "mc_neutral"),
//         Speech(nar, "But I don’t know how it went. When she left, Naoki simply returned to work.", "mc_sad"),
//         Speech(nar, "It’s one of my first times going to Naoki’s room since he first became my familiar.", "mc_neutral"),
//         // screen shake
//         Speech(m, "Hello? Naoki?", "transparent"),
//         // Raven Naoki appear
//         Speech(n, "Oh. Hello.", "raven_naoki_neutral"),
//         Speech(m, "I’m just checking up on you.", "mc_happy"),
//         Speech(n, "Yes… Please, come in.", "raven_naoki_happy"),
//         Speech(m, "Sure. Thank you.", "transparent"),
//         Speech(m, "Oh… what’s all this, Naoki?", "mc_neutral"),
//         Speech(n, "Huh? A-ah…", "raven_naoki_blush"),
//         Speech(n, "I seem to have started a collection of sorts. I didn’t realize I had so much.", "transparent"),
//         Speech(nar, "Naoki’s room absolutely glitters with shiny objects neatly placed about.", "transparent"),
//         Speech(nar, "A few poetry books from the library sit next to his bedding, while the other half of the room is covered with sparkling rocks, glass, and metals that are organized by size and color.", "transparent"),
//         Speech(m, "Have you been collecting these the whole time?", "transparent"),
//         Speech(n, "‘A love that frees your heart is one that has been allowed to sprout wings.’", "raven_naoki_neutral"),
//         Speech(n, "Ahem…", "raven_naoki_blush"),
//         Speech(n, "Yes, since we began our mountain rounds…", "raven_naoki_sad"),
//         Speech(n, "I’ll clean it.", "transparent"),
//         Speech(m, "No! No, this is great!", "mc_happy"),
//         Speech(m, "If you like it, please keep it.", "transparent"),
//         Speech(n, "It’s okay?", "raven_naoki_neutral"),
//         Speech(m, "Of course it is. It makes you happy, right?", "transparent"),
//         Speech(m, "Never be afraid to do what makes you happy as long as it doesn’t hurt anyone.", "transparent"),
//         Speech(n, "Alright.", "transparent"),
//         Speech(n, "Then…", "raven_naoki_happy"),
//         Speech(n, "I would like to go on a walk with you.", "transparent"),
//         Speech(m, "Huh? Right now?", "mc_blush"),
//         Speech(n, "Yes. It would make me happy.", "transparent"),
//         Speech(m, "Oh. W-well, I suppose I am done working for today.", "mc_happy"),
//         Speech(n, "Ina mentioned a festival.", "raven_naoki_neutral"),
//         Speech(m, "Would you like to see a human festival, Naoki?", "transparent"),
//         Speech(n, "…Not in particular. But I suppose we can make it short.", "transparent"),
//         Speech(m, "Ha ha, yes. Short.", "mc_happy"),
//         // bg summer festival packed
//         Speech(nar, "We find a quiet spot right outside the local village, close enough to hear and see the festivities without being spotted.", "transparent"),
//         Speech(nar, "It’s absolutely bustling despite it being so late. People chat and walk among food stalls without a care in the world.", "transparent"),
//         Speech(nar, "Away from the warmth of fire and bodies, Naoki’s wings serve as a shield from the wind, stretched around us both.", "transparent"),
//         Speech(m, "What do you think, Naoki?", "mc_happy"),
//         Speech(n, "It’s loud.", "raven_naoki_neutral"),
//         Speech(m, "Ha ha… yes, I suppose it is.", "transparent"),
//         Speech(m, "But what have you learned recently on humans?", "mc_neutral"),
//         Speech(n, "The more I read about them, the worse they make their case.", "raven_naoki_sad"),
//         Speech(m, "Why’s that?", "transparent"),
//         Speech(n, "They document their own atrocities. It’s hard to believe good things about them.", "raven_naoki_frown"),
//         Speech(n, "Entire communities destroyed over things like thievery and prostitution. Scandals and murder about.", "transparent"),
//         Speech(m, "Surely you read something other than that?", "mc_sad"),
//         Speech(n, "If humans have much kindness to them, it is not in their history texts.", "raven_naoki_sad"),
//         Speech(m, "…Look there, Naoki.", "mc_happy"),
//         Speech(nar, "His gaze follows my finger that points to one of the food stalls and the performance artist next to it.", "transparent"),
//         Speech(m, "The artist puts on a show to attract people to buy food from the stall. He doesn’t do it for profit, but out of kindness.", "raven_naoki_neutral"),
//         Speech(m, "And that family there is learning a dance together.", "transparent"),
//         Speech(m, "And that couple there are attempting to hide while they kiss.", "transparent"),
//         Speech(n, "Why would they do that?", "raven_naoki_sad"),
//         Speech(m, "Well, I suppose it must be embarrassing for them.", "transparent"),
//         Speech(n, "I mean why do humans kiss at all? I see it often in the texts but there’s no formal explanation. Is it a type of mating call?", "transparent"),
//         Speech(m, "Ha ha…", "raven_naoki_neutral"),
//         Speech(m, "Sorry, I don’t mean to laugh.", "mc_blush"),
//         Speech(m, "It’s not always a mating call. Sometimes it is just a form of affection.", "mc_happy"),
//         Speech(n, "Then, should I be kissing you?", "raven_naoki_sad"),
//         Speech(m, "N-no! I-it’s complicated.", "mc_blush"),
//         Speech(n, "Hm…", "raven_naoki_neutral"),
//         Speech(n, "If you’re trying to get me to sympathize with the humans, it won’t work.", "mc_neutral"),
//         Speech(n, "Humans are anathema to the mountain and all of nature.", "raven_naoki_frown"),
//         Speech(m, "…You’re using big words and big ideas with a small mind.", "mc_frown"),
//         // screen shake
//         Speech(n, "How big must my mind be to forgive humans who hunt animals?", "transparent"),
//         Speech(m, "You are being biased against them and not looking at it logically.", "transparent"),
//         Speech(n, "Should I get closer to a trap then?", "transparent"),
//         Speech(m, "Humans are not so different from the rest of the animals!", "transparent"),
//         Speech(n, "…You believing that is the same as approving of their methods, of their killing.", "transparent"),
//         Speech(n, "Perhaps worse if you are a god.", "transparent"),
//         Speech(n, "Humans are prone to corruption. It’s in their blood. No amount of shiny festival lights will cover up their crimes! They’ll only keep going and going and—", "naoki_sad"),
//         Speech(m, "No!", "transparent"),
//         Speech(nar, "I shake my head as I feel myself reaching a boiling point that I haven’t before.", "transparent"),
//         Speech(m, "The only corruption I see right now is my familiar, so blinded by his fear and hatred to live up to the cause of equality.", "transparent"),
//         Speech(n, "…", "raven_naoki_sad"),
//         Speech(m, "I beg you to ponder why you feel this way. To take the time to find out how humans are different from one another.", "mc_sad"),
//         Speech(m, "For the good of the mountain.", "transparent"),
//         Speech(n, "…", "transparent"),

//         //During a night of chess, Naoki shares his reflections and compliments MC
//         //bg clearing by the lake, day
//         Speech(nar, "To my surprise, Naoki invited me to play chess today.", "mc_neutral"),
//         Speech(nar, "Apparently, Ina taught him and they play every time she comes.", "transparent"),
//         Speech(nar, "Which I don’t understand, considering his views on humans…", "mc_sad"),
//         Speech(n, "The next tribute is soon.", "raven_naoki_neutral"),
//         Speech(m, "Oh! Yes, it is. We’ll have to take a trip and clean the temple.", "mc_neutral"),
//         Speech(n, "Ever diligent.", "raven_naoki_happy"),
//         Speech(m, "Is there something on your mind?", "transparent"),
//         Speech(n, "Hm…", "raven_naoki_neutral"),
//         Speech(n, "I think… you’re incredible for how you manage to fit all the complexities of humans and animals like.", "transparent"),
//         Speech(nar, "Huh…?", "transparent"),
//         Speech(n, "Checkmate.", "raven_naoki_happy"),
//         Speech(m, "Gah! Were you trying to distract me?", "mc_frown"),
//         Speech(n, "Ha ha…", "transparent"),
//         Speech(n, "I mean my words with no ulterior motives.", "transparent"),
//         Speech(m, "…You’re hot and cold, Naoki.", "mc_sad"),
//         Speech(n, "Hm?", "raven_naoki_neutral"),
//         Speech(m, "You tell me you support my cause. You back out. You tell me I’m incredible for not hating humans, then tell me you hate humans.", "transparent"),
//         Speech(m, "It’s hard to believe you.", "raven_naoki_sad"),
//         Speech(n, "…I know. You are a saint for putting up with me.", "transparent"),
//         Speech(m, "I only wish you could see the world as I do. The only difference between us is my patience.", "mc_neutral"),
//         Speech(n, "Patience…", "transparent"),
//         Speech(n, "Yes. Patience.", "raven_naoki_happy"),
//         Speech(nar, "Naoki picks up my king piece and brings it close to his face.", "transparent"),
//         Speech(nar, "I never know what he’s thinking.", "transparent"),
//         //MC lets Naoki meet a human child and he changes his opinion on humans
//         // bg room, day
//         Speech(nar, "For the first time in what feels like years, I wake up from a dream.", "mc_neutral"),
//         Speech(nar, "I can’t remember it exactly. But the feeling of small hands in mine linger.", "mc_happy"),
//         // bg Hot spring, day
//         Speech(m, "Naoki!", "transparent"),
//         Speech(n, "Ah!", "raven_naoki_blush"),
//         Speech(n, "Y-yes?", "raven_naoki_frown"),
//         Speech(m, "When you’re done with your bath, please meet me at the entrance. We’re going to the shrine today.", "transparent"),
//         Speech(n, "The… shrine? With the humans?", "raven_naoki_sad"),
//         Speech(m, "Correct.", "transparent"),
//         Speech(n, "…Yes, MC.", "transparent"),
//         Speech(nar, "It doesn’t escape my notice how Naoki sinks further into the hot water as if he wants to escape under the bubbles.", "transparent"),
//         //bg temple entrance, day
//         Speech(m, "Here we are.", "mc_happy"),
//         Speech(n, "So we are.", "naoki_sad"),
//         Speech(nar, "I spot my target easily. I only need to shoot the child an encouraging smile before he comes barreling over and away from his parents.", "transparent"),
//         // screen shake
//         Speech(n, "A-ah!", "naoki_frown"),
//         Speech(m, "Hello there. How are you today, young one?", "transparent"),
//         Speech(c, "Hiii!", "transparent"),
//         Speech(m, "This is my friend, Naoki.", "transparent"),
//         Speech(n, "What do you think you’re doing?", "transparent"),
//         Speech(m, "Say hello, Naoki. Just talk.", "mc_happy"),
//         Speech(n, "U-uh… hello?", "naoki_sad"),
//         Speech(c, "You talk funny.", "transparent"),
//         Speech(n, "Excuse me?", "naoki_frown"),
//         Speech(c, "Your hair is so long.", "transparent"),
//         Speech(n, "What of it?", "transparent"),
//         // screen shake
//         Speech(n, "O-ow!", "naoki_sad"),
//         Speech(m, "Ha ha…", "transparent"),
//         Speech(c, "I’m sorry. Did that hurt? Please don’t cry.", "transparent"),
//         Speech(n, "Of course I’m not going to cry.", "naoki_frown"),
//         Speech(c, "Really?", "transparent"),
//         Speech(n, "Yes!", "naoki_sad"),
//         Speech(c, "I think I’d cry if I looked like a girl. Are you a girl?", "transparent"),
//         Speech(n, "What is the difference!", "naoki_frown"),
//         Speech(c, "I’m sorry, miss. I won’t touch your pretty hair anymore.", "transparent"),
//         Speech(n, "P-pretty?", "naoki_blush"),
//         Speech(m, "Well, you do have pretty hair, Naoki…", "transparent"),
//         Speech(nar, "He clicks his tongue and gently pushes the child’s hand away from his hair.", "naoki_frown"),
//         Speech(n, "You are a ridiculous human!", "transparent"),
//         Speech(c, "Aren’t you a human, too?", "transparent"),
//         Speech(n, "I… I’m different.", "transparent"),
//         Speech(nar, "He steps back and unfurls his wings with a heavy sigh.", "raven_naoki_sad"),
//         Speech(n, "See?", "raven_naoki_neutral"),
//         Speech(c, "Oooh! You have wings! That’s so cool!", "transparent"),
//         Speech(n, "Cool?", "raven_naoki_blush"),
//         Speech(c, "I want wings too! How did you do that!", "transparent"),
//         // screen shake
//         Speech(n, "Don’t tug on them!", "raven_naoki_frown"),
//         Speech(c, "Miss, can you fly? What kind of wings are they?", "transparent"),
//         Speech(n, "I don’t know. I’m a raven.", "raven_naoki_neutral"),
//         Speech(c, "Is that the black one?", "transparent"),
//         Speech(n, "Yes, it is.", "raven_naoki_happy"),
//         Speech(c, "I’ve never seen a raven up close.", "transparent"),
//         Speech(n, "That’s because you’re so small and ravens fly up high.", "transparent"),
//         Speech(c, "I’m not small!", "transparent"),
//         Speech(n, "Ha ha… Yes, you are. But that means you can see things ravens can’t, right? You’re closer to the ground.", "transparent"),
//         Speech(c, "Hmmm… I guess… But I wanna fly! I’d fly to the top of the mountain!", "transparent"),
//         Speech(n, "It’s far too cold up there. Not worth it at all. You’d freeze.", "transparent"),
//         Speech(c, "But I want to go! I don’t care!", "transparent"),
//         Speech(n, "You don’t care about freezing? You don’t mind being an icicle?", "transparent"),
//         Speech(c, "Wait… no, I don’t want that!", "transparent"),
//         Speech(n, "Are you sure? I heard icicles are a tasty treat.", "transparent"),
//         Speech(c, "Nooooo!", "transparent"),
//         Speech(n, "Ha ha ha ha…", "transparent"),
//         Speech(n, "There are many animals on the mountain that can fly you know. And even the ones who can’t have other fun things they can do.", "transparent"),
//         Speech(c, "Really?", "transparent"),
//         Speech(n, "Of course. You should appreciate what you have and learn about all the animals.", "transparent"),
//         Speech(c, "But I don’t know anything…", "transparent"),
//         Speech(n, "Then seek out information. Ask questions.", "transparent"),
//         Speech(c, "Okay… what do ravens eat? Do they like candy?", "transparent"),
//         Speech(n, "They eat all sorts of things. Meat and eggs, berries and other plants. I imagine they might candy as well.", "transparent"),
//         Speech(c, "Ohhh so they’re like me! I eat those too!", "transparent"),
//         Speech(n, "I… suppose you do.", "raven_naoki_neutral"),
//         Speech(man, "It’s time to go!", "transparent"),
//         Speech(c, "Oh! Coming!", "transparent"),
//         Speech(c, "I’m sorry, my mom and dad are waiting for me, Miss.", "transparent"),
//         Speech(n, "I don’t need an apology, don’t be silly.", "raven_naoki_happy"),
//         Speech(c, "Okay! Bye!", "transparent"),
//         // screen shake
//         Speech(n, "?!", "raven_naoki_blush"),
//         Speech(nar, "The child hugs Naoki before running back off to join his parents, mischievously grinning as he spins a feather between his fingers.", "transparent"),
//         Speech(n, "Sigh…", "raven_naoki_sad"),
//         Speech(m, "You had fun.", "transparent"),
//         Speech(n, "H-huh? I wouldn’t say that…", "transparent"),
//         Speech(n, "But I understand why you brought me here now.", "raven_naoki_neutral"),
//         Speech(n, "That was a human child. They didn’t know… anything. They were just as ridiculous as a cub.", "transparent"),
//         Speech(n, "If it’s not protected, it could just as easily fall prey to something.", "raven_naoki_sad"),
//         Speech(m, "That’s right, Naoki…", "transparent"),
//         Speech(nar, "Naoki exhales and watches as the child disappears out of view.", "transparent"),
//         Speech(n, "And it will grow up hunting like all carnivorous animals. For itself. For its parents.", "transparent"),
//         Speech(n, "It doesn’t know what it’s like to be a raven any more than a raven knows how to be a human.", "transparent"),
//         Speech(n, "It is just a child. It is not… evil. Or good.", "transparent"),
//         Speech(n, "…", "raven_naoki_neutral"),
//         Speech(n, "Thank you, MC. I think I understand now.", "transparent"),
//         Speech(m, "Do you really?", "mc_happy"),
//         Speech(n, "As much as I can at the moment.", "raven_naoki_happy"),
//         Speech(m, "Then I’m happy.", "transparent"),
//         Speech(n, "Well, that’s always a good thing.", "transparent"),
//         Speech(m, "Is it now?", "transparent"),
//         Speech(nar, "Naoki smiles in my direction for a moment before pacing the shrine on his own, gaze turned toward the clear sky.", "transparent"),
//         // Naoki prepares MC a meal and Naoki confesses (misunderstood) romantic feelings
//         //bg clearing by the lake, sunset
//         Speech(m, "Oh! There you are!", "mc_happy"),
//         Speech(m, "Ina told me to find you here. What’s going on?", "transparent"),
//         Speech(nar, "I’m worn from today’s duties, but I still manage to keep the weariness from my voice as I hurry to Naoki’s side.", "transparent"),
//         Speech(n, "There you are.", "naoki_happy"),
//         Speech(m, "What’s all this?", "mc_neutral"),
//         Speech(nar, "It’s a silly question as I approach. It’s clearly an elaborate dinner set up for us near the temple lake. The delicious smell of mint and crispy face makes its way to my nostrils.", "transparent"),
//         Speech(nar, "Naoki bows and waits for me to take a seat, which I do, albeit confused.", "transparent"),
//         Speech(m, "What’s the occasion, Naoki?", "transparent"),
//         Speech(nar, "He’s cooked a few times now, but never to this extent. It’s by all means a feast, far too much for two people.", "transparent"),
//         Speech(n, "I wanted to thank you for your perseverance and kindness.", "transparent"),
//         Speech(m, "Y-you can start by sitting! Please stop bowing!", "mc_blush"),
//         Speech(nar, "He takes a seat, still polite as he pours me tea in elaborate, traditional fashion.", "transparent"),
//         Speech(m, "Did… Ina teach you this as well?", "transparent"),
//         Speech(n, "No. This was all on my own. From my own research.", "naoki_neutral"),
//         Speech(m, "That’s amazing, Naoki…", "transparent"),
//         Speech(n, "…", "naoki_happy"),
//         Speech(n, "We’ve been together quite some time now, have we?", "transparent"),
//         Speech(m, "Yes. We have.", "mc_happy"),
//         Speech(n, "Then, please enjoy.", "transparent"),
//         Speech(m, "…I will. Thank you.", "transparent"),
//         Speech(nar, "Naoki eats only a little, instead insisting on explaining each dish and cutting my own.", "naoki_neutral"),
//         Speech(nar, "It’s a bit too much but it is not my place to refuse gifts.", "transparent"),
//         Speech(nar, "It reminds me of when Naoki first became my familiar, awkward and stumbling and asking me personal questions I’d never considered before.", "transparent"),
//         Speech(m, "I can’t say I have a favorite type of dress cut. Whatever kimono is most comfortable was always my go-to choice.", "transparent"),
//         Speech(n, "I don’t think that’s true. You tend to avoid wearing darker colors.", "naoki_happy"),
//         Speech(m, "What, really? I never noticed.", "mc_sad"),
//         Speech(n, "It’s true! But I think these colors suit your personality.", "transparent"),
//         Speech(m, "And what’s that?", "mc_happy"),
//         Speech(n, "Simple-minded and affable.", "transparent"),
//         Speech(m, "Hey!", "mc_frown"),
//         Speech(n, "Ha ha ha… I’m sorry. I’m just kidding.", "transparent"),
//         Speech(m, "I’m not sure you are!", "mc_happy"),
//         Speech(nar, "He turns his head to hide his smile but he’s doing a terrible job.", "transparent"),
//         Speech(m, "Gosh. I’m really full…", "mc_sad"),
//         Speech(m, "Let’s try to save the rest for tomorrow.", "mc_happy"),
//         Speech(n, "No. Wait.", "naoki_sad"),
//         Speech(nar, "Naoki scoots closer to me, still kneeling and folding his hands into his sleeves.", "transparent"),
//         Speech(n, "When I first became your familiar, I was confused in many ways.", "transparent"),
//         Speech(n, "But I’ve read things recently. Understood things recently.", "naoki_blush"),
//         Speech(m, "I know you have.", "mc_neutral"),
//         Speech(n, "No. It’s…", "transparent"),
//         Speech(n, "You are beautiful. A deity to proudly serve.", "transparent"),
//         Speech(m, "Thank you, Naoki.", "transparent"),
//         Speech(n, "No. No, it’s more than that. Even if you weren’t a deity. Even if you did not have a shrine.", "naoki_happy"),
//         Speech(n, "I would serve at your side.", "transparent"),
//         Speech(m, "Naoki…", "transparent"),
//         Speech(nar, "Just this once, I let myself get a bit carried away.", "transparent"),
//         Speech(nar, "I happily wrap my arms around him in a hug, squeezing him tight against me.", "naoki_blush"),
//         // screen shake
//         Speech(m, "Thank you. I don’t know what to say. You’ve changed my life as well. You’re dear to me.", "transparent"),
//         Speech(n, "N-no, you don’t understand…", "transparent"),
//         Speech(m, "What don’t I understand about your sincere devotion, Naoki?", "transparent"),
//         Speech(m, "You’ve made me the happiest I’ve felt in years.", "transparent"),
//         Speech(nar, "I pull away enough to look him in the eye, squeezing his shoulders.", "transparent"),
//         Speech(m, "I won’t forget tonight. But we should sleep, don’t you think?", "transparent"),
//         Speech(n, "MC!", "naoki_sad"),
//         Speech(nar, "He grabs both my hands, leaning close.", "transparent"),
//         Speech(m, "Y-yes?", "mc_sad"),
//         Speech(n, "It’s not devotion! It has nothing to do with that!", "transparent"),
//         Speech(m, "Then what? Just tell me, Naoki, whatever it is.", "transparent"),
//         // [First Kiss CG – eyes open]
//         Speech(nar, "He hesitates for a moment before loosening his grip on me.", "transparent"),
//         Speech(nar, "Naoki… kisses me.", "transparent"),
//         Speech(nar, "He finishes leaning in and kisses me, lips cool but soft against my own like a sunset prayer.", "transparent"),
//         Speech(nar, "All the confusion and skepticism, all the quiet moments of morning walks, and every decision I’ve made has led him here.", "transparent"),
//         // choice A
//         Speech(nar, "And I’m okay with that.", "transparent"),
//         //jump to NaokiAct4BranchA
//         Speech(nar, "But he is my familiar.", "transparent"),
//         // choice B
//         //jump to NaokiAct4BranchA_B
// ];

// NaokiAct3BranchB = [
//     // bg mountain view, sunset (continuation of Act 2 choice B)
//     // Naoki distances himself from MC and only stays in the shrine library

//         Speech(n, "You can’t even pretend to care.", "naoki_frown"),
//         Speech(n, "You… you can’t even lie for me.", "naoki_sad"),
//         Speech(m, "My equality extends to humans, Naoki.", "mc_sad"),
//         Speech(n, "…That’s what you keep calling it.", "transparent"),
//         Speech(n, "‘Lies are heavy upon the ego.’", "naoki_sad"),
//         Speech(n, "…I’m returning to the shrine.", "transparent"),
//         Speech(m, "We can talk about this in the morning, okay?", "transparent"),
//         Speech(n, "…", "transparent"),
//         // bg Naoki sprite leave
//         Speech(nar, "He doesn’t respond or wait for me, hurrying back toward the shrine on his own.", "transparent"),
//         Speech(m, "Naoki…", "transparent"),
//         // //bg mountain path and trees, day, only MC
//         Speech(nar, "Naoki no longer joins me on our morning mountain surveys. He leaves before breakfast. Before me.", "mc_sad"),
//         Speech(nar, "I eventually figure out his routine. He continues to help the mountain fauna on his own before locking himself in the library.", "transparent"),
//         // bg Outdoor pathway, sunset
//         Speech(m, "Naoki!", "mc_blush"),
//         Speech(m, "Good… afternoon.", "raven_naoki_frown"),
//         Speech(nar, "He’s getting thinner because of how many meals he skips to be away from me.", "transparent"),
//         Speech(n, "…Excuse me.", "transparent"),
//         Speech(m, "A-are you going to the library again?", "mc_happy"),
//         Speech(n, "I have to do something to help the animals since I am trapped in this body.", "transparent"),
//         Speech(m, "Um. Y-you know, I have someone who can help teach you writing. It would help you.", "mc_neutral"),
//         Speech(n, "I don’t need assistance from a human.", "transparent"),
//         // bg Naoki sprite leave
//         Speech(m, "Sigh…", "mc_sad"),
//         // bg outdoor pathway CORNER, day, only MC
//         Speech(nar, "Things change for the worse in the days to come.", "transparent"),
//         Speech(wo, "Ahhhhh!", "transparent"),
//         Speech(nar, "After hearing the scream of a woman, I take off towards where it’s coming from.", "transparent"),
//         // screen shake
//         Speech(m, "Coming!", "mc_frown"),
//         // bg outside shrine, day, Raven Naoki also appear
//         Speech(nar, "Naoki corners a woman in the library, wings spread threateningly.", "raven_naoki_frown"),
//         Speech(m, "Naoki! Stop!", "mc_frown"),
//         Speech(n, "We have an intruder!", "transparent"),
//         Speech(nar, "I hurry to his side and push him away.", "transparent"),
//         Speech(m, "It’s just Ina! A friend!", "mc_sad"),
//         Speech(n, "Who?", "raven_naoki_sad"),
//         Speech(m, "This is Ina, she’s from the family that has lived closest to this temple for generations.", "transparent"),
//         Speech(m, "Not that it matters who, because humans are not forbidden to come to the temple, Naoki.", "mc_frown"),
//         Speech(m, "I’m sorry about that. Are you alright?", "mc_sad"),
//         // screen shake
//         Speech(nar, "I help her to her feet and brush her off.", "transparent"),
//         Speech(i, "I’m okay, I was just a little scared.", "transparent"),
//         Speech(m, "This is Naoki, my familiar. He’s… a little wary of humans.", "transparent"),
//         Speech(m, "Naoki. Please introduce yourself.", "mc_frown"),
//         Speech(nar, "Naoki grimaces but gives a curt bow to Ina. It’s not an apology, but it’s something.", "transparent"),
//         Speech(n, "…Hello.", "raven_naoki_frown"),
//         Speech(m, "Ahem… have you come to repurpose our old materials again?", "mc_happy"),
//         Speech(i, "I have! It’s also about time to replace your utensils, correct?", "transparent"),
//         Speech(m, "That would be lovely.", "transparent"),
//         Speech(m, "Gosh, you’ve gotten so big. Even your hair is so long now!", "mc_happy"),
//         Speech(nar, "I pat her head before turning to Naoki again.", "mc_neutral"),
//         Speech(nar, "I’d ask Ina to help tutor Naoki when she has time, but Naoki looks like he’d rather fall upon a trap than even look at her.", "mc_sad"),
//         Speech(nar, "He grabs a book and turns to rush away, but I call for him.", "raven_naoki_sad"),
//         Speech(m, "Wait!", "mc_frown"),
//         Speech(m, "At least give a polite goodbye, Naoki.", "mc_sad"),
//         Speech(nar, "He pauses on the way out the door, wings twitching as he slowly faces us both.", "raven_naoki_frown"),
//         Speech(n, "…I thought this unfamiliar human came to kill one of us. You rush to their side and do not ask me if I’m okay.", "raven_naoki_sad"),
//         Speech(n, "I have nothing to say to someone who cares so much for humans over their own familiar.", "raven_naoki_frown"),
//         // bg Naoki sprite leave
//         Speech(nar, "He’s that scared of humans hunting him…? What happened while Naoki was a raven…?", "transparent"),
//         Speech(i, "Is he okay…?", "transparent"),
//         Speech(m, "…I don’t know. He needs space.", "transparent"),
//         Speech(nar, "I see that I have perhaps been more insensitive than I thought.", "transparent"),
//         // Naoki gets angry and calls MC hypocritical and asks to be turned back into a raven, MC confronts Naoki’s fear of humans
//         // bg outside shrine, sunset
//         Speech(nar, "It’s weeks before Naoki initiates a conversation with me. I rush to meet him in the library where he called for me.", "transparent"),
//         Speech(nar, "He doesn’t look up when I enter, flipping slowly through a book with paper sprawled around him.", "transparent"),
//         Speech(nar, "He’s clearly been practicing and learning writing all on his own.", "transparent"),
//         Speech(nar, "Things I wish he’d let anyone help him with.", "mc_sad"),
//         Speech(m, "Hello, Naoki…", "transparent"),
//         Speech(n, "…I only wished to ask why you insist on being so hypocritical. Helping animals. Helping humans. Convincing yourself you are doing the right thing.", "raven_naoki_frown"),
//         Speech(m, "…", "mc_frown"),
//         Speech(m, "Goodnight, Naoki. You clearly need more rest.", "transparent"),
//         // screen shake
//         Speech(nar, "Naoki nearly throws down the book as he stands to meet me head on.", "transparent"),
//         Speech(n, "Everything I read just makes it worse and worse!", "transparent"),
//         Speech(n, "Entire communities destroyed over things like thievery and prostitution! Scandals and murder about!", "transparent"),
//         Speech(n, "Humans have no redeeming qualities and you so eagerly help them!", "transparent"),
//         Speech(n, "You…", "raven_naoki_sad"),
//         Speech(nar, "His anger crumbles to something more fearful for only a brief moment before he regains his composure.", "mc_sad"),
//         Speech(n, "You have to stop! You’re going to get seriously hurt!", "raven_naoki_frown"),
//         Speech(n, "Killed by these monsters!", "raven_naoki_sad"),
//         Speech(m, "I will never stop, Naoki.", "mc_frown"),
//         Speech(m, "You know that…", "mc_sad"),
//         Speech(nar, "My heart shatters to see him like this, so angry and confused and alone.", "transparent"),
//         Speech(n, "Then…", "transparent"),
//         Speech(n, "Then just turn me back.", "transparent"),
//         Speech(nar, "Naoki’s voice chokes before he takes a step back to bow.", "transparent"),
//         Speech(nar, "He means it.", "transparent"),
//         Speech(n, "Please. I can’t be here. I can’t support this.", "transparent"),
//         Speech(n, "I don’t want to know what I know anymore. I don’t want to be human.", "transparent"),
//         Speech(nar, "I take a deep breath to stop myself from crying.", "transparent"),
//         Speech(nar, "He’d rather lose his entire being than know the pain I’ve bestowed upon him.", "transparent"),
//         Speech(nar, "And… I could turn him back.", "transparent"),
//         Speech(nar, "I could set him free from this pain.", "transparent"),
//         Speech(m, "…", "mc_neutral"),
//         Speech(nar, "I take his hand and lead him down to sit with me, instead.", "transparent"),
//         Speech(m, "Please, listen to me.", "mc_sad"),
//         Speech(nar, "Naoki won’t look me in the eye but doesn’t remove his hand from mine either.", "transparent"),
//         Speech(nar, "I keep my voice gentle, knowing this could be the last time we ever speak.", "mc_neutral"),
//         Speech(m, "This mountain is an ecosystem. The cycle of life and death is entwined with everyone who lives on it.", "transparent"),
//         Speech(m, "Rabbits eat fruit and plants. Once living creatures. But foxes… foxes kill those same rabbits.", "transparent"),
//         Speech(nar, "Naoki’s hand clenches into a fist and I pause before continuing.", "raven_naoki_frown"),
//         Speech(m, "Even the falcons prey on living creatures. Sometimes, even the ravens.", "naoki_sad"),
//         Speech(m, "The cycle of life and death is not something that just happens, but it is a necessary factor of life to keep the mountain strong.", "transparent"),
//         Speech(m, "When animals die, they decompose back into the same ground that sprouts forth new plants.", "transparent"),
//         Speech(m, "And humans… humans have their part to play as well.", "transparent"),
//         Speech(m, "If you cannot learn to coexist with humans, you cannot coexist with the mountain itself.", "transparent"),
//         Speech(nar, "Naoki pulls away his hand and folds them in his sleeves as he finally meets my gaze.", "raven_naoki_neutral"),
//         Speech(n, "You think I’m a failure.", "transparent"),
//         Speech(m, "Of course not, Naoki. I just want you to open up to me. That’s all.", "mc_sad"),
//         Speech(n, "…When I was a raven, I didn’t sleep for three days escaping poachers.", "raven_naoki_sad"),
//         Speech(n, "So when I first looked like one, I was so… angry. Confused. As if I’d become the monsters I hated so much.", "transparent"),
//         Speech(n, "I was afraid I’d do the same thing to other animals just because of my appearance.", "transparent"),
//         Speech(m, "I’m sorry, Naoki.", "transparent"),
//         Speech(n, "…It is no one’s fault but theirs.", "transparent"),
//         Speech(n, "‘True pain is not a sword, but its poison.’", "transparent"),
//         Speech(m, "Yes. But you also know that this is something for you to reflect on and work through.", "mc_neutral"),
//         Speech(m, "You will either confront your fear or live in it. You know it’s not healthy.", "mc_sad"),
//         Speech(n, "…I know.", "transparent"),
//         Speech(nar, "We sit in the library for a long time.", "mc_neutral"),
//         Speech(nar, "And although he doesn’t say anything the entire time, it means everything to me just to be allowed in his presence again.", "transparent"),
//         Speech(nar, "It’s the beginning of us rebuilding something new from the ashes.", "transparent"),
//         //MC lets Naoki meet a human child and he changes his opinion on humans
//         // bg room, day
//         Speech(nar, "For the first time in what feels like years, I wake up from a dream.", "mc_neutral"),
//         Speech(nar, "I can’t remember it exactly. But the feeling of small hands in mine linger.", "mc_happy"),
//         // bg Hot spring, day
//         Speech(m, "Naoki!", "transparent"),
//         Speech(n, "Ah!", "raven_naoki_blush"),
//         Speech(n, "Y-yes?", "raven_naoki_frown"),
//         Speech(m, "When you’re done with your bath, please meet me at the entrance. We’re going to the shrine today.", "transparent"),
//         Speech(n, "The… shrine? With the humans?", "raven_naoki_sad"),
//         Speech(m, "Correct.", "transparent"),
//         Speech(n, "…Yes, MC.", "transparent"),
//         Speech(nar, "It doesn’t escape my notice how Naoki sinks further into the hot water as if he wants to escape under the bubbles.", "transparent"),
//         //bg temple entrance, day
//         Speech(m, "Here we are.", "mc_happy"),
//         Speech(n, "So we are.", "naoki_sad"),
//         Speech(nar, "I spot my target easily. I only need to shoot the child an encouraging smile before he comes barreling over and away from his parents.", "transparent"),
//         // screen shake
//         Speech(n, "A-ah!", "naoki_frown"),
//         Speech(m, "Hello there. How are you today, young one?", "transparent"),
//         Speech(c, "Hiii!", "transparent"),
//         Speech(m, "This is my friend, Naoki.", "transparent"),
//         Speech(n, "What do you think you’re doing?", "transparent"),
//         Speech(m, "Say hello, Naoki. Just talk.", "mc_happy"),
//         Speech(n, "U-uh… hello?", "naoki_sad"),
//         Speech(c, "You talk funny.", "transparent"),
//         Speech(n, "Excuse me?", "naoki_frown"),
//         Speech(c, "Your hair is so long.", "transparent"),
//         Speech(n, "What of it?", "transparent"),
//         // screen shake
//         Speech(n, "O-ow!", "naoki_sad"),
//         Speech(m, "Ha ha…", "transparent"),
//         Speech(c, "I’m sorry. Did that hurt? Please don’t cry.", "transparent"),
//         Speech(n, "Of course I’m not going to cry.", "naoki_frown"),
//         Speech(c, "Really?", "transparent"),
//         Speech(n, "Yes!", "naoki_sad"),
//         Speech(c, "I think I’d cry if I looked like a girl. Are you a girl?", "transparent"),
//         Speech(n, "What is the difference!", "naoki_frown"),
//         Speech(c, "I’m sorry, miss. I won’t touch your pretty hair anymore.", "transparent"),
//         Speech(n, "P-pretty?", "naoki_blush"),
//         Speech(m, "Well, you do have pretty hair, Naoki…", "transparent"),
//         Speech(nar, "He clicks his tongue and gently pushes the child’s hand away from his hair.", "naoki_frown"),
//         Speech(n, "You are a ridiculous human!", "transparent"),
//         Speech(c, "Aren’t you a human, too?", "transparent"),
//         Speech(n, "I… I’m different.", "transparent"),
//         Speech(nar, "He steps back and unfurls his wings with a heavy sigh.", "raven_naoki_sad"),
//         Speech(n, "See?", "raven_naoki_neutral"),
//         Speech(c, "Oooh! You have wings! That’s so cool!", "transparent"),
//         Speech(n, "Cool?", "raven_naoki_blush"),
//         Speech(c, "I want wings too! How did you do that!", "transparent"),
//         // screen shake
//         Speech(n, "Don’t tug on them!", "raven_naoki_frown"),
//         Speech(c, "Miss, can you fly? What kind of wings are they?", "transparent"),
//         Speech(n, "I don’t know. I’m a raven.", "raven_naoki_neutral"),
//         Speech(c, "Is that the black one?", "transparent"),
//         Speech(n, "Yes, it is.", "raven_naoki_happy"),
//         Speech(c, "I’ve never seen a raven up close.", "transparent"),
//         Speech(n, "That’s because you’re so small and ravens fly up high.", "transparent"),
//         Speech(c, "I’m not small!", "transparent"),
//         Speech(n, "Ha ha… Yes, you are. But that means you can see things ravens can’t, right? You’re closer to the ground.", "transparent"),
//         Speech(c, "Hmmm… I guess… But I wanna fly! I’d fly to the top of the mountain!", "transparent"),
//         Speech(n, "It’s far too cold up there. Not worth it at all. You’d freeze.", "transparent"),
//         Speech(c, "But I want to go! I don’t care!", "transparent"),
//         Speech(n, "You don’t care about freezing? You don’t mind being an icicle?", "transparent"),
//         Speech(c, "Wait… no, I don’t want that!", "transparent"),
//         Speech(n, "Are you sure? I heard icicles are a tasty treat.", "transparent"),
//         Speech(c, "Nooooo!", "transparent"),
//         Speech(n, "Ha ha ha ha…", "transparent"),
//         Speech(n, "There are many animals on the mountain that can fly you know. And even the ones who can’t have other fun things they can do.", "transparent"),
//         Speech(c, "Really?", "transparent"),
//         Speech(n, "Of course. You should appreciate what you have and learn about all the animals.", "transparent"),
//         Speech(c, "But I don’t know anything…", "transparent"),
//         Speech(n, "Then seek out information. Ask questions.", "transparent"),
//         Speech(c, "Okay… what do ravens eat? Do they like candy?", "transparent"),
//         Speech(n, "They eat all sorts of things. Meat and eggs, berries and other plants. I imagine they might candy as well.", "transparent"),
//         Speech(c, "Ohhh so they’re like me! I eat those too!", "transparent"),
//         Speech(n, "I… suppose you do.", "raven_naoki_neutral"),
//         Speech(man, "It’s time to go!", "transparent"),
//         Speech(c, "Oh! Coming!", "transparent"),
//         Speech(c, "I’m sorry, my mom and dad are waiting for me, Miss.", "transparent"),
//         Speech(n, "I don’t need an apology, don’t be silly.", "raven_naoki_happy"),
//         Speech(c, "Okay! Bye!", "transparent"),
//         // screen shake
//         Speech(n, "?!", "raven_naoki_blush"),
//         Speech(nar, "The child hugs Naoki before running back off to join his parents, mischievously grinning as he spins a feather between his fingers.", "transparent"),
//         Speech(n, "Sigh…", "raven_naoki_sad"),
//         Speech(m, "You had fun.", "transparent"),
//         Speech(n, "H-huh? I wouldn’t say that…", "transparent"),
//         Speech(n, "But I understand why you brought me here now.", "raven_naoki_neutral"),
//         Speech(n, "That was a human child. They didn’t know… anything. They were just as ridiculous as a cub.", "transparent"),
//         Speech(n, "If it’s not protected, it could just as easily fall prey to something.", "raven_naoki_sad"),
//         Speech(m, "That’s right, Naoki…", "transparent"),
//         Speech(nar, "Naoki exhales and watches as the child disappears out of view.", "transparent"),
//         Speech(n, "And it will grow up hunting like all carnivorous animals. For itself. For its parents.", "transparent"),
//         Speech(n, "It doesn’t know what it’s like to be a raven any more than a raven knows how to be a human.", "transparent"),
//         Speech(n, "It is just a child. It is not… evil. Or good.", "transparent"),
//         Speech(n, "…", "raven_naoki_neutral"),
//         Speech(n, "Thank you, MC. I think I understand now.", "transparent"),
//         Speech(m, "Do you really?", "mc_happy"),
//         Speech(n, "As much as I can at the moment.", "raven_naoki_happy"),
//         Speech(m, "Then I’m happy.", "transparent"),
//         Speech(n, "Well, that’s always a good thing.", "transparent"),
//         Speech(m, "Is it now?", "transparent"),
//         Speech(nar, "Naoki smiles in my direction for a moment before pacing the shrine on his own, gaze turned toward the clear sky.", "transparent"),
//         // Naoki apologies and seeks to rededicate and redeem himself, forcing himself to interact and even become friendly with humans at a tribute event
//         //bg temple entrance, day
//         Speech(m, "Are you sure you’re ready for this?", "mc_neutral"),
//         Speech(m, "I don’t mind if you need just a little more time.", "mc_happy"),
//         Speech(nar, "Naoki shakes his head before I can even finish.", "naoki_neutral"),
//         Speech(n, "No. I want to do this. I have to redeem myself.", "transparent"),
//         Speech(nar, "He’s pushing himself…", "mc_neutral"),
//         Speech(nar, "I shouldn’t reject his feelings if this is what he wants.", "transparent"),
//         Speech(m, "Okay. Then let’s go together.", "mc_happy"),
//         Speech(nar, "I open my palm to him and he cautiously holds my hand before we ascend the sandō steps.", "transparent"),
//         Speech(nar, "He trembles against me, but his feet never stall.", "transparent"),
//         // bg summer festival packed, night
//         Speech(nar, "After a long day, the villagers surprise us both. They reveal near the end of the tributes that they’re holding a festival tonight in our honor.", "transparent"),
//         Speech(nar, "And, of course, we attend.", "transparent"),
//         Speech(nar, "Naoki sticks close to my side.", "transparent"),
//         Speech(nar, "A bit too closely.", "transparent"),
//         Speech(m, "N-Naoki, um…", "mc_sad"),
//         Speech(n, "Yes!", "naoki_frown"),
//         Speech(m, "Why don’t you relax a bit, okay?", "mc_neutral"),
//         Speech(m, "They want to thank you. They want you to have a nice time.", "transparent"),
//         Speech(n, "…", "naoki_sad"),
//         Speech(nar, "He lets go of my arm but fidgets with his sleeves, looking around uncomfortably.", "transparent"),
//         Speech(n, "There’s a lot of… food.", "naoki_neutral"),
//         Speech(m, "There sure is. Let’s try some, okay?", "mc_happy"),
//         // bg food stall
//         Speech(man, "Goddess! Thank you for your hard work! Please, pick whichever you like!", "transparent"),
//         Speech(m, "Thank you!", "transparent"),
//         Speech(n, "…What is this?", "transparent"),
//         Speech(man, "Takoyaki. Try one, please. They’re all good.", "transparent"),
//         Speech(nar, "Hesitantly, Naoki takes one of the skewers and nibbles at the end.", "transparent"),
//         // screen shake
//         Speech(man, "Oops, careful there. It’s hot. Don’t burn yourself.", "naoki_sad"),
//         Speech(m, "Looks like it’s a bit too late for that. Ha ha…", "transparent"),
//         Speech(m, "Are you okay?", "mc_neutral"),
//         Speech(n, "…Ow.", "transparent"),
//         Speech(man, "You’re the one helping out MC, right?", "transparent"),
//         Speech(n, "Yes…", "naoki_neutral"),
//         Speech(man, "My sincerest thanks. The color is back in her cheeks these days.", "transparent"),
//         Speech(n, "Oh. Yes.", "transparent"),
//         // bg summer festival packed
//         Speech(m, "That was nice of him.", "transparent"),
//         Speech(n, "I suppose.", "naoki_sad"),
//         Speech(m, "You’re doing great, Naoki.", "mc_happy"),
//         Speech(n, "Someday I will agree.", "naoki_happy"),
//         Speech(c, "Excuse me! Excuse me!", "mc_neutral"),
//         Speech(nar, "A little girl comes rushing up to Naoki, not sparing me a single glance.", "naoki_neutral"),
//         Speech(n, "Y-yes?", "naoki_sad"),
//         Speech(c, "Hurry, please! I need a dance partner or I can’t compete!", "transparent"),
//         Speech(c, "And you’re nice and tall!", "transparent"),
//         Speech(n, "Um.", "transparent"),
//         // screen shake
//         Speech(nar, "She takes it as a ‘yes,’ taking Naoki’s hand and dragging him deeper into the crowd.", "transparent"),
//         Speech(nar, "I follow quickly, a bit anxious to see how he’ll react to being surrounded by humans.", "transparent"),
//         Speech(nar, "Naoki holds the child’s hand tight like a lifeline and I wait on the outskirts as people part to give me respectable space.", "transparent"),
//         Speech(nar, "Instruments blare and partners of various ages begin their dances. Naoki barely manages to keep up with the excited child, trying his best not to step on her.", "transparent"),
//         Speech(nar, "I try my best not to laugh at the ridiculous sight.", "mc_happy"),
//         Speech(nar, "But before long, it’s not ridiculous at all.", "naoki_happy"),
//         Speech(nar, "In fact… it’s the most beautiful thing I’ve seen in a long time—the most genuine smile on Naoki’s face I’ve seen in weeks.", "transparent"),
//         Speech(nar, "A smile I feel, in the pit of my stomach, will never truly be because of me again.", "mc_sad"),
//         //jump to NaokiAct4BranchB
//         ];

// NaokiAct4BranchA_B = [
//         // MC rejects Naoki’s advances on grounds of being her familiar and he sadly accepts it
//         // bg clearing by the lake, sunset (continuation of Act3BranchA choice B)
//         Speech(nar, "I hurriedly push Naoki away.", "mc_sad"),
//         Speech(nar, "Even the gentle motion seems too harsh.", "naoki_sad"),
//         Speech(nar, "But…", "transparent"),
//         Speech(m, "I’m sorry, Naoki. I… I can’t.", "mc_blush"),
//         Speech(m, "I accept gratitude. I accept admiration. But…", "transparent"),
//         Speech(m, "I cannot reciprocate something like infatuation. I am a goddess.", "mc_sad"),
//         Speech(nar, "He blinks slowly at me, hurt in his eyes.", "transparent"),
//         Speech(n, "But, why?", "transparent"),
//         Speech(m, "I can’t return your feelings, Naoki.", "transparent"),
//         Speech(n, "But, why? Because you are a goddess? What does that have to do with how I feel?", "transparent"),
//         Speech(m, "I…", "transparent"),
//         Speech(m, "My job is everything I am, Naoki. If I value all things equally, if I am to do my job properly, I cannot break that one rule.", "transparent"),
//         Speech(n, "Your job is not all you are! You are capable of great things, things that do not contradict each other.", "naoki_frown"),
//         Speech(n, "I thought I meant more to you than being a means to an end. You…", "naoki_sad"),
//         Speech(nar, "He clamps his mouth shut and looks to his side at the shimmering waters of the lake.", "transparent"),
//         Speech(nar, "I don’t know what to say. I didn’t expect things to go this way.", "transparent"),
//         Speech(nar, "Of course, I love Naoki, but…", "transparent"),
//         Speech(n, "You always said you valued all beings. I see.", "transparent"),
//         Speech(nar, "He stands slowly and buries his hands in his sleeves, the slight tremble of his arms the only giveaway of his true feelings.", "transparent"),
//         Speech(nar, "My heart sinks.", "transparent"),
//         Speech(m, "Naoki…?", "transparent"),
//         Speech(n, "I am heartbroken, Goddess.", "transparent"),
//         Speech(m, "…", "transparent"),
//         Speech(nar, "I stand to join him and, selfishly, hug him for a few moments before pulling away.", "transparent"),
//         Speech(nar, "Naoki bows low and his gorgeous hair nearly touches the ground where his leftovers—his efforts—lay scattered about and empty.", "transparent"),
//         Speech(nar, "He doesn’t move.", "transparent"),
//         Speech(nar, "He’s waiting for me to leave.", "transparent"),
//         Speech(nar, "I swallow the lump in my throat and return a slight bow before doing Naoki his last favor of the night by leaving.", "transparent"),
//         Speech(m, "…Goodnight, Naoki.", "transparent"),
//         //jump to NaokiAct4BranchB

// ];

// NaokiAct4BranchA = [
//         // romantic ending, shrine becomes an open library and animals and humans co-exist, people pilgrimage from far and wide
//         // [First Kiss CG – eyes closed] (continuation of Act3BranchA) or bg clearing by the lake, sunset
//         Speech(nar, "I kiss him back, eyes closing as I accept Naoki’s feelings and…", "transparent"),
//         Speech(nar, "My own.", "transparent"),
//         // end CG; bg clearing by the lake, sunset
//         Speech(n, "Uh!", "naoki_blush"),
//         Speech(m, "I’ve… never been in this situation before. I’m sorry I didn’t understand.", "mc_blush"),
//         Speech(nar, "Naoki presses his forehead to mine and I can feel how hot he’s gotten.", "transparent"),
//         Speech(n, "I can’t say I’ve ever done such a thing either.", "transparent"),
//         Speech(n, "Please. Does this mean you feel the same way about me as I do you?", "naoki_sad"),
//         Speech(m, "I think you should tell me how you feel, first.", "transparent"),
//         Speech(n, "…", "transparent"),
//         Speech(nar, "He places a gentle kiss on my forehead and chuckles as he moves away.", "transparent"),
//         Speech(n, "When I was a raven, I didn’t sleep for three days escaping poachers.", "naoki_sad"),
//         Speech(n, "So when I first looked like one, I was so… angry. Confused. As if I’d become the monsters I hated so much.", "transparent"),
//         Speech(n, "I was afraid I’d do the same thing to other animals just because of my appearance.", "transparent"),
//         Speech(n, "But you changed everything for me.", "naoki_happy"),
//         Speech(n, "You gave me a second chance at life. I feel more like myself than I ever have before.", "transparent"),
//         Speech(n, "‘A person is what they’ve etched into the world.’", "transparent"),
//         Speech(n, "So when you ask me how I feel about you…", "naoki_neutral"),
//         Speech(n, "I know that I love you.", "naoki_happy"),
//         Speech(m, "…I love you, too.", "mc_happy"),
//         Speech(n, "And I love this shrine. And this mountain. And I want everyone to love it the way you do!", "transparent"),
//         Speech(nar, "I’ve never see Naoki so animated in my life. It does something to my chest to see him spread his wings as his dark eyes reflect orange and yellow.", "raven_naoki_happy"),
//         Speech(m, "And how do you suppose we do that?", "transparent"),
//         Speech(nar, "With flushed cheeks, he hurries to stand and brings me up with him.", "transparent"),
//         // screen shake
//         Speech(m, "Slow down, ha ha! Where are we going?", "transparent"),
//         Speech(n, "To ring the Bonshō! To invite Ina in! To tell everyone how amazing you are!", "transparent"),
//         Speech(m, "N-Naoki! Look!", "transparent"),
//         Speech(n, "Yes?", "transparent"),
//         Speech(m, "You’re flying!", "mc_blush"),
//         Speech(nar, "His feet hover just barely over the ground as he flaps his wings.", "raven_naoki_neutral"),
//         Speech(nar, "The only thing keeping him low is…", "transparent"),
//         Speech(nar, "I smile and let go of his hand, watching as he gains air.", "mc_happy"),
//         Speech(n, "Well, what do you know.", "raven_naoki_blush"),
//         Speech(n, "I guess the poem was true.", "raven_naoki_happy"),
//         Speech(nar, "Naoki looks up to the sky, just now beginning to show stars, and I prepare to see how far he can go.", "transparent"),
//         Speech(nar, "But he doesn’t go anywhere.", "transparent"),
//         Speech(nar, "Naoki flies right back down to my side.", "transparent"),
//         // bg outside shrine, day (library)
//         Speech(c, "Excuse me, I’m tired.", "transparent"),
//         Speech(n, "Then go sleep outside while it’s still warm. Don’t wake that litter of foxes, though.", "raven_naoki_happy"),
//         Speech(c, "Yes, thank you!", "transparent"),
//         Speech(nar, "Naoki finishes putting away the latest addition to our ever-expanding library before stepping back to look at the giant row of shelves.", "transparent"),
//         Speech(m, "We’ll need another bookcase soon.", "mc_happy"),
//         Speech(n, "I think we’ll run out of room. The shrine itself needs to be expanded.", "transparent"),
//         Speech(m, "Yes, I suppose you’re right. There’s a lot of work to do.", "mc_sad"),
//         Speech(n, "We’ll have the help.", "mc_neutral"),
//         Speech(nar, "As if to emphasize his point, a raven pokes its head out from where its been hiding atop the tall bookcase to hand Naoki another book.", "transparent"),
//         Speech(nar, "It gives a low caw before disappearing back and Naoki sighs.", "raven_naoki_sad"),
//         Speech(n, "It’s almost time for your reading time to the children.", "transparent"),
//         Speech(m, "Don’t sigh, it’s only an hour! And you’ll be going to greet our latest pilgrims anyway, right?", "mc_happy"),
//         Speech(m, "They really appreciate you, you know. The mountain’s never been safer or more respected.", "transparent"),
//         Speech(n, "I suppose it’s become quite fun to talk to all the humans.", "transparent"),
//         Speech(n, "Hey. MC.", "raven_naoki_happy"),
//         Speech(m, "Yes?", "transparent"),
//         Speech(nar, "Naoki opens the book and uses it as a barrier to hide our faces from any visitors of the open library.", "transparent"),
//         Speech(m, "H-huh?", "mc_blush"),
//         Speech(n, "Ssh…", "transparent"),
//         // [CG – hidden library bookshelf kiss]
//         Speech(nar, "He kisses my lips gingerly and lets it linger even as the laughter of human children and the pitter patter of running paws rings in the background.", "transparent"),
//         Speech(m, "Naoki…", "transparent"),
//         Speech(nar, "With a breathy chuckle he pulls away and snaps the book closed.", "transparent"),
//         Speech(n, "I’ll see you soon.", "transparent"),
//         Speech(m, "See you soon.", "mc_happy"),
//         Speech(nar, "It’s funny. I made Naoki my familiar because he happened to come across me, not out of any sort of prophecy or deeper meaning. But…", "transparent"),
//         Speech(nar, "This feels like fate.", "transparent"),
//         Speech(nar, "And I wonder what kind of fables the people will spin of us.", "transparent"),

//         // romantic ending END
// ];

// NaokiAct4BranchB = [
//         // platonic Ending, Naoki runs the human library to be away from MC and sort their feelings/passion elsewhere
//         // bg mountain view, day
//         Speech(nar, "For what feels like the first instance in my lifetime, the seasons pass slowly.", "mc_neutral"),
//         Speech(nar, "While my duties are easier because of the help from Naoki, I see him less and less.", "transparent"),
//         Speech(nar, "I’ve never been among the people this often and yet I am the loneliest I’ve ever been.", "transparent"),
//         Speech(m, "Are you going back down to the village again?", "mc_happy"),
//         Speech(n, "Yes. They want me to oversee the library renovations.", "naoki_happy"),
//         Speech(m, "It’s really coming along. Do you still have time to read?", "mc_neutral"),
//         Speech(n, "Ha ha… I manage.", "transparent"),
//         Speech(m, "Not very convincing!", "mc_happy"),
//         Speech(nar, "Naoki looks down the mountain path and readjusts the bag of books he brought with him to the shrine.", "naoki_neutral"),
//         Speech(m, "I’m heading in that direction. Shall I help you carry some of the books?", "mc_neutral"),
//         Speech(n, "Hmm…", "naoki_sad"),
//         Speech(n, "No. I would feel more at ease if you enjoyed your walk.", "naoki_happy"),
//         Speech(nar, "I sigh but yield to his wishes. He doesn’t ask much of me these days, I suppose I can humor him.", "transparent"),
//         Speech(m, "Naoki, you work in the village library so often. Why there and not the shrine?", "transparent"),
//         Speech(nar, "Naoki’s face slightly falls as he hums.", "naoki_sad"),
//         Speech(n, "I… like to be of use to you.", "naoki_neutral"),
//         Speech(m, "Yes. I appreciate it.", "mc_happy"),
//         Speech(n, "But I found I am of better use when I am away from you.", "naoki_sad"),
//         Speech(n, "‘The only acceptable love is one that can be endured.’", "transparent"),
//         Speech(m, "W-what…?", "mc_sad"),
//         Speech(n, "…I found that my feelings are perhaps a hindrance to not only your duties, but mine.", "mc_blush"),
//         Speech(n, "It’s easier this way. For me.", "naoki_happy"),
//         Speech(nar, "His smile is bittersweet, but it reaches his eyes. I have no choice but to believe him.", "transparent"),
//         Speech(m, "Alright…", "mc_sad"),
//         Speech(nar, "Without my needing to pry, Naoki changes the subject and talks on about the library he’s running.", "transparent"),
//         Speech(nar, "How the humans understand the mountain more than ever now, how their children are getting involved, how they are ethically sourcing things…", "mc_neutral"),
//         Speech(nar, "He’s become so amazing right under my nose.", "mc_happy"),
//         Speech(nar, "It’s funny. I made Naoki to be my familiar but he’s become so much more to the animals and people.", "transparent"),
//         Speech(nar, "But he’s always been so bright. It feels like fate.", "transparent"),
//         Speech(nar, "And I wonder what kind of fables the people will spin of him.", "transparent"),

//         // platonic ending END
// ];
// }
