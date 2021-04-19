class Question {
  String? questionText;
  String? questionAnswer;

  Question(String q, String a) {
    questionText = q;
    questionAnswer = a;
  }
}

class BookTwo12Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("Three weeks later...", "Narrator"),
    Question("”There it is, Mars... Magnificant isn't it?”", "Mom"),
    Question('”Yeah...”', "Alvin"),
    Question(
        "”Ladies and Gentlemen, please take your seats. We will start our accent into the Martian atmosphere in a few moments.”",
        "Captain"),
    Question(
        "”Thank you for choosing 'Martian Galactic', we hope you had a pleasent flight and hope to see you again.”",
        "Captain"),
    Question("This is it, I'm finally going to meet him again...", "Alvin"),
    Question("Dad...", "Alvin"),
    Question("It has been four years, since he left for Mars.", "Alvin")
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

class BookTwo13Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        'Arriving on Mars or rather the Capital ”Haber” was a sight to behold.',
        "Narrator"),
    Question("”So, mom. When are we going to meet dad?“", "Anna"),
    Question(
        "”He will be waiting just outside the spaceport, so let's hurry and not keep him waiting...”",
        "Mom"),
    Question("Seems like she really missed him...", "Alvin"),
    Question(
        "Even though a strong and independent woman, she was always in the shadows of my father.",
        "Alvin"),
    Question("Moving to Republic City really took a toll on her.", "Alvin"),
    Question(
        "Exiting the spaceport, a green field would greet us surrounded by mighty skyscrapers which reached high into the morning sky.",
        "Alvin"),
    Question("There he was, surrounded by security and bodyguards...", "Alvin"),
    Question("”Hello, my love. Children.”", "Dad"),
    Question("”Hey dad, I thought Mars was all red dust and windy storms...”",
        "Anna"),
    Question("”Haha, oh no.”, he chuckled while embracing her.", "Dad"),
    Question(
        "”Well technically it still is. The Capital on the other hands has been complete terraformed.”",
        "Dad"),
    Question(
        "”The Martian Technocracy is a prosperous state, even more so than the United Republic...”",
        "Dad"),
    Question(
        "”Concerning the current affairs, is California going to join the Republic or Carthage?”",
        "Alvin"),
    Question(
        "”As of now all free states are leaning on joining the Republic, but Carthage is making that difficult.”",
        "Dad"),
    Question("”In what way?”", "Alvin"),
    Question(
        "”Well, when the American Conglomerate States collapsed, it left a power vacuum. The Commomwealth has tried to play the defacto government but they are too weak.”",
        "Dad"),
    Question(
        "”Now they have seeked help from Carthage, who very willingly send in troops, in the name of 'peace and stability'”",
        "Dad"),
    Question(
        "”But we all know that it's nothing more than a power and land grab by the Emperor...”",
        "Dad"),
    Question(
        "The free states of course stand no change against the imperial might. So, now they are seeking help from the Republic...”",
        "Dad"),
    Question("”See where this is leading too?”", "Dad"),
    Question(
        "We got into the airspeader. The lush grass and the clear sky was truly beautiful.",
        "Narrator"),
    Question("”How are you holding up, dear... What's with all the security?”",
        "Mom"),
    Question(
        "”As ambassador for the Free California I am a high target for assassination, kidnapping or worse. Pretty standard procedure...”",
        "Dad"),
    Question(
        "He saw the concerning look my mother gave him. ”But you are right, there is more security than usual...”",
        "Dad"),
    Question(
        "”Since California is the leader of the Free States, and with the situation we are finding ourselves in, High Command deemed it best that I should have more security.”",
        "Dad"),
    Question(
        "”But don't worry my security let's no one through, not to mention the Martian Security.”",
        "Dad"),
    Question(
        "”But enough of that, let me tell you of the place you will be staying at now.”",
        "Dad"),
    Question(
        "”The Capital ”Haber” was named after Fritz Haber who invented the ”Haber process”, aka. the process to produce fertilizer.”",
        "Dad"),
    Question(
        '”You will encounter great statues all over the city, not about some generals or political entity, but about great scientists -- like Fritz Haber, Tesla, Einstein, Newton the list goes on.”',
        "Dad"),
    Question("”It is a joyful city full of life, inspiration and motivation.”",
        "Dad"),
    Question("”It kinda reminds me of 'Yorktown' from ’Star Trek'.”", "Alvin"),
    Question("”More like the city from Tomorrowland.”", "Dad"),
    Question(
        "”Anyway, from the spaceport one would take the hovertrain down to the 'Émilie du Châtelet' square.”",
        "Dad"),
    Question(
        "”There all the big conglomerates such as X, Alphabet, Apple etc. have their headquarters. Even the Valerians have a huge branch here.”",
        "Dad"),
    Question(
        "”Going on further one would get to the 'Judicial Territory'. There you would find the parliament, courts, military and almost all goverment entities. Where we are headed now.”",
        "Dad"),
    Question(
        "”Taking the hovertrain again to downtown, one would get to the 'Haber Trade Center', there all the shops, malls street vendors are located.”",
        "Dad"),
    Question(
        "”The 'Newton' district would be the last. A huge area full of heavy industry and of course Mech-Tech, there all the Mechs are developed and produced.",
        "Dad"),
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

class BookTwo14Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "The Airspeeder parked on a platform in the middle of an open field.",
        "Narrator"),
    Question("”Here we are, the 'ambassadors estate'.”", "Dad"),
    Question(
        "A big estate stood magestically in front of a big mountain.", "Alvin"),
    Question(
        "Two creatures were lying in the front yard half asleep.", "Narrator"),
    Question(
        "As soon as we exited the speeder one got up and jump on dad followed by the other one.",
        "Narrator"),
    Question(
        "”Hahaha, ok calm down now you two. As you can see I have two Strandwolfs, one for each child.",
        "Dad"),
    Question(
        "This here is Maxwell he is quite the rascal and the more elegant one is his companion, Daisy.",
        "Dad"),
    Question("”Welcome back, sir.”", "Nestor"),
    Question("”Ah, Nestor.”", "Dad"),
    Question("”Sir, they are asking for you.”", "Nestor"),
    Question("”Guests?”", "Mom"),
    Question("”More or less, just business I have to attend to.”", "Dad"),
    Question("”Nestor, be so kind and tell them that I'll be right with them.”",
        "Dad"),
    Question("”Can't even have a day off nowdays.”", "Dad"),
    Question(
        "”But you must be tired, I'll show you to your quarters. We can talk later.”",
        "Dad"),
    // 15
    Question(
        "”You two have fun with now and feel free to explore the grounds, I need to talk to your mother.”",
        "Dad"),
    Question(
        "”Nestor! Be so kind and bring us some tea and a small snack.”", "Dad"),
    Question("”So what's really on your mind?”", "Mom"),
    Question(
        "”I didn't want to alarm the kids, but it's far more complicated...”",
        "Dad"),
    Question(
        "”It's true that Carthage is helping the Commonwealth, but the part I left out is that they have already invaded most of the Free States.”",
        "Dad"),
    Question("”Including California?”", "Mom"),
    Question(
        "”Including California, in fact we formally surrendered just yesterday.”",
        "Dad"),
    Question("”What about the other states?”", "Mom"),
    Question(
        "”All have surrendered over the past three weeks. Only Alaska is holding out.”",
        "Dad"),
    Question(
        "”But that has less to do with their strength and more with the fact that they joined the Republic a week ago.”",
        "Dad"),
    Question("”Remember the meeting I had to attend to?”", "Dad"),
    Question(
        "”Sacramento was hit with an h-bomb, resulting in most of high command being killed.”",
        "Dad"),
    Question("”I was effective immediately made acting president.”", "Dad"),
    Question("”Does that mean we're going back to Earth?”", "Mom"),
    Question(
        "”No, not yet. The title in itself holds no meaning now, since the free states are desolved.”",
        "Dad"),
    Question(
        "He stood up and looked off into the distance, leaning on the railing.",
        "Dad"),
    Question(
        "”That's why I wanted you out of there. Letting you stay there would have expose you.”",
        "Dad"),
    Question("”Expose us to...?”", "Mom"),
    Question("”You know, kidnapping for terms or worse.”", "Dad"),
    Question("He looked at his children.", "Dad"),
    Question("”They have grown so much, especially Alvin.”", "Dad"),
    Question("”Yes, they have. Alvin even got himself a girlfriend.”", "Mom"),
    Question("”Must have been hard for him.”", "Dad"),
    Question("”Do they know?”", "Dad"),
    Question("”No, not yet.”", "Mom"),
    Question("”No, I meant having to stay here for a long while.”", "Dad"),
    Question(
        "”Oh, yes. Both are pretty upset, especially without giving them a solid reason.”",
        "Mom"),
    Question(
        "”Look, love. The United Republic is on the brink of yet another war.”",
        "Dad"),
    Question(
        "”If only we had acted sooner -- acted sooner on joining the Republic.”, he took a deep breath.",
        "Dad"),
    Question("”What are you going to do now?”", "Mom"),
    Question(
        "”I... I don't know if we shouldn't just join Carthage. I don't want more suffering for our people...”",
        "Dad"),
    Question(
        "”Forming a resistance or rather joining the Republic would expose us, all.”",
        "Dad"),
    Question("She stood up and embraced him.", "Mom"),
    Question("”Sorry to bother you, Sir. But there is someone to see you.”",
        "Nestor"),
    Question(
        "”Mr. President, could I have a word before you meet with the joint chiefs of staff.”",
        "Admiral"),
    Question("”Of course, Admiral. If you would excuse me, love.”", "Dad"),
    Question("”Mars... I'm finally here, for real.”", "Alvin"),
    Question(
        "”Vroom, Vroom, Vroom.” Three speedsters could be seen racing each other in the distance.",
        "Alvin"),
    Question("”Woah, now that is something I would like to try!”", "Alvin"),
    Question(
        "”Oh, crap! One of them is going down... Quick Maxwell let's get there!",
        "Alvin"),
    Question("”Halt! You are not permitted to leave the grounds!”", "Sentinel"),
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

class BookTwo15Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("Mars... I'm finally here, for real.", "Alvin"),
    Question(
        "”Vroom, Vroom.” Three speedsters could be seen racing each other.",
        "Alvin"),
    Question("”Woah, now that is something I would like to try!”", "Alvin"),
    Question(
        "”Oh, crap! One of them is going down... Quick Maxwell let's get there!",
        "Alvin"),
    Question("”Halt! You are not permitted to leave the grounds!”", "Sentinel"),
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

class BookTwo151Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”Alvin Rein, I'm with the Ambassador.”", "Alvin"),
    Question(
        "”Scanning... Alvin Rein... Clearance requested... Priority clearance... Clearance granted...",
        "Sentinel"),
    Question("”Sir, at least let me acompany you.”", "Sentinel"),
    Question("”Fine. Maxwell, you stay here. Stay...”", "Alvin")
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

