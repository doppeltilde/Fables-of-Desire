import 'dart:async';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EndCreditsSad extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

/// The main widget state.
class _BaseScreenState extends State<EndCreditsSad> {
  bool? isNoti;
  late AudioCache _audioCache;
  AudioPlayer player = new AudioPlayer();

  @override
  void initState() {
    getSound();
    super.initState();
    _audioCache = AudioCache(prefix: "assets/sound/");
  }

  Future<Null> getSound() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
      playAudio();
    } else {
      //_audioCache.play('pop.mp3', volume: 0);
    }
  }

  void playAudio() async {
    player = await _audioCache.play('kalax.mp3');
  }

  void stopAudio() {
    player.stop();
  }

  @override
  void dispose() {
    super.dispose();
  }

  ScrollController _scrollController = ScrollController();
  int speedFactor = 25;
  bool scroll = true;

  _scroll() {
    double maxExtent = _scrollController.position.maxScrollExtent;
    double distanceDifference = maxExtent - _scrollController.offset;
    double durationDouble = distanceDifference / speedFactor;

    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: Duration(seconds: durationDouble.toInt()),
        curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) => _scroll());

    return Scaffold(
      backgroundColor: Colors.black,
      body: NotificationListener(
        onNotification: (dynamic notif) {
          if (notif is ScrollEndNotification && scroll) {
            Timer(Duration(milliseconds: 777), () {
              _scroll();
            });
          }
          return true;
        },
        child: SingleChildScrollView(
          controller: _scrollController,
          child: new Container(
            child: Center(
              child: new Column(
                // center the children
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                  new Padding(
                    padding: EdgeInsets.only(
                        top: 5.0, bottom: 5, left: 30, right: 30),
                    child: new Text(
                      """”It’s almost been two years without him.

No he didn’t dump me.
No I didn’t dump him.

He died.

He was my light. My happiness. My love.

On May 30th 2017 an angel died.

I remember the first time I saw him. The first time I told him I loved him. Our first kiss. Our first date.

I thought he was the love of my life.



I’ve moved on and I have found another, but that doesn’t stop the hurt I feel.

The memories of him are fading.

It hurts.

But I will live and breathe for him.

He would want that...”










”I miss the way she looked at me,
like I was a shining star.

I miss how she used to hug me,
like I was what she needed to live.

I miss how we used to talk,
like we were true lovers.

I miss holding her,
It felt as though it was only me and her.

I miss holding her hand,
small and soft, it was my life line.

I miss her wanting me
I miss being loved 
I miss her
I miss her
I miss her!”






”I was in love with a girl for 6 years and she made me smile.
And I made her laugh till she couldn't breathe.

I loved every moment with her.

But she passed a away to cancer.

I miss looking into her beautiful eyes and cute smile and miss kissing her.

She walks in the meadows of grace and light and forever shall she lay inside my heart.
For she will always be my true love and I will never forget her.

Rest my love who made me smile when times were dark and sad.”
""",
                      textAlign: TextAlign.justify,
                      style: new TextStyle(
                          fontSize: 18.0,
                          fontFamily: "Arvo",
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                  new Padding(
                    padding: EdgeInsets.only(
                        top: 15.0, bottom: 5, left: 30, right: 30),
                    child: Text(
                      """
”How rare and beautiful it is to even exist.”

                          """,
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 35.0,
                          fontFamily: "BottleParty",
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                  new Padding(
                    padding: EdgeInsets.only(
                        top: 30.0, bottom: 5, left: 30, right: 30),
                    child: new Text(
                      "A note from the author:",
                      style: new TextStyle(
                          fontSize: 25.0,
                          fontFamily: "BottleParty",
                          color: Colors.white),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(
                        top: 5.0, bottom: 5, left: 30, right: 30),
                    child: new Text(
                      """One story ends, another one begins.
Perhaps some day I'll tell someone about my story, perhaps I achieved this goal today...

In the end I think this story had a happy ending.

There is an old saying:
”Dance like nobody is watching”.

I would like to add ”Don't just dance like nobody is watching, dance your Dance of Love, your Dance of Life”.

Turn off your phone, take a deep breath and go for a walk. Look around yourself and you will see the beauty in the simple things.

The trees, the animals, the stars, all of creation made to be seen by your eyes.

Learn to embrace every minute of your life. The good, the bad. Embrace it, for it is your past, but don't let it define you.

Go out and write your own story, your own dance under the stars.


She was afraid of time, I used to be too, but not anymore. We need to push through, no matter if we fail or not.

The choices you have made and even others have made for you should not define the tomorrow you should become.

Don't dwell on the ”what-ifs”. The past should be left in the past, otherwise it will destroy your future.

Live life for what tomorrow has to offer, not for what yesterday has taken away.


Crap, I'm already late!

I better get going.


Wait, what's that?


Under a sheet of paper...


Oh, there you are.


The necklace I gave to Tea a few years ago.


I should take it with me...""",
                      textAlign: TextAlign.justify,
                      style: new TextStyle(
                          fontSize: 18.0,
                          fontFamily: "SpaceMono",
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5, left: 30, right: 30),
                    child: new Text(
                      "But what happened after ever after?",
                      style: new TextStyle(
                          fontSize: 25.0,
                          fontFamily: "BottleParty",
                          color: Colors.white),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(
                        top: 15.0, bottom: 5, left: 30, right: 30),
                    child: Text(
                      """
In 2118 Alvin and Clara would move back to the Martian Technocracy.
Alvin would go on in following in his fathers footsteps and become Ambassador for the United Republic. Darian, their first son would be born not long after.

Jacob and Elaine with little Tea would stay in Republic City, where Jacob would take over the ”Valerian Trading Company”.

In 2121 The United Republic finally wins the ”Parasite War” which unites Earth under one banner for the first time in history.

In 2124 the Martian Technocracy would become a protectorate of the United Republic.

In 2127 the ”Outer Planets Federation” would develop the first true quantum drive ”Hiigara-drive” prototype replacing the ”gravitational slingshot maneuver” and ”Magellan-Drive”, pulling the stars ever so more closer.

In late 2127 they start a blitz attack on the major republic outpost and colony on Pluto starting the ”Sol-Conflict”.
Through hit-and-run tactics the OPF decisivly wins the first battle of Pluto. Soon after the colonies on Titan and Ganymede would fall.

The ”Sol-Conflict” would escalate into all out war which would bring the great United Republic to the brink of capitulation...

But that's a story for another time...

                          """,
                      textAlign: TextAlign.justify,
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontFamily: "SpaceMono",
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                  heading(
                    "Writers:",
                  ),
                  new Padding(
                    padding: EdgeInsets.only(
                        top: 5.0, bottom: 5, left: 30, right: 30),
                    child: new Text(
                      "Chris",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: "SpaceMono",
                      ),
                    ),
                  ),
                  heading(
                    "Developers:",
                  ),
                  textUrl(
                    'https://jona.space/?ref=danceoflove',
                    "Jona 타다시 Feucht",
                  ),
                  Divider(),
                  heading(
                    "Published by:",
                  ),
                  textUrl('https://starhelix.space', "StarHelix"),
                  Divider(),
                  heading(
                    "Music by:",
                  ),
                  textUrl('https://starhelix.space', "Adi Goldstein"),
                  Divider(),
                  heading(
                    "Main Image by:",
                  ),
                  textUrl('https://www.artstation.com/snatti', "Atey Ghailan"),
                  Divider(),
                  heading(
                    "Character Design by:",
                  ),
                  textUrl('https://www.deviantart.com/ah-kai', "AH-Kai"),
                  Divider(),
                  heading(
                    "Background Design by:",
                  ),
                  textUrl('https://twitter.com/rachelchenda', "Rachel Chen"),
                  Divider(),
                  heading(
                    "Other",
                  ),
                  new Padding(
                    padding: EdgeInsets.only(
                        top: 5.0, bottom: 5, left: 30, right: 30),
                    child: new Text(
                      "Other images are property of their respective owners.",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: "SpaceMono",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                  new Padding(
                    padding: EdgeInsets.only(
                        top: 30.0, bottom: 25, left: 30, right: 30),
                    child: new Text(
                      "Thanks for playing!",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: "SpaceMono",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  GestureDetector(
                    onTap: () {
                      FlameAudio.bgm.stop();
                      Navigator.of(context).pushReplacementNamed("/book236");
                    },
                    child: Container(
                      height: 55,
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                      ).copyWith(
                        bottom: 20,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 15),
                          Text(
                            "Continue on...",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: "Arvo"),
                          ),
                          Spacer(),
                          Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.black,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      stopAudio();
                      Navigator.of(context).pushReplacementNamed("/home");
                    },
                    child: Container(
                      height: 55,
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                      ).copyWith(
                        bottom: 20,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Go to Main Menu",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: "Arvo"),
                          ),
                          Spacer(),
                          Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget textUrl(url, text) {
  return GestureDetector(
    onTap: () async {
      url = url;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    },
    child: new Text(
      text,
      textAlign: TextAlign.center,
      style: new TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 21.0,
        color: Colors.white,
        fontFamily: "SpaceMono",
      ),
    ),
  );
}

Widget heading(text) {
  return new Padding(
    padding: EdgeInsets.only(top: 30.0, bottom: 5, left: 30, right: 30),
    child: new Text(
      text,
      style: new TextStyle(
        fontSize: 30.0,
        color: Colors.white,
        fontFamily: "BottleParty",
      ),
    ),
  );
}