class BookTwo16Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”Ah, crap! This is like the third time now!”", "Pilot"),
    Question("”Hey, you alright?”", "Alvin"),
    Question(
        "She turned around and looked at me for a very long time, or so it was for me.",
        "Narrator"),
    Question("”I'm good, thanks... Terran.”", "Pilot"),
    Question("”How'd you know I'm a Terran?”", "Alvin"),
    Question(
        "”Well, first your accent, only a Terran talks 'Galactic Common' like that...",
        "Pilot"),
    Question("”'Like, that?' What does th...”", "Alvin"),
    Question(
        "Second, your big sentinel droid. No one just walks around with that kind of security, not even we Martians...",
        "Pilot"),
    Question(
        "”No one here nor anywhere on Mars is even going to think of doing harm to you, well maybe I, but that depends...”",
        "Pilot"),
    Question("”Woah, I feel honored already...”", "Alvin"),
    Question("”Anyway, since your're here. Hold this and this.”", "Pilot"),
    Question("”Sorry, when excatly did I agree to helping you...”", "Alvin"),
    Question("”Just now.”, she smirked.", "Pilot"),
    Question("A airspeeder landed next to us.", "Alvin"),
    Question(
        "”Yo, Clara. Seems like your unlucky day... Like every other day...”, they started laughing.",
        "Guy"),
    Question(
        "”Don't take it personally, but your speeder really dislikes you.”",
        "Girl"),
    Question("”Yeah, with that attitude, I wouldn't want her riding me too...”",
        "Alvin"),
    Question("She gave me a weird look, the others started laughing again.",
        "Alvin"),
    Question("”I meant if I was a speeder... not...”", "Alvin"),
    Question(
        "”Oh, we know what you 'meant'. Anyway, I'm Montgomery or Monty that over there is Jane and this here is Clara.”",
        "Monty"),
    Question("”Nice to meet you, all. I'm Alvin.”", "Alvin"),
    Question("”As in the chipmunk?”", "Monty"),
    Question("The others started laughing again.", "Narrator"),
    Question("”Yeah, I guess. I never actually asked my parents...”", "Alvin"),
    Question(
        "”So, who are your parents? Must be some high-class if they can just afford a trip to Mars and especially that Droid...”",
        "Monty"),
    Question("*CLASSIFIED*", "Sentinel"),
    Question(
        "”Well, I think I can speak for myself. My parents are...", "Alvin"),
    Question(
        "”Master, Rein. I strongly recommend saying nothing!”", "Sentinel"),
    Question(
        "”Ah, Rein... Of course, you must be with that Terran Ambassador.”",
        "Jane"),
    Question("”Who?”", "Monty"),
    Question(
        "”You know the building over there just past the river, where you almost got shot for trespassing?”",
        "Jane"),
    Question("”How can I forget that horrid memory...”", "Monty"),
    Question("”Yeah, that's where I'm staying at now.”", "Alvin"),
    Question("”For how long...?”", "Clara"),
    Question("”I actually don't know...”", "Alvin"),
    Question("”Hey Guys, there is a storm coming our way...”", "Jane"),
    Question(
        "”Wanna come with? We're heading downtown. You'll need to dismiss your Droid though...”",
        "Clara"),
    Question(
        "”Yeah sure. Droid, I command thee to go back from thus has comes frometh...”",
        "Alvin"),
    Question("”By your command, I obey!”", "Sentinel"),
    Question("”Is that how they talk on Earth...?”, they all started laughing.",
        "Monty"),
    Question("”Well, I just...”", "Alvin"),
    Question(
        "”Nah, just say 'Droid you're dismissed or back to wherever you came from.'”",
        "Jane"),
    Question(
        "”Well, let's get going. Some droids will come and clean this mess up, as usual...”",
        "Monty"),
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

class BookTwo17Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”Here we are.”", "Monty"),
    Question(
        "We got out of the speeder and entered the restaurant.", "Narrator"),
    Question("A man with a stillsuit and a gasmask passed by us.", "Narrator"),
    Question("”So, how come we can just breath without any suits?”", "Alvin"),
    Question(
        "”Since the Terraforming, there is technically oxygen everywhere on the planet. Technically, that is.”",
        "Jane"),
    Question(
        "”Yeah, in reality it's just the capital and some major cities across the planet. Everywhere else there is just too little oxygen for a human to survive.”",
        "Monty"),
    Question(
        "”That's why you'll see some people running around with a suit and oxygen tank and others without, like us.”",
        "Clara"),
    Question("”What happens when I wander to far off? Do I just, you know...?”",
        "Alvin"),
    Question(
        "”Nah, I mean sure if exposed too long. First signs are if you're getting really sleepy and everything seems heavy.”",
        "Clara"),
    Question(
        "”I'm guessing you want some real organic stuff. Not that junk you get served on Earth... Where exactly are you from, btw?”",
        "Monty"),
    Question("”Well, I was born in a small town north-east of Sacramento.”",
        "Alvin"),
    Question("”Okay... And where is that?”", "Monty"),
    Question(
        "”It's the capital of the Free State of California which...", "Alvin"),
    Question("”And where is that?”", "Monty"),
    Question("On the west coast of the former American Conglomerate States...”",
        "Alvin"),
    Question("”And where is that?”", "Monty"),
    Question("”Cut it, Monty. We all know where that was...”", "Jane"),
    Question("”Sorry, Alvin. We're not that dense, well maybe he is.”", "Jane"),
    Question(
        "”Look, what I was getting at was, we don't know and don't really care about your clans, factions or countries however you call it...”",
        "Monty"),
    Question(
        "”Here on Mars, everyone is Martian. Weather they're living up north at the calm beaches or down under where the storms never end.”",
        "Monty"),
    Question(
        "They have a different skin color or idealism, at the end -- we are all Martians.”",
        "Monty"),
    Question(
        "”I can get used to that, no national or racial identity... I like it. Just humanity.”",
        "Alvin"),
    Question(
        "”With all the wars raging on Earth, I sometimes wonder what the whole point is...”",
        "Alvin"),
    Question(
        "”Not to mention the war between the two biggest factions.”", "Jane"),
    Question("”The what?”", "Alvin"),
    Question("”You know, they call it the 'War for Terra'.”", "Jane"),
    Question("”I... had no idea we were at war...”", "Alvin"),
    Question("”Exactly your point. I personally love peace and tranquility.”",
        "Jane"),
    Question(
        "”No, I literally don't know that there is a war going on.”", "Alvin"),
    Question(
        "”How did you never hear of this, where did you live... under a rock?”",
        "Monty"),
    Question(
        "”Well, for the past year I have been living in the United Republic.”",
        "Alvin"),
    Question(
        "”Well then how did you not know that your own country is at war.”",
        "Monty"),
    Question(
        "”I don't know, man. Maybe you mixed that up with the 'Eastern Liberation Wars'.",
        "Alvin"),
    Question("”The what?”", "Monty"),
    Question(
        "”Wasn't that the one that dragged on for like two decades?”", "Clara"),
    Question(
        "”Yes from 2089 to 2110, but I've lived during the peaceful time. The Capital is pretty chill and the people are also pretty great...”",
        "Alvin"),
    Question("”For example?”", "Clara"),
    Question("”Oh, you know... Friends, the crew, next in kin... girlfriend.”",
        "Alvin"),
    Question("”Oh.”", "Clara"),
    Question(
        "”Damn, bro. You have a girlfriend, still there? Must be hard for her... and you. How did she take it?”",
        "Monty"),
    Question(
        "”Yeah, what can I say. She wept, I wept, we all wept. But it doesn't change to fact that we had to face reality...”",
        "Alvin"),
    Question("”Let's change the topic.”", "Clara"),
    Question(
        "”Yeah, you know Clara, for example has ancectors from Western Russia and Eastern Asia, Jane from Germany and Nigeria and I can trace my lineage back to Texan settlers.”",
        "Monty"),
    Question("”So, a farmers boy?”", "Alvin"),
    Question(
        "”That is exactly right. My parents own a farm not far from here. Should I call them and let them know we are coming?”",
        "Monty"),
    Question(
        "”Oh, that reminds me, how do I connect my terminal to Starlink here...?”",
        "Alvin"),
    Question("”You mean the MartianNet? Here let me take a look...”", "Monty")
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

class BookTwo18Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "”Sir, we have searched every inch of the Embassy ground, no sign of your Son...”",
        "Security Captain"),
    Question("”Should we send out the Sentinels?”", "Security Captain"),
    Question(
        "”Are you sure he's not here? I don't want to start some grand search, if I have too...”",
        "Dad"),
    Question("”Sir, if he was kidnapped, he could be held for ransom...”",
        "Security Captain"),
    Question(
        "”Alright, alright. Send out every unit and inform Martian Security, hopefully they can lend us some Venators...”",
        "Dad"),
    Question("”What if something worse happened to him...?", "Mom"),
    Question(
        "”Let's not think about it... Anna can you reach him on your terminal?”",
        "Dad"),
    Question("”No, he isn't connected to the MartianNet yet...”", "Anna")
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

class BookTwo19Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”Wow, a first generation Terminal...”", "Monty"),
    Question("”Is that bad?”", "Alvin"),
    Question(
        "Nah, they are still as good, but I do prefer the ones on the wrist.”",
        "Monty"),
    Question("”Should get myself one of those.”", "Alvin"),
    Question("Yeah, they are pretty handy, plus they come with a hologram.”",
        "Jane"),
    Question("”Now I definitely need one of those.”", "Alvin"),
    Question("”Let's see... There... Are you famous?”", "Monty"),
    Question("”No, why.”", "Alvin"),
    Question(
        "”Seems like you missed multiple calls and texts from multiple people. Here.”",
        "Monty"),
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

class BookTwo23Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "Multiple police speeders parked just outside of the Restaurant...",
        "Narrator"),
    Question(
        "”Woah, something big must have happened if that many police speeders are here...”",
        "Monty"),
    Question(
        "A Police officer and two intimidating police droids walked into the cafe.”",
        "Narrator"),
    Question(
        "”Police, we are looking for this boy, have you seen him?”, a face appeared on his hologram...",
        "Police officer"),
    Question("”Oh, yes... Isn't he sitting just over there...”", "Waitress"),
    Question(
        "One of the droids walked up to us and scanned my face, ”Alvin Rein... verifying... identified!”.",
        "Police droid"),
    Question(
        "”Well, well, well... You know boy, the whole damn city is out looking for you! And here you are enjoying a afternoon milkshake...”",
        "Police Officer"),
    Question("”Look officer, I don't know what my friend here did, but...”",
        "Monty"),
    Question("”Stand down, Citizen!”", "Police Droid"),
    Question("”Seems like you were right...”", "Alvin"),
    Question("”Huh, with what?”", "Monty"),
    Question("”I am famous...”", "Alvin"),
    Question("”Alrighty lads, enough chit-chat. You're coming with us.”",
        "Police officer"),
    Question("”On what charges, officer?”", "Jane"),
    Question("”Nah, it's cool. I know why.”", "Alvin"),
    Question("”You know why, what did you do?”", "Clara"),
    Question("”Just... drop it...”", "Alvin"),
    Question("”Thank you, for your cooperation...”", "Police officer"),
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

class BookTwo24Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "”Alvin! It's our first week here on Mars and you had us all worried...",
        "Mom"),
    Question("”Well, I just thought...”", "Alvin"),
    Question(
        "”No. Here we have specific rules, especially if you're with the government, directly or indirectly.",
        "Dad"),
    Question(
        "”If you want to leave the grounds you will need to inform either Nestor or security.”",
        "Dad"),
    Question("”But why? Mars seems to be a peaceful place.”", "Alvin"),
    Question(
        "”Tensions are quite high not just for us but also for the Martians... It won't be forever, but at least for...”, he looked at mom for a moment.",
        "Dad"),
    Question(
        "”Look, the Martians are loosing grip of their outer planets, which are already in a state of open rebellion... Even though we are a third-party we could still be a target, all of us.”",
        "Alvin"),
    Question("”So why are we here if yet another war is upon us...?”", "Alvin"),
    Question("”Well, see...”, mother stopped him.", "Dad"),
    Question("”I think that's enough for today...”", "Mom"),
    Question(
        "”No it's not! What's this talk about a war between the Republic and Carthage?!”",
        "Alvin"),
    Question("”What??”", "Anna"),
    Question("”Where did you here of that?”", "Mom"),
    Question("”From my new friends, who I met just met...”", "Alvin"),
    Question(
        "”That's enough, I don't want to hear of this again. You're grounded until school starts...”",
        "Mom"),
    Question(
        "”Wait, you knew all along... Now it makes sense why you wanted us here instead of Earth...",
        "Alvin"),
    Question(
        "”What makes sense, can someone explain what's going on!?”", "Anna"),
    Question("”You better tell them, sooner than later...”", "Mom"),
    Question(
        "Dad took a deep breath, ”Let me give you better understanding or context over this whole situation...”",
        "Dad"),
    Question(
        "”Just to clarify, as of now there is no war between the Republic and the Empire. But Carthage has invaded the free states, which have all surrendered over the past three weeks.”",
        "Dad"),
    Question(
        "”Too either not have a prolonged war or just to show dominance, Carthage has dropped multiple h-bombs on the biggest metropolitans.”",
        "Dad"),
    Question("”And California?”", "Alvin"),
    Question(
        "”We too have been hit, hard. High command had a meeting when a bomb was dropped on Sacramento.”",
        "Dad"),
    Question("”As of ”", "Dad"),
    Question(
        "”But that doesn't explain why we had to leave the United Republic...”",
        "Alvin"),
    Question(
        "”Yes, of course. We weren't the only ones affected by the great collapse, the Republic had just won a bloody war against the remnants of the UN.”",
        "Dad"),
    Question(
        "”And the same goes for Carthage, they were already at war with the UNA long before the great collapse. One could even say that they were the reason for it.”",
        "Dad"),
    Question(
        "”Anyway Carthage has expanded greatly in the past six decades. From Spain and Italy down to Congo and Sudan, they are the second biggest faction.”",
        "Dad"),
    Question(
        "”But that's not enough for the Emperor, he wants to expand further. Europolis and the African Federation are both already considering joining the Empire.”",
        "Dad"),
    Question(
        "”And with the Commonwealth now in a situation where they could loose all their territory, Carthage is their best bet.”",
        "Dad"),
    Question(
        "The Republic and Carthage are fighting proxy wars all over the world. Trying to win minds and hearts for their cause.”",
        "Dad"),
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

class BookTwo25Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”Alvin, ALVIN!”, someone loudly knocked on the door.", "Person"),
    Question("”Anna, it's five in the moring...”", "Alvin"),
    Question("She opened the door. ”Alvin! The emperor is dead.”", "Anna"),
    Question("I looked at her for a long moment.", "Alvin"),
    Question(
        "”Dude, this is great news. We can finally return to Earth.”", "Anna"),
    Question(
        "The Martians released the ”Magellan-drive”, cutting travel from Mars to Earth down to under a week.",
        "Narrator"),
    Question(
        "I graduated and got a job as a spaceship engineer, making good money.",
        "Narrator"),
    Question(
        "Not long after, I could afford my very own spaceship.", "Narrator"),
    Question(
        "In that time, Jacob asked me if I would like to be his best man. I, of course said yes.",
        "Narrator"),
    Question("The wedding should happen on August 14th 2117.", "Narrator"),
    Question(
        "”Maybe I should leave a week sooner and suprise Tea...”", "Alvin"),
    Question(
        "I wrote Jacob asking if that was cool with him, he agreed and on the 23rd of July I left for Earth...",
        "Narrator"),
    Question(
        "Arriving on the 31st I first had to get used to Earths gravity, which felt like walking through water...",
        "Narrator"),
    Question("”Late, better see where Jacob is...”", "Alvin"),
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

class BookTwo29Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("A speeder raced through the skyline, driving like a madman...",
        "Narrator"),
    Question("”Alvin! Quick get in!!”", "Jacob"),
    Question("”Dude, what's the matter... Couldn't you...”", "Alvin"),
    Question("”GET THE PINCHÉ IN!!!”", "Jacob"),
    Question("”Care to explain the rush?”", "Alvin"),
    Question(
        "”Tea is in the hospital... Her speeder crashed while she was on her way to Elaines...”",
        "Jacob"),
    Question("”Is she alright??”", "Alvin"),
    Question("”What's her condition??”", "Alvin"),
    Question(
        "”Dude, I just got word like 10 minutes ago... That's why I'm in such a rush...”",
        "Jacob"),
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

class BookTwo31Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("We arrived at the hospital...", "Narrator"),
    Question("”How is she??”", "Alvin"),
    Question(
        "”She is alive, but in a critical condition. The doctors don't know if she will make it...”",
        "Elaine"),
    Question("”Where is she?? Can I see her??”", "Alvin"),
    Question("”She's being operated on...”", "Elaine"),
    Question(
        "”Oh my god, this can't be true... This isn't happening...”", "Alvin"),
    Question(
        "”Hey, look at me, look at me! Pull yourself together... For her...”",
        "Jacob"),
    Question(
        "A few hours passed, her mother and father joined us...", "Narrator"),
    Question(
        "At long last the doctor came out, ”Tea Liovich family?”", "Doctor"),
    Question("”Yes, is she going to be alright!?”", "Alvin"),
    Question("”I'm sorry, the wounds were too deep...”", "Doctor"),
    Question(
        "”But thankfully, there was a Martian precision medical droid available, else she would have died on the operation table.”",
        "Doctor"),
    Question("”Sadly... She will not survive. I'm sorry...”", "Doctor"),
    Question("”Is she at least consious?”", "Alvin"),
    Question("”Yes, she is. If you want to talk to her, now is the best time.”",
        "Doctor"),
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

class BookTwo32Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”Are you coming?”", "Jacob"),
    Question("”Go ahead, I just need a second...”", "Alvin"),
    Question("”Alright, buddy. But don't take to long...”", "Jacob"),
    Question(
        "After a while, I slowly opened the door and walked towards her...",
        "Narrator"),
    Question("She was white as snow, yet still beautiful as an angel...",
        "Narrator"),
    Question(
        "I kissed her on the forehead, ”Hey, love. How are you feeling...”",
        "Alvin"),
    Question("”Alvin, what are you doing here...??”", "Tea"),
    Question("”Shhh... I'm here...”, she started to cry a bit.", "Alvin"),
    Question(
        "”I just wanted to embrace her, but seeing her wounds broke my heart...”",
        "Narrator"),
    Question(
        "I could feel the tears coming, but I had to be strong. For her...",
        "Narrator"),
    Question(
        "”Alvin, I know I won't make it much longer. I can feel my body giving up on me...”",
        "Tea"),
    Question(
        "”No, don't say that. Let's think of something else... What will we do today when we leave this place?”, I tried to hide my tears once more.",
        "Alvin"),
    Question("”We could travel the galaxy, I always wanted that...”", "Tea"),
    Question(
        "”Oh, we can write a book, we will write down every journey we will have...”",
        "Tea"),
    Question("”Yeah, I would like that. A book just for us...”", "Alvin"),
    Question("I took her hand...", "Narrator"),
    Question("”Tea, can I ask you something?”", "Alvin"),
    Question("”Sure, anything.”, she almost wispered.", "Tea"),
    Question("”Tea, do I have permission to kiss you?”", "Alvin"),
    Question("”Yes, you do...”, she said with her sweet smile.", "Tea"),
    Question("I gave her my last kiss...", "Narrator"),
    Question("The most beautiful kiss...", "Narrator"),
    Question(
        "”You forgot something... We will dance under the stars again...”, she said with teary eyes.",
        "Tea"),
    Question("”We will dance forever...”", "Alvin"),
    Question("”I love you, Tea...”", "Alvin"),
    Question("”Yeah, we will... dance forever....”", "Tea"),
    Question("”Alvin... I will always love you...”", "Tea"),
    Question("The heartbeat monitor stopped beeping...", "Narrator"),
    //Question("...Flatline...", "Narrator"),
    Question("My beautiful angel is now...", "Alvin"),
    Question("Dancing under the stars...", "Alvin"),
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

class BookTwo33Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”Come, it's time to go...”", "Jacob"),
    Question(
        "I was looking at my love, this cruel world took her away too soon...",
        "Narrator"),
    Question("”Just give me a second...”", "Alvin"),
    Question(
        "I was squeezing her lifeless hand, I just couldn't believe she was gone...",
        "Narrator"),
    Question(
        "”Please wake up, Tea... Don't leave me...”, I whispered.", "Alvin"),
    Question("I felt a hand on my shoulder.", "Narrator"),
    Question("”Come, my friend.”", "Jacob"),
    Question("I let go of her hand and left the room.", "Narrator"),
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

class BookTwo34Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("I had to get some fresh air...", "Narrator"),
    Question("I leaned my back on the stone cold wall...", "Narrator"),
    Question(
        "”She was gone... She is gone...”, I whispered to myself.", "Alvin"),
    Question("The door opened, Jacob and Elaine came out...”", "Narrator"),
    Question("”Both of them seemed to have been crying.", "Narrator"),
    Question("Jacob approached and embraced me...”", "Narrator"),
    Question("”I couldn't hold it in anymore...", "Narrator"),
    Question("I started to cry, soon we were all crying.", "Narrator"),
    Question("”Come, let's go home...”, Jacob said after a while.", "Jacob"),
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

class BookTwo35Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("The noise of an airspeeder woke me up.", "Narrator"),
    Question("”Half past five... Who could this be...”", "Alvin"),
    Question("Someone knocked on the door.", "Narrator"),
    Question("”Alvin, let's go.”", "Jacob"),
    Question("”Dude, five more minutes. Do we have to go right now?", "Alvin"),
    Question(
        "Yes, right now. I'll be waiting in the airspeeder. Don't take too long.",
        "Jacob"),
    Question("”Alright, be right there.”", "Alvin"),
    Question(
        "Jacob was kind enough to let me stay at a house he or rather his parents owned.",
        "Narrator"),
    Question("Better not keep him waiting.", "Alvin"),
    Question(
        "I went up towards the landing pad, Jacob was already sitting in the airspeeder.",
        "Narrator"),
    Question("”Come, let's go.”", "Jacob"),
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

class BookTwo36Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "The first sunrays started to clear up the thick fog that covered Republic City.",
        "Narrator"),
    Question("”Are you always up this early?”", "Alvin"),
    Question("”As if lately... Sorry I woke you up.”", "Jacob"),
    Question("”It's fine. Couldn't really sleep anyway.”", "Alvin"),
    Question("”I know, that's why I'm here.”", "Jacob"),
    Question(
        "We stopped at a lake, a little wodden house stood invisibly under some palm trees.",
        "Narrator"),
    Question(
        "”I bought this lake a few weeks back. A relaxing and quiet place.”",
        "Jacob"),
    Question("”You bought the whole lake?”", "Alvin"),
    Question("”Well, not just the lake, the whole area.”, Jacob said smirking.",
        "Jacob"),
    Question("”Of course...”", "Alvin"),
    Question("”We walked towards the dock which was connected to the house.",
        "Narrator"),
    Question(
        "I sat down under some umbrellas and just closed my eyes.", "Narrator"),
    Question("Oh, Tea. You would have liked this place very much...", "Alvin"),
    Question("A good smell woke me from my dreaming.", "Narrator"),
    Question(
        "I turned around, Jacob came out from the wooden house with two plates.",
        "Narrator"),
    Question("”Wow, this smells delicious.”", "Alvin"),
    Question(
        "”Here you go, scrambled eggs, smoked bacon and grilled toast. Bon appetit.”",
        "Jacob"),
    Question(
        "”You know, good three years ago, I was the shy and quiet boy in the back of the class...",
        "Jacob"),
    Question(
        "”I didn't have many or rather any friends. The friends I made always sucked up to me, because of my status of my family.”",
        "Jacob"),
    Question("”All of them always wanted only the money I could have offered.”",
        "Jacob"),
    Question(
        "”But you, Alvin... You never asked for anything other than friendship...”",
        "Jacob"),
    Question(
        "”You don't know how much your friendship means to me...”", "Jacob"),
    Question(
        "”And look at me now I'm more confident and not just that, I'm getting married to the girl I simped over my whole life.”, he said chuckling.",
        "Jacob"),
    Question(
        "”But... I've lost a friend. She was maybe the only friend I had at that time and through her I met the love of my life.”",
        "Jacob"),
    Question(
        "”Life is strange. She once told me how afraid she was of time...”",
        "Alvin"),
    Question("”Why time?”", "Jacob"),
    Question(
        "”She was afraid of not having enough time to see the beauty around her, not having enough time to travel, not having enough time to live...”",
        "Alvin"),
    Question("”The irony is that she is free of time now...”", "Alvin"),
    Question(
        "”I want to make her fear go away. I thought about this long, but I'm going to travel around.”",
        "Alvin"),
    Question("”Like the city...?”", "Jacob"),
    Question(
        "”No, the planet. As weird as this may sound, I want to see want she wanted to see, feel want she wanted to feel and taste what she wanted to taste...”",
        "Alvin"),
    Question(
        "”That's a big decision, are you sure about that? This isn't some easy task?”",
        "Jacob"),
    Question(
        "”You might be right, maybe I'll travel the United Republic only...”",
        "Alvin"),
    Question(
        "I want to start a journal, write down my memories of each day, what I've learned about the places and it's people.”",
        "Alvin"),
    Question("Well, here is to our friendship and your journey.”", "Jacob"),
    Question("”Now let's do some fishing.”", "Jacob"),
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

class BookTwo37Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "After many hours at the lake, Jacob flew us to Tea's old house...",
        "Narrator"),
    Question("”Wait, what are we...?”", "Alvin"),
    Question("”Come on, Kathleen is alredy waiting.”", "Jacob"),
    Question(
        "The house reminded my of so many memories, I wanted to forget, yet keep forever...",
        "Narrator"),
    Question("I rang the door bell. ”Hi Kathleen, can we come in?”", "Alvin"),
    Question("Yes, of course. Please come in.”", "Kathleen"),
    Question("”You know where her room is.”", "Kathleen"),
    Question(
        "”I won't go with you. This is your space, I'll be waiting.”", "Jacob"),
    Question("”Alright, thanks.”", "Alvin"),
    Question("I went up the stairs and entered her room...", "Narrator"),
    Question("Like so many times before...", "Narrator"),
    Question(
        "For being someone who was a reading nerd, she had quite few books.",
        "Narrator"),
    Question("”Guess she did most of her reading on her terminal.”", "Alvin"),
    Question("”Before I take the books, I need to go somewhere...”", "Alvin"),
    Question("I opened up a small door leading to a small room.", "Narrator"),
    Question("”Seems like everything is still here, in her memory place...”",
        "Alvin"),
    Question(
        "I took some photos of her and us together, we took on her polaroid.",
        "Narrator"),
    Question(
        "This should do it, wait what's that...  ”For Alvin, when he comes back...”, a letter...",
        "Alvin"),
    Question(
        "”Should take this with me too, going to open this when I get back home.”",
        "Alvin"),
    Question("I went downstairs. ”Did you get everything?”", "Kathleen"),
    Question("”The most important.”", "Alvin"),
    Question(
        "”Come stay for dinner, Jacob here was so kind to let me make some of the fish you two caught.”",
        "Kathleen"),
    Question(
        "We sat down at the table, Kathleen brought out the massive fish we caught.",
        "Narrator"),
    Question("”By the way, where is your husband?”", "Alvin"),
    Question(
        "”He has some things to do at work, but also with getting us ready to move...”",
        "Kathleen"),
    Question("”And, how have you been holding up?”", "Alvin"),
    Question(
        "I'm doing fine, I've learned a few things over the past few days...”",
        "Kathleen"),
    Question(
        "”I can't change what happened and I can't waste the rest of my life in grief.”",
        "Narrator"),
    Question(
        "”You know sometimes I make breakfast for the three of us, I would call her name and then remember...”",
        "Alvin"),
    Question(
        "”We all have to accept what happened, not forget but accept and move on, as hard as it may be...”",
        "Jacob"),
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

class BookTwo38Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "”The day is finally here. In just a few hours Jacob will be married...”",
        "Alvin"),
    Question("I took a airspeeder and flew to his estate.", "Narrator"),
    Question("I rang the door bell and his father opened up.", "Narrator"),
    Question("”Mr. Valerian. Such an honor meeting you.”, I did a polite bow.",
        "Alvin"),
    Question(
        "”The honors all mine, Alvin. Please come in.”, he gestured the same.",
        "Mr. Valerian"),
    Question("”Ah, my best man is here.”, he smiled and hugged me.", "Jacob"),
    Question("”So, who's going to be Elaines bridesmaid?”", "Alvin"),
    Question("”Her former best friend, who left for mars during the war...”",
        "Jacob"),
    Question("”But I can't remember her name, though.”", "Jacob"),
    Question("”Curious...”", "Alvin"),
    Question(
        "”Still have to do some things, if you're hungry feel free to eat something.”",
        "Jacob"),
    Question("Only now did I notice how hungry I was. ”Thanks.”", "Alvin"),
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

class BookTwo38Q2 {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("After a while we went to the chapel.", "Narrator"),
    Question("We approached the door and went inside.", "Narrator"),
    Question(
        "People were smiling and greeting us. His family took a seat at the front and Jacob and I went to the podium.",
        "Narrator"),
    Question("”There are so many people here.”", "Jacob"),
    Question("”Getting cold feet?”", "Alvin"),
    Question("”No, I waited all my life for this.”", "Jacob"),
    Question(
        "The music started to play and there she was, dressed in pure white.",
        "Narrator"),
    Question("”Wow, she looks magnificent...”", "Jacob"),
    Question("”Yeah, she does...”", "Alvin"),
    Question(
        "She came accompanied by her father and stood next Jacob.", "Narrator"),
    Question("I looked to the right to see who her bridesmaid was...", "Alvin"),
    Question(
        "For a moment I wanted to see Tea standing there, she would have been so happy...",
        "Alvin"),
    Question("Clara??", "Alvin"),
    Question("Clara!", "Alvin"),
    Question("What was she doing here... I gave her a weird look.", "Alvin"),
    Question(
        "”She gave me a weird look too, seems like she was just as suprised as I was.”",
        "Alvin"),
    Question("I gave her a smile, which she returned...", "Narrator"),
    Question(
        "We looked at each other for quite a while until the priest brought us back to reality.",
        "Alvin"),
    Question(
        "”...Are you Jacob willing to dedicate your unconditional love to this woman and love her till the end of time?”",
        "Priest"),
    Question("”Yes, I will.”", "Jacob"),
    Question(
        "”Are you Elaine willing to dedicate your unconditional love to this man and love him till the end of time?”",
        "Priest"),
    Question("”Yes, I will.”", "Elaine"),
    Question(
        "”I hereby seal these two souls, binding them as one for eternity. Look upon each other and say the words.”",
        "Priest"),
    Question(
        "They turned to each other and simultaneously they said the words.",
        "Narrator"),
    Question(
        "”I am her's and he is mine. From this day until the end of days.”",
        "Elaine & Jacob"),
    Question(
        "Clara and I gave them their rings, which they then put on each others fingers.",
        "Narrator"),
    Question("”You are now husband and wife. You may kiss.”", "Priest"),
    Question("Loud applause and cheers came from the crowd.", "Narrator"),
    Question(
        "”He looked at me and I just nodded in acknowledgement with a big smile.",
        "Narrator"),
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

class BookTwo39Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("The sun slowly set and Elaine and Jacob started to dance.",
        "Narrator"),
    Question("I was happy for them.", "Narrator"),
    Question("I really was.", "Narrator"),
    Question(
        "At one point Jacob whispered something and Elaine had teary eyes, but both were smiling at each other.",
        "Narrator"),
    Question("They deserved to be happy.", "Narrator"),
    Question(
        "But I couldn't take it anymore. I went outside and sat down on a bench.",
        "Narrator"),
    Question(
        "The salty sea air filled my lungs and the sea waves calmed me down.",
        "Narrator"),
    Question(
        "”How are you, Tea? You should have seen Elaine how beatiful she was today...”",
        "Alvin"),
    Question(
        "”They're getting married. My gosh, how fast everything happened...”",
        "Alvin"),
    Question("”It's hard to stop and just look around yourself...”", "Alvin"),
    Question(
        "”Yesterday we were nothing than kids, today I'm Jacobs best man and tomorrow we will watch our children grow up...”",
        "Alvin"),
    Question("”You know, now I understand why your biggest fear was time...”",
        "Alvin"),
    Question("I heard footsteps behind me.", "Narrator"),
    Question("”Hey, Alvin. Is this a good time...?”", "Clara"),
    Question("”Sure, Clara. Come sit.”", "Alvin"),
    Question("”Thanks.”, she said while taking a seat beside me.", "Clara"),
    Question(
        "”Before you can ask your question. I would first like to catch up a bit.”",
        "Alvin"),
    Question(
        "”Tell me what you have been up to for the past what eight, no nine months...”",
        "Alvin"),
    Question(
        "”Well, even during university I was already involved in the brewing conflict.”",
        "Clara"),
    Question(
        "”Both my father and brother, who're in the Martian Navy would give us a call from time to time.",
        "Clara"),
    Question(
        "And when the conflict became public and went into full all out war, I wanted to report at the very frontlines.”",
        "Clara"),
    Question(
        "”So I went and instantly got hired, because no one in their sane mind would willingly go into the literal warzone...”",
        "Clara"),
    Question(
        "”Both my father and bother would fall during the battle of Ganymede. This would only strengthen my motivation, to go and expose those ungrateful people...”",
        "Clara"),
    Question("”Sorry to hear that, Clara...”", "Alvin"),
    Question(
        "”Thanks, Alvin. That's why I know the pain you're going through...”",
        "Clara"),
    Question("”And I'm sorry for your loss, too...”", "Clara"),
    Question("”...”", "Alvin"),
    Question(
        "”Anyway, when I got there and heard their stories, it left me questioning the Martian government...”",
        "Clara"),
    Question(
        "”The oppression these people had to endure, many even for generations...”",
        "Clara"),
    Question(
        "”My shining government was exactly what the remnants or rather the UNE was during the colonization age...”",
        "Clara"),
    Question("”My heart sank and it just made my blood boil...”", "Clara"),
    Question("”So, did you find out what the cause was?”", "Alvin"),
    Question(
        "”Yeah... It all started because some local belters on some backwater colony found out that their children were suffering from cerebral hypoxia - reduced oxygen...",
        "Clara"),
    Question(
        "”They started mass protesting and finally took over the colony...”",
        "Clara"),
    Question(
        "”But the conglomerate which was responsible for the colony, branded them terrorists and called for military support...”",
        "Clara"),
    Question(
        "”Hearing of military intervension the locals instantly surrendered, and...”",
        "Clara"),
    Question(
        "”And you know what the military did? They still send in their mechs, Alvin!”, tears were in her eyes.",
        "Clara"),
    Question(
        "”Almost all of the colony inhabitants were killed, like ten thousand people wiped from the galaxy...”",
        "Clara"),
    Question("”Did you at least get the news out?”", "Alvin"),
    Question(
        "”I wrote the article and sent it to my boss, but you know what happened...”",
        "Clara"),
    Question(
        "”Few days later, I was fired. They even went out of their way and wrote an article on how I betrayed the Martian cause...”",
        "Clara"),
    Question("”Wow... Are you banned from Mars now?”", "Alvin"),
    Question(
        "”Not exactly... I'm still allowed to visit, but everyone is quite hostile towards me...”",
        "Clara"),
    Question("”What about Jane and Monty?”", "Alvin"),
    Question(
        "”We're on good terms. I stayed at their place just before I came here.”",
        "Clara"),
    Question(
        "”That's good to hear. But I'm guessing you're not going back there anytime soon?”",
        "Alvin"),
    Question("”Pretty much. I'm here to start a new chapter of my book...”",
        "Clara"),
    Question("”I even got a job as a reporter for the ”RSF”.", "Clara"),
    Question("”That's really great to hear.”", "Alvin"),
    Question("A strong wind blew threw the palm trees.", "Narrator"),
    Question("”So, what's your take on the whole situation?”", "Clara"),
    Question(
        "”Well, I can't really talk about Mars, but I'm guessing Mars is to you what the United Republic is to me.”",
        "Alvin"),
    Question(
        "”The United Republic has taken great measures against corruption and exploitation.”",
        "Alvin"),
    Question(
        "”The Republic has implementent a system where there is no one lone person who rules them all.”",
        "Alvin"),
    Question(
        "”Even though we have a chancellor and a senate who represent us galactic wide, they are overseen by the council of presidents who are directly elected by the districts.”",
        "Alvin"),
    Question(
        "”The Republic today has around 70 districts and each district still honors the old countries and even colonies like the ones one Luna.”",
        "Alvin"),
    Question(
        "”And each country has their own parliaments, which can veto the policies introduced by their president.”",
        "Alvin"),
    Question(
        "”But the most important pillar, each politician and policy has to have a direct approval vote by the majority of the people.”",
        "Alvin"),
    Question(
        "Doesn't matter if you're from the great Capital or a colony on Pluto. Each vote gets counted and considered.",
        "Alvin"),
    Question("”Wow, isn't that too complicated?”", "Clara"),
    Question(
        "”Not really, the government has learned from the big conglomerates and the private sector.”",
        "Alvin"),
    Question(
        "”Meaning, I can pull out my terminal and go on the official app, then scroll around to vote or rather like the policy and politician I want to see in power.”",
        "Alvin"),
    Question(
        "”But as the saying goes absolute power does not corrupt absolutely, absolute power attracts the corruptible.”",
        "Alvin"),
    Question(
        "”Governments, if they endure, always tend increasingly toward aristocratic forms. No government in history has been known to evade this pattern.”",
        "Alvin"),
    Question(
        "”And as the aristocracy develops, government tends more and more to act exclusively in the interests of the ruling class - whether that class be hereditary royalty, oligarchs of financial empires, or entrenched bureaucracy.”",
        "Alvin"),
    Question(
        "”This is what I'm increasingly seeing in the Martian Government. Once great scientists, engineers and explorers, now nothing more than oligarchs and bureaucrats.”",
        "Clara"),
    Question(
        "A republic capital spaceship could be seen cruising in the distance, escorted by a dozen of small craft.",
        "Narrator"),
    Question(
        "”The United Republic has expanded drastically in the last few years, to the point it could be called the de-facto planetary government.”",
        "Alvin"),
    Question(
        "”With imperial troops retreating from conflict zones, the Republic is all to willing to take over those countries.”",
        "Alvin"),
    Question(
        "”With the northern empire now becoming a part of the republic, the end of the southern empire has been marked for sooner or later.”",
        "Alvin"),
    Question(
        "”But enough of that, are you going to stay long in Republic City?”",
        "Alvin"),
    Question(
        "”Maybe a week or two. After that I'll be off to Anchorage.”", "Clara"),
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

class BookTwo40Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "”That brings me to my question, do you want to come with me? I know you won't be returning for Mars anytime soon...”",
        "Clara"),
    Question("I mean, if this is to fast for you...”", "Clara"),
    Question("”Yeah, let's continue this some other time.”", "Alvin"),
    Question(
        "I saw her disappointment, ”I'll have to think about it and I'l get back to you, I promise”.",
        "Alvin"),
    Question("”Anyway, what're you doing here alone?”", "Clara"),
    Question("”Just wanted to get some fresh air...”", "Alvin"),
    Question(
        "”Everyone is dancing, it wouldn't be fair to be alone on such a beautiful day...”",
        "Clara"),
    Question("”It's your best friends wedding day, after all.”", "Clara"),
    Question("”Yeah... You're right.”", "Alvin"),
    Question("She stood up, ”May I ask you for a dance?”", "Clara"),
    Question("She suprised me. ”Yeah, sure. I guess...”", "Alvin"),
    Question("She took my hand and we went inside...", "Clara"),
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

class BookTwo41Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "She put my hands on her waist and slowly hugged me around my neck...",
        "Narrator"),
    Question(
        "I looked to Jacob for confirmation, but he was of course in his own world with Elaine...",
        "Narrator"),
    Question("I'm somehow afraid. I'm not sure why... I feel so strange...",
        "Alvin"),
    Question("”Are you alright?”", "Clara"),
    Question("”Uh, yeah... Sorry.”", "Alvin"),
    Question(
        "She gave my a wary look. ”If this is too fast for you, just say so.”",
        "Clara"),
    Question(
        "”You don't have to be afraid. I just wanted to make you feel better. It's not fair to be alone...”",
        "Clara"),
    Question("”Yeah, thanks...”, she hugged me.", "Alvin"),
    Question("It's strange dancing with someone else...", "Alvin"),
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

class BookTwo42Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("What? Was she asking me out?", "Narrator"),
    Question("My gosh! I just... I wasn't sure.", "Narrator"),
    Question(
        "”Alvin, shut it! It doesn't necessarily mean she wants something romantic or whatever, maybe just she wants a hang out between friends.”",
        "Alvin"),
    Question("”A friendly hang out would be nice, I guess.”", "Alvin"),
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

class BookTwo43Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "”I wouldn't call it a date, more like a friendly afternoon hangout.”",
        "Alvin"),
    Question("Despite everything I still felt quite nervous...", "Narrator"),
    Question("”It's friday, just a couple of days until my journey begins.”",
        "Alvin"),
    Question(
        "”Hey, Clara.”, I greeted her, after arriving at the now well known restaurant.",
        "Alvin"),
    Question("”Are you always this late.”, she said, teasing me.", "Clara"),
    Question("”Most of the time, it's a bad habit of mine.”", "Alvin"),
    Question("I sat down next to her. She looked stunning.", "Narrator"),
    Question("”Well, I'm starving, let's order.”", "Clara"),
    Question("The waitress came and took our orders.", "Narrator"),
    Question(
        "”You know, this is the first place Jacob took me when I moved here.”",
        "Alvin"),
    Question("”I can see why, It's a lovely and cozy place.”", "Clara"),
    Question(
        "”How much time did you need to adapt to the new city, culture and people?”",
        "Clara"),
    Question(
        "Not much. Maybe two, three weeks. And the people were very friendly so it didn't take long.”",
        "Alvin"),
    Question("Our orders came and we began to eat.", "Narrator"),
    Question("”Question. Do you still do speeder racing?”", "Alvin"),
    Question("”Not as much as I would wish.”", "Clara"),
    Question(
        "”If I remember correctly you wanted to do that professionally...”",
        "Alvin"),
    Question(
        "”Well, just another dream from the past. Nowdays I really love traveling and meeting new people, both as a career and privatly.”",
        "Clara"),
    Question("”So, what's this talk about Anchorage? Why Anchorage exactly?”",
        "Alvin"),
    Question(
        "”The west coast states are a complete wasteland, so Anchorage seems to be my best bet right now, for a start into the Americas.”",
        "Clara"),
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

class BookTwo44Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”After eating we went downtown.”", "Narrator"),
    Question("”Thanks for accepting my invitation.”", "Clara"),
    Question(
        "”Yeah, of course. I'm glad we met up again, after so long.”", "Alvin"),
    Question("We came across a amusement park.", "Narrator"),
    Question("”Come. I have an idea.”", "Clara"),
    Question(
        "We went into the park and stopped at a shooting range.", "Narrator"),
    Question("”Damn, this brings back memories.”", "Clara"),
    Question("”Well, shall we?”", "Alvin"),
    Question("”You will lose.”", "Clara"),
    Question("”Challenge accepted.”", "Alvin"),
    Question(
        "My gosh, it looks like I'm going to lose. She really knows how to shoot these things.",
        "Alvin"),
    Question("”Ha! You lost. You owe me an ice cream now.”", "Clara"),
    Question("”Fine, fine. You'll get your ice cream.”", "Alvin"),
    Question(
        "We went to a ice cream vendor and I bought us ice cream.", "Narrator"),
    Question("”Here you go.”", "Alvin"),
    Question("”Thanks.”", "Clara"),
    Question("”How'd you learn to shoot like that anyway.”", "Alvin"),
    Question(
        "”All Martians from primary to high school need to learn that skill.”",
        "Clara"),
    Question(
        "”It's was always the second week. The first one was gym. I mean it's wasn't like we just layed there at shoot at targets.”",
        "Alvin"),
    Question(
        "”It was more like paint ball but more strict. We even got examined by the military at the end of the school year.”",
        "Clara"),
    Question("”Wow. Sounds harsh. How come I didn't get to do it.”", "Alvin"),
    Question(
        "”After high school, you got the basics. If you wanted more you could join the military. Since you joined in college it was out of question.”",
        "Clara"),
    Question("”So, are you really leaving for the Americas?”", "Alvin"),
    Question("”Yeah. I really want to get to the bottom of this.”", "Clara"),
    Question("”But I can't get a connection to my contact in Anchorage...”",
        "Clara"),
    Question("”Weird... Maybe Starlink is just down over there.”", "Alvin"),
    Question(
        "”That reminds me, did you see the big storm over America?”", "Clara"),
    Question(
        "Yeah, that was weird. I should ask Jacob what that is all about...”",
        "Alvin"),
    Question("We stayed there for quite a while and talked.", "Narrator"),
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

class BookTwo45Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("After a short flight I came to their house.", "Narrator"),
    Question("”So this is where they are living now.”", "Alvin"),
    Question("A big mansion greeted me as I walked towards the front door.",
        "Narrator"),
    Question(
        "I rang the door bell. Jacob came up on the holodisplay.", "Narrator"),
    Question("”Hey, just come in we're already in the garden.”", "Jacob"),
    Question(
        "”Hey, guys!”, I shouted as I walked over the open field.", "Alvin"),
    Question("They both smiled as they saw me.", "Narrator"),
    Question("Jacob stood up, ”Hey, buddy”.", "Jacob"),
    Question("”You're not late, for once.”, Elaine joked.", "Elaine"),
    Question("”Come sit down.”", "Jacob"),
    Question(
        "”How are you holding up, Alvin? We havn't seen you since the wedding.”",
        "Elaine"),
    Question("”The past few days have been pretty good, actually.”", "Alvin"),
    Question("”So, are you really going to travel the world...?”", "Jacob"),
    Question("”About that...”", "Alvin"),
    Question("”Yeah?”", "Jacob"),
    Question(
        "”A few weeks ago, when I entered orbit I saw this big storm over America...”",
        "Alvin"),
    Question("”Oh, yeah. That...”", "Jacob"),
    Question("He looked at Elaine for a while who nodded.", "Narrator"),
    Question(
        "”I wouldn't recommend traveling around. Especially now with the parasite around...”",
        "Jacob"),
    Question("”I know about the parasite, have been for the past two years...”",
        "Alvin"),
    Question("”WHAT?! And you didn't tell us?”", "Jacob"),
    Question("”I only got wind of it, when I arrived on Mars...”", "Alvin"),
    Question(
        "”My father thought that it would spread faster than it currently is, seems like he was wrong...”",
        "Alvin"),
    Question("”Oh no. He would have been right...”", "Jacob"),
    Question(
        "Look, last year the republic lost contact with the american provices and a expedition was initiated...",
        "Jacob"),
    Question(
        "”What we found first in Anchorage and then everywhere was horrifying. The streets were filled with the dead...",
        "Jacob"),
    Question(
        "Scientists and military personell was sent to 'cure' them.”", "Jacob"),
    Question("But this was not some virus, this was a parasite...”", "Jacob"),
    Question(
        "”So the question arose, how can we destroy the parasite and not the host...”",
        "Jacob"),
    Question("”I hope we found a solution. Did we find a solution?”", "Alvin"),
    Question("Jacob took a deep breath. ”I wouldn't call it a solution...”",
        "Jacob"),
    Question(
        "”When all other options were exhausted, the republic flew hundreds of weather controling drones over most of america and blocked out the sun...”",
        "Jacob"),
    Question("”So that was the massive storm I saw?”", "Alvin"),
    Question("”Yeah, I guess.”", "Jacob"),
    Question(
        "”Republic forces then dropped icing bombs, first over every major metropolitan area and then everywhere.”",
        "Jacob"),
    Question(
        "”America has been declared a full quarantine and hazardous zone...”",
        "Jacob"),
    Question(
        "”There are now millions, if not billions of refugees who came here over the past two years...”",
        "Jacob"),
    Question(
        "”A military blockade is in full force around and above greater america.”",
        "Jacob"),
    Question("”Damn, I did not know...”", "Alvin"),
    Question("”Why not just, you know -- burn it all...”", "Alvin"),
    Question(
        "”Again, this does not solve the solution of seperating the parasite from the host...”",
        "Jacob"),
    Question(
        "”Scientists are still optimistic that they can find a solution. But if really everything fails, then yeah...”",
        "Jacob"),
    Question("”What about Africa and Europe?”", "Alvin"),
    Question("”Thankfully these were only rumors or diseases we can cure.”",
        "Jacob"),
    Question("”My point is travelling to America is not possible.”", "Jacob"),
    Question("Well, I thought more of Europolis or the middle east.”", "Alvin"),
    Question("”Then your fine.”", "Jacob"),
    Question(
        "”Anyway, let's eat, that's why we invited Alvin after all, love.”",
        "Elaine"),
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

class BookF005Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("It would take a while before boarding began.", "Narrator"),
    Question("I took a seat at a table and ordered a small meal with a coffee.",
        "Narator"),
    // Question(
    //     "The great sun, which was here aeons ago and will be here long past my time showed itself cooling down the chilly morning.",
    //     "Narrator"),
    Question("Kids were running around and goofing off.", "Narrator"),
    Question(
        "”Ever thought of having a child of your own?”, the question came as a suprise.",
        "Narrator"),
    Question("I turned around...", "Narrator"),
    Question(
        "Oh yeah. Clara was also leaving today, but for the complete opposite direction.",
        "Narrator"),
    Question("”As of lately, quite much actually...”", "Alvin"),
    Question(
        "”Not that I want one, only the idea of having one has been on my mind lately.”",
        "Alvin"),
    Question("”Mind if I join?”", "Clara"),
    Question("”Sure, please.”, I notioned to an empty chair.", "Alvin"),
    Question("”Is your flight delayed or did you just sleep in?”", "Clara"),
    Question(
        "”Delayed, as always. These flights are one of the worst or so I've heard.”",
        "Alvin"),
    Question("”By the looks of it, that's true.”", "Clara"),
    Question(
        "”I personally don't mind it. Gives me time to think...”", "Alvin"),
    Question("”Have you been here often?”", "Clara"),

    Question(
        "”Even though I lived in Republic City for quite a while, I never actually visited the ports and docks.”",
        "Alvin"),
    Question("”I never really liked them.”", "Alvin"),
    Question("”Why?”", "Clara"),
    Question("”They remind me of a place and time that could have been...”",
        "Alvin"),
    Question(
        "”Not that I don't like how my life has turned out, just the question of what could have been...”",
        "Alvin"),
    Question("”It's amazing the things you realize when you lose someone...”",
        "Alvin"),
    Question(
        "”you get mad at yourself for not saying the things you could've a million times.”",
        "Alvin"),
    Question(
        "”You take for granted the days spent doing nothing when you could have been doing everything.”",
        "Alvin"),
    Question(
        "”We always wait until they're gone to say the things we never had the courage to before...”",
        "Alvin"),
    Question(
        "”Anyway, how are you going to get to Anchorage? You know, with the blockade...”",
        "Alvin"),
    Question(
        "”I'm going to fly to Vladivostok where I'll meet up with a few people, then head to Petropavlovsk.”",
        "Clara"),
    Question(
        "”From there I'll be taking a blockade runner and try getting through to Anchorage...”",
        "Clara"),
    Question("”But, psst. Don't tell anybody.”, she giggled.", "Clara"),
    Question("”Wow. That's quite the adventure you're going on...”", "Alvin"),
    Question("”How about you, why visit Europolis?”", "Clara"),
    Question("”Europolis...", "Alvin"),
    Question(
        "From the ancient city of Constantinople, to the eternal city and up to the busling metropolises of Stark...”",
        "Alvin"),
    Question(
        "”It was always a place I wanted to visit. But with the fall of the UNA and the following collapse, things just changed...”",
        "Alvin"),
    Question("”Yeah, the collapse was a shock to all of us...”", "Clara"),
    Question(
        "”Jacob told me that you and Elaine were quite close...”", "Alvin"),
    Question(
        "”Yeah, we both lived in the holy city at that time. It was a peaceful time, or so I remember...”",
        "Clara"),
    Question(
        "”But following the collapse the middle east became unstable again.”",
        "Clara"),
    Question(
        "”One thing led to another and suddenly bombs were falling and armies were on the march...”",
        "Clara"),
    Question(
        "”The United Republic liberated the holy city in 2101 and Elaine's family would move here to Republic City.”",
        "Clara"),
    Question(
        "”But by that time my family was long gone... We fled to Europolis quite early into the collapse and from there to Mars.”",
        "Clara"),
    Question("”It was quite -- the adventure.”", "Clara"),
    Question(
        "”*Calling for the flight to Vladivostok. Boarding will begin shortly.*”",
        "Speakers"),
    Question("Well, that's me.”", "Clara"),
    Question("I stood up and hugged her.", "Narrator"),
    Question(
        "”I don't know where our paths with lead but we will see each other again.”",
        "Clara"),
    Question("”Yes, we will...”", "Alvin"),
    Question("”Goodbye, Alvin.”", "Clara"),
    Question("”Goodbye, Clara.”", "Alvin"),
    Question(
        "With that she walked off, soon she would be swallowed up by the crowd.",
        "Narrator"),
    Question("I stood there looking after her for quite a while.", "Narrator"),
    Question("”Better check where the heck Jacob is.”", "Alvin"),
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

class BookF007Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("12 hours later...", "Narrator"),
    Question("”Now how do I get to the blue lagoon...”", "Alvin"),
    Question("”Better order a taxi...”", "Alvin"),
    Question(
        "Just as I was exiting the airport I heared someone yell my name...",
        "Narrator"),
    Question("”Mr. Rein, Mr. Alvin Rein! Please wait!”", "Person"),
    Question("”Yes...?”", "Alvin"),
    Question("”Please follow me, sir.”", "Person"),
    Question("”Where are we going?”", "Alvin"),
    Question(
        "We wandered back into the airport and took a lift up.", "Narrator"),
    Question("It all seemed very suspicious...", "Narrator"),
    Question(
        "”Here we are and here you go, with compliments of the Valerian family.”",
        "Person"),
    Question("”Ah, of course...”", "Alvin"),
    Question("Before me stood an elite luxury airspeeder.", "Narrator"),
    Question("”It will take you to your destination.”", "Person"),
    Question("”Thanks, I guess.”", "Alvin"),
    Question("”Oh, no. Thank you.”, he bowed politly.", "Person"),
    Question("I got into the airspeeder.", "Narrator"),
    Question("”Good day, sir and welcome to Iceland.”", "Chauffeur"),
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

class BookF008Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”Now how do I get to the blue lagoon...”", "Alvin"),
    Question("”Better order a taxi...”", "Alvin"),
    Question("Just as I was exiting the airport I hear someone yell my name...",
        "Narrator"),
    Question("”Mr. Alvin Rein, please wait!”", "Person"),
    Question("”Yes...?”", "Alvin"),
    Question("”Please follow me, sir.”", "Person"),
    Question("”Where are we going?”", "Alvin"),
    Question(
        "We wandered back into the airport and took a lift up.", "Narrator"),
    Question(
        "”Here we are and here you go, with compliments of the Valerian family.”",
        "Person"),
    Question("”Ah, of course...”", "Alvin"),
    Question("Before me stood a elite luxury airspeeder.", "Narrator"),
    Question("”It will take you to your destination.”", "Person"),
    Question("”Thanks, I guess.”", "Alvin"),
    Question("”Oh, no. Thank you.”", "Person"),
    Question("I got into the airspeeder.", "Narrator"),
    Question("”Good day, sir. Welcome to Iceland.”", "Chauffeur"),
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

class BookF009Qa {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”Outlander, calm down...”", "Person"),
    Question(
        "I turned around and look upon a man maybe in his late 40s driving a desert speeder.",
        "Alvin"),
    Question("”Why?? Can't you people talk common?”", "Alvin"),
    Question("”Well that's pretty arrogant.”", "Person"),
    Question(
        "Only now did I realize that everyone at the marketplace was staring at me.",
        "Alvin"),
    Question("”Come stranger or you're going to get in trouble.”", "Person"),
    Question("”What's with this place, we are living in the 22nd century...”",
        "Alvin"),
    Question(
        "”Well, arabic is still the preferred language of Carthage, especially here in the hinterlands.”",
        "Person"),
    Question("”Go apologize to the lady, look how distraught she now is.”",
        "Person"),
    Question("I... Alright...”", "Alvin"),
    Question("I went up to her. She half expected me to make a tantrum again.",
        "Narrator"),
    Question("”My apologies.”, I bowed and went back.", "Alvin"),
    Question("”Now, what brings you here, outlander.”", "Person"),
    Question("”I just need some food and water...”", "Alvin"),
    Question("”Well, you could have just asked.”, he smirked.", "Person"),
    Question(
        "”That's literally what I just did, look what it brought me -- nothing.”",
        "Alvin"),
    Question("”I... Sorry, I just had some bad days behind me.”", "Alvin"),
    Question(
        "”Look, I was almost mugged, then my speeder broke down and the bed I was sleeping in was as hard as stone.”",
        "Alvin"),
    Question(
        "”Actually now that I think about it -- it literally was stone, just with a thin matt on top... Plus, I'm thirsty and hungry.”",
        "Alvin"),
    Question(
        "”Hahaha, now if that isn't a funny story.”, he laughed.", "Person"),
    Question("“What's so funny?”", "Alvin"),
    Question("”Ah, people out here have it far worse.”", "Person"),
    Question(
        "”Anyway, where are you going? I could take you with me.”", "Person"),
    Question(
        "”Seeing that you're the only one who understands common that leaves me with little choice.”",
        "Alvin"),
    Question("”But I'm on my way to Cairo.”", "Alvin"),
    Question("Cairo? That is quite a long way from here.”", "Person"),
    Question(
        "”Come, we'll make a quick stop at El Qued. Then you're invited to my house.”",
        "Person"),
    Question("I looked at him with suspicion.", "Alvin"),
    Question("”Believe me, it's better to come with me.”", "Person"),
    Question("”I'm Avdol.”, he extended his hand.", "Avdol"),
    Question("”Alright, Avdol. Let's get going.”", "Alvin"),
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

class BookF009Qb {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("A few hours later.", "Narrator"),
    Question("”Quick get down!”", "Avdol"),
    Question("”What? Why?”", "Alvin"),
    Question("”Just do it.”", "Avdol"),
    Question("I ducked and Avdol put a blanked hastily over me.”", "Narrator"),
    Question(
        "A few moments later a convoy of at least a dozen vehicles rolled by.",
        "Narrator"),
    Question("”Alright, coast is clear.”", "Avdol"),
    Question("”What was that?”", "Alvin"),
    Question("”Rebels.”", "Avdol"),
    Question("”Rebels? Where are the going?”", "Alvin"),
    Question("”Best guess, the front lines.”", "Avdol"),
    Question("I looked back hoping to get a glimpse of them.", "Narrator"),
    Question("”So, who's side are you on?”", "Alvin"),
    Question("”I'm loyal to Carthage.”", "Avdol"),
    Question(
        "”Wow, that's vage. Both sides are technically Carthage.”", "Alvin"),
    Question(
        "”If I still had fight in me, I would have joined the army again.”",
        "Avdol"),
    Question("”But, I have a family now and I'm not that young as I once was.”",
        "Avdol"),
    Question(
        "”Well, when I heard that the Emperor had passed away, I was half expecting this to happen.”",
        "Alvin"),
    Question("”Ah, you did your history.”", "Avdol"),
    Question(
        "”What I'm not getting, is why? The Empire was both prosperous and united.”",
        "Alvin"),
    Question(
        "”Just before he passed, the Emperor made his daughter the sole heir to the throne.”",
        "Avdol"),
    Question("”So?”", "Alvin"),
    Question(
        "”Her older brother, didn't take kindly to that. He fleed down to the southern provinces and was proclaimed Emperor there.”",
        "Avdol"),
    Question(
        "”So now the north and the south are fighting over control of the Empire and who gets to rule it.”",
        "Avdol"),
    Question(
        "”Since the 'reach for the stars' age the south has become equivalent and I would say even more prosperous than it's counterpart.”",
        "Avdol"),
    Question(
        "”Especially the provinces around the Gulf of Guinea have made the south very rich with their trade with the African Federation.”",
        "Alvin"),
    Question("Where is the Empress now?”", "Alvin"),
    Question(
        "”Well, Tripoli and Algiers are both getting besieged as we speak.”",
        "Avdol"),
    Question(
        "”So Carthage was deemed unsafe and most of the ruling class have fled to the provinces of Hispania or Italia.”",
        "Avdol"),
    Question(
        "”The Empress herself is now in Rome, but if the war drags on like this I'm guessing she'll seek asylum from Europolis.”",
        "Avdol"),
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

class BookF009Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”Here we are, welcome to Constantine.”", "Avdol"),
    Question("”What a beautiful city.”", "Alvin"),
    Question("After arriving at his house we were greeted by his children.”",
        "Narrator"),
    Question(
        "Avdol introduced me to his family as well his extended family, friends and neigbors.”",
        "Narrator"),
    Question("”You must be hungry after that long trip.”", "Avdol"),
    Question("”Yes, please come eat with us.”, his wife insited.", "Wife"),
    Question(
        "”Tell us outlander -- how did you get here, what is your story?”, one of his children asked me.",
        "Child"),
    Question(
        "”Yes, please. Tell us everything.”, another one chimed in.", "Child"),
    Question("”Hahaha, you better tell them. They'll never stop asking now.”",
        "Avdol"),
    Question(
        "”It all started during the golden age of the American Conglomerate State...”",
        "Alvin"),
    Question(
        "A good hour later. By that time the whole room was filled with people, all listening to my stories.",
        "Narrator"),
    Question(
        "”...After leaving Hispania, I took a boat from Gibraltar down to Casablanca.”",
        "Alvin"),
    Question(
        "”There I stayed for about nine weeks, exploring the great city state.”",
        "Alvin"),
    Question(
        "”After that I went with a group of refugees to Algeriers.”", "Alvin"),
    Question("”We parted ways as they left for a moon colony.”", "Alvin"),
    Question(
        "”I then travelled down into the Sahara desert for around two weeks, where I then met Avdol.”",
        "Alvin"),
    Question(
        "”Yes, my friend. Quite the commotion you made at the marketplace.”",
        "Avdol"),
    Question("”Yeah, how could I have known that they didn't speak common.”",
        "Alvin"),
    Question(
        "His wife brought a mug of black tea which she placed onto the fireplace.",
        "Narrator"),
    Question("”Alright kids, time for bed.”", "Wife"),
    Question("”Ohhh...”", "Kids"),
    Question(
        "”No worries, tomorrow is a big day. We'll visit your favorite uncle -- Abdul in Cairo.”",
        "Avdol"),
    Question("The kids and most of the guests left.", "Narrator"),
    Question("”What about you, did you always live here?”", "Alvin"),
    Question(
        "”Pretty much. Why move when there is everything this city has to offer.”",
        "Avdol"),
    Question(
        "”What about the civil war, aren't rebel troops going to storm the city?”",
        "Alvin"),
    Question(
        "”No, Constantine joined the 'Golden Concordat' a few weeks ago, which we are protected under.”",
        "Avdol"),
    Question(
        "”And even though I'm still a loyalist, I will welcome the new regime with open arms.”",
        "Avdol"),
    Question(
        "”How did the 'Eastern Liberation Wars' effect Carthage, you must have been there in person?”",
        "Alvin"),
    Question("”Does my age really show that?”, he joked.", "Avdol"),
    Question(
        "”Well, Egypt provoked the United Republic by invading the holy land hoping that both the Union and Carthage would join in its endeavor.”",
        "Avdol"),
    Question(
        "”But Union forces were on full retreat and couldn't afford yet another front and Carthage declared their neutrality a few days later.”",
        "Avdol"),
    Question(
        "”Still we got conscripted. But before we could really mobilize, republican forces pushed through Egypt like it was nothing.”",
        "Avdol"),
    Question(
        "”They got completely and utterly defeated... Our moral also dropped when those Mechs first appeared at the fringes of our border.”",
        "Avdol"),
    Question(
        "”The aftermath was devestating for Egypt. They had to renounce their sovereignty and become a vassal state of the Republic.”",
        "Avdol"),
    Question(
        "”Nowdays they are a province and believe it or not they are thriving under republican rule.”",
        "Avdol"),
    Question(
        "”In hindsight them joining the Republic might have just saved them.”",
        "Avdol"),
    Question("”From whom, the NU?”", "Alvin"),
    Question(
        "”No... From us. Carthage was expanding at that time, too.”", "Avdol"),
    Question(
        "He took the black tea off the fire and poured it into two glasses.",
        "Narrator"),
    Question("”To your health, outlander.”", "Avdol"),
    Question("”And yours, Avdol.”", "Alvin"),
    Question("”How long until we get to Egypt?”", "Alvin"),
    Question(
        "”Half a day. We will go off-roading a bit, towards Siwa and then into Cairo.”",
        "Avdol"),
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

class BookF010Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”Here we are, the port of Cairo.”", "Avdol"),
    Question("”Marvellous.”", "Alvin"),
    Question(
        "”As I said, they have been thriving under the Republic.”", "Avdol"),
    Question(
        "”I was talking about the pyramids, but yeah that too.”, I chuckled.",
        "Alvin"),
    Question("”So, where are off to now?”", "Avdol"),
    Question("”Aswan. From there I'll work my way up again towards Port Said.”",
        "Alvin"),
    Question(
        "”After that definitely the holy city, Neom after that who knows...”",
        "Alvin"),
    Question("You should definitely visit Baghdad, if you get the chance.”",
        "Avdol"),
    Question(
        "”Beautiful city, plus one of my cousins lives there you would get the same hospitality like you did here.”",
        "Avdol"),
    Question("”Yeah, who knows where the road will take me.”", "Alvin"),
    Question(
        "”First call for the hovertrain to Jerusalem. Passengers please make your way to dock 4.”",
        "Comms"),
    Question("”Well, I guess this is a goodbye.”", "Alvin"),
    Question("”Come visit us again. You are always welcomed here, my friend.”",
        "Avdol"),
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

class BookF011Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        "”I'm excited. I'm about to meet Jacob and Elaine again. And their kid for the first time.”",
        "Alvin"),
    Question(
        "”The city feels kinda different now. Something changed, I can feel it.”",
        "Alvin"),
    Question("”Or it's just me, I don't know​...”", "Alvin"),
    Question(
        "Their house is still the same, let's hope that my face can still be recognized by the door.”",
        "Alvin"),
    Question("”Good day.”", "Alvin"),
    Question(
        "Jacob made a huge smile as he saw me ”Hey, my dear friend.”, and he hugged me tightly.",
        "Jacob"),
    Question("”Really like how you grew out a beard.”", "Jacob"),
    Question("”And I like your moustace.”", "Alvin"),
    Question("”Hey Alvin.”, I heard a voice behind me.", "Elaine"),
    Question("”Hey Elaine, nice to see you again.”, I said embracing her too.",
        "Alvin"),
    Question("She smiled ”Come with me, you have to meet someone.”", "Elaine"),
    Question("”Oh, I'm excited.”", "Alvin"),
    Question("”We went upstairs to their bedroom and I saw a small figure.”",
        "Alvin"),
    Question("”Hey, small one.”, I said smiling.", "Alvin"),
    Question("”Al, this is Tea. Tea, meet our friend Alvin.”", "Elaine"),
    Question("”Beautiful name...”", "Alvin"),
    Question("”Hope that's okay with you.”", "Jacob"),
    Question("”Yeah it's cool, it's your decision anyway.”", "Alvin"),
    Question(
        "”She came closer. ”Hello little Tea, you have your mothers eyes”.",
        "Alvin"),
    Question(
        "”Mommy, I want to go sleep.”, she rubbed her eyes.", "Little Tea"),
    Question(
        "”Sure Tea. You guys go ahead, I'll be outside in a few minutes”, Elaine took her hand and we went outside.",
        "Elaine"),
    Question("”Jacob, I'm happy for you.”", "Alvin"),
    Question("”I almost lost Elaine 3 years ago...”", "Jacob"),
    Question("”Damn! What happened? How?”", "Alvin"),
    Question(
        "Remember the day you left? On that day she was feeling sick, so we rushed to the doctor. A few days past and it happened again, only far worse.”",
        "Jacob"),
    Question(
        "”The doctors didn't let me in the room... I remember their words... There's a chance she will not survive the night...”",
        "Jacob"),
    Question(
        "”My whole world fall apart when I heard those words... I couldn't sleep the whole week.”",
        "Jacob"),
    Question("You should have called me on the emergency number!”", "Alvin"),
    Question(
        "”She has too take meds every few hours and sometimes even has a seizure. But... In the end everything turned out just fine.”",
        "Jacob"),
    Question(
        "”That moment I realized what's the most important thing in my life...”",
        "Jacob"),
    Question(
        "”It's family. Maybe not the family you grew up with, but the family you build up with.”",
        "Jacob"),
    Question(
        "If I lost Sarah that day, I... She and little Tea are... They are everything I have...”",
        "Jacob"),
    Question("”I fully understand you and I'm here for you too.”", "Alvin"),
    Question("”But enough of this, tell me about your journey.”", "Jacob"),
    Question(
        "”Boys, do you want some lunch?”, Elaine interrupted us.", "Elaine"),
    Question("”Yeah, I'm famished.”, I nodded.", "Alvin"),
    Question("”I was just about to tell Jacob about my adventures.”", "Alvin"),
    Question(
        "”I bet you saw some crazy things, so don't start without me.”, she said.",
        "Elaine"),
    Question("I smiled, ”You have no idea...”", "Alvin"),
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

class BookF012Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”Welcome home, honey! Took your sweet time.”", "Clara"),
    Question("”. . .”", "Alvin"),
    Question("”Psych, just kidding. Pancakes?”", "Clara"),
    Question("”Yeah, I'm starving.”", "Alvin"),
    Question(
        "”Wow, nothing really changed here... What has it been two - no three years, already.”",
        "Alvin"),
    Question("”Yeah, three years...”", "Clara"),
    Question("”What took you so long to get back?”", "Clara"),
    Question("”Ladies first.”", "Alvin"),
    Question("She smiled.", "Clara"),
    Question("”You want the short or long story?”", "Clara"),
    Question("”After I got to Vladivostok”", "Clara"),
    Question(
        "”After the snowstorm faded away, we crossed into the Carthaginian Empire.”",
        "Alvin"),
    Question(
        "”We got to Milan where we parted and I hitchhiked through Italy for a bit.”",
        "Alvin"),
    Question(
        "”I then went toward Toulouse and down into Spain and then further to Gibraltar.”",
        "Alvin"),
    Question("”After Gibraltar I took a boat down to Casablanca.”", "Alvin"),
    Question(
        "”After crossing the border into Carthage again, I almost got myself into a civil war.”",
        "Alvin"),
    Question("”Thankfully I was rescued from that from a guy named Avdol.”",
        "Alvin"),
    Question(
        "”I stayed with his family for around a month after that he got me into onto a shuttle toward Egypt.”",
        "Elaine"),
    Question("”I would spend half a year in the middle east.”", "Alvin"),
    Question(
        "”Funny thing, while travelling to Jeddah, we got ambushed by dune pirates.”",
        "Alvin"),
    Question(
        "”We had a security escort. So republic forces made quick work of them.”",
        "Alvin"),
    Question("”So, yeah that my journey in a nutshell.”", "Alvin"),
    Question(
        "”She came closer. ”Hello little Tea, you have your mothers eyes”.",
        "Alvin"),
    Question(
        "”Mommy, I want to go sleep.”, she rubbed her eyes.", "Little Tea"),
    Question(
        "”Sure Tea. You guys go ahead, I'll be outside in a few minutes”, Elaine took her hand and we went outside.",
        "Elaine"),
    Question("”Jacob, I'm happy for you.”", "Alvin"),
    Question("”I almost lost Elaine 3 years ago...”", "Jacob"),
    Question("”Damn! What happened? How?”", "Alvin"),
    Question(
        "Remember the day you left? On that day she was feeling sick, so we rushed to the doctor. A few days past and it happened again, only far worse.”",
        "Jacob"),
    Question(
        "”OThe doctors didn't let me in the room... I remember their words... There's a chance she will not survive the night...”",
        "Jacob"),
    Question(
        "”My whole world fall apart when I heard those words... I couldn't sleep the whole week.”",
        "Jacob"),
    Question("You should have called me on the emergency number!”", "Alvin"),
    Question(
        "”She has too take meds every few hours and sometimes even has a seizure. But... In the end everything turned out just fine.”",
        "Jacob"),
    Question(
        "”That moment I realized what's the most important thing in my life...”",
        "Jacob"),
    Question(
        "”It's family. Maybe not the family you grew up with, but the family you build up with.”",
        "Jacob"),
    Question(
        "If I lost Sarah that day, I... She and little Tea are... They are everything I have...”",
        "Jacob"),
    Question("”I fully understand you and I'm here for you too.”", "Alvin"),
    Question("”But enough of this, tell me about your journey.”", "Jacob"),
    Question(
        "”Boys, do you want some lunch?”, Elaine interrupted us.", "Elaine"),
    Question("”Yeah, I'm famished.”, I nodded.", "Alvin"),
    Question(
        "”I was just about to tell Jacob about my adventures.”, I told her.",
        "Alvin"),
    Question(
        "”I bet you saw some crazy things, so don't start without me.”, she said.",
        "Elaine"),
    Question("I smiled, ”You have no idea...”", "Alvin"),
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

class BookF013Q {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("”After I got to Vladivostok, I met up with resistance fighters.”",
        "Clara"),
    Question("”Resistance fighters?”", "Alvin"),
    Question("”Yeah, told me they came from Portland.”", "Clara"),
    Question(
        "”Good thing was that they had connections in the republican military.”",
        "Clara"),
    Question(
        "”That way we didn't have to take a blockade runner to get to Nome.”",
        "Clara"),
    Question("”So how did you get there?”", "Alvin"),
    Question(
        "”A military frigate got us directly to Anchorage, spared us good time.”",
        "Clara"),
    Question("”Must have been risky as stowaways.”", "Alvin"),
    Question(
        "”Oh, we weren't. It's an open secret that the Republic is working with the Resistance.”",
        "Clara"),
    Question("”That's convenient.”", "Alvin"),
    Question("”How does it look like over there?”", "Alvin"),
    Question(
        "”Well, when I arrived in Anchorage, Edmonton was getting besieged.”",
        "Clara"),
    Question("”I would stay in Alaska and Canada for a few months.”", "Clara"),
    Question(
        "”I then travelled with a military convoy down to Portland which was just liberated.”",
        "Clara"),
    Question("”It was weird arriving there.”", "Clara"),
    Question(
        "”When I asked around how long the siege took, many there said that there was no siege in the first place.”",
        "Alvin"),
    Question("”How so?”", "Alvin"),
    Question("”Republic forces just marched in and declared it liberated.”",
        "Clara"),
    Question(
        "”Only later would I learn that imperial troops were on full retreat.”",
        "Clara"),
    Question("”Yeah, the Emperor died and civil war broke out in Carthage.”",
        "Alvin"),
    Question("”That's what I heard, too.”", "Clara"),
    Question(
        "”Anyway, mostly former free states surrendered peacefully to the Republic.”",
        "Clara"),
    Question("”But, even Commonwealth states just went and gave up.”", "Clara"),
    Question(
        "”Who can blame them, the civil war has been raging on for a decade now.”",
        "Alvin"),
    Question(
        "”They weren't going to fight against a far superior power.”", "Alvin"),
    Question(
        "”OThe doctors didn't let me in the room... I remember their words... There's a chance she will not survive the night...”",
        "Jacob"),
    Question(
        "”My whole world fall apart when I heard those words... I couldn't sleep the whole week.”",
        "Jacob"),
    Question("You should have called me on the emergency number!”", "Alvin"),
    Question(
        "”She has too take meds every few hours and sometimes even has a seizure. But... In the end everything turned out just fine.”",
        "Jacob"),
    Question(
        "”That moment I realized what's the most important thing in my life...”",
        "Jacob"),
    Question(
        "”It's family. Maybe not the family you grew up with, but the family you build up with.”",
        "Jacob"),
    Question(
        "If I lost Sarah that day, I... She and little Tea are... They are everything I have...”",
        "Jacob"),
    Question("”I fully understand you and I'm here for you too.”", "Alvin"),
    Question("”But enough of this, tell me about your journey.”", "Jacob"),
    Question(
        "”Boys, do you want some lunch?”, Elaine interrupted us.", "Elaine"),
    Question("”Yeah, I'm famished.”, I nodded.", "Alvin"),
    Question(
        "”I was just about to tell Jacob about my adventures.”, I told her.",
        "Alvin"),
    Question(
        "”I bet you saw some crazy things, so don't start without me.”, she said.",
        "Elaine"),
    Question("I smiled, ”You have no idea...”", "Alvin"),
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
