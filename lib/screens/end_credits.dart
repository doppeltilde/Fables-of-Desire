import 'dart:async';
import 'package:fablesofdesire/global/audio/global_audio.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EndCredits extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

/// The main widget state.
class _BaseScreenState extends State<EndCredits> with TickerProviderStateMixin {
  late AnimationController animation;
  late Animation<double> _fadeInFadeOut;

  @override
  void initState() {
    super.initState();

    GlobalAudio.playAudio.getBGM("placeholder");

    animation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 0.4).animate(animation);

    animation.forward();
  }

  @override
  void dispose() {
    super.dispose();
  }

  ScrollController _scrollController = ScrollController();
  int speedFactor = 30;
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
                Timer(Duration(seconds: 1), () {
                  _scroll();
                });
              }
              return true;
            },
            child: Stack(children: <Widget>[
              new FadeTransition(
                opacity: _fadeInFadeOut,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/cafe.gif"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(
                            top: 100.0, bottom: 5, left: 30, right: 30),
                        child: new Text(
                          "Credits:",
                          style: new TextStyle(
                              fontSize: 45.0,
                              fontFamily: "NanumBrush",
                              color: Colors.white),
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(
                            top: 30.0, bottom: 5, left: 30, right: 30),
                        child: new Text(
                          "A note from the author:",
                          style: new TextStyle(
                              fontSize: 25.0,
                              fontFamily: "IndieFlower",
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 3.2,
                            vertical: 10),
                        child: new Text(
                          """One story ends, another one begins.
Perhaps some day I'll tell someone about my story, perhaps I achieved this goal today...

In the end I think this story had a happy ending.

There is an old saying:
”Dance like nobody is watching”.

I would like to add ”Don't just dance like nobody is watching, dance your Dance of Love, your Dance of Life”.

Turn off your device, take a deep breath and go for a walk. Look around yourself and you will see the beauty in the simple things.

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
                              fontSize: 21.0,
                              fontFamily: "Mali",
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(bottom: 5, left: 30, right: 30),
                        child: new Text(
                          "But what happened after ever after?",
                          style: new TextStyle(
                              fontSize: 25.0,
                              fontFamily: "IndieFlower",
                              color: Colors.white),
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 3.2,
                            vertical: 10),
                        child: Text(
                          """
In 6121 Alvin and Clara would move back to the Martian Technocracy.
Alvin would go on in following in his fathers footsteps and become Ambassador to the United Republic. Darian, their first son would be born not long after.

Jacob and Elaine with little Tea would stay in Republic City, where Jacob would take over the ”Valerian Trading Company”.

After winning the ”second Unification War”, the United Republic would go on and once again reach for the stars.

After loosing the first ”Sol-Conflict” against the exiled ”Tamazgha Empire”, the Martian Technocracy retreats from the outer planets and in 6125 it becomes a protectorate of the United Republic.

In 6129 the ”Tamazgha Empire” would develop the first true quantum drive, replacing the ”gravitational slingshot maneuver” and ”Magellan-Drive”, pulling the stars ever so more closer.

In late 6129 they start a blitz attack on the major republic outpost and colony on Pluto starting the second ”Sol-Conflict”.
And through hit-and-run tactics the Empire decisivly wins the first battle of Titan. Soon after the colonies on Europa and Ganymede would fall.

The great ”Sol-Conflict” would escalate into all out war and would bring the great Republic to the brink of capitulation...

But that's a story for another time...

                          """,
                          textAlign: TextAlign.justify,
                          style: new TextStyle(
                              fontSize: 21.0,
                              fontFamily: "Mali",
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
                      heading(
                        "Published by:",
                      ),
                      textUrl('https://smalldreams.co', "SmallDreams"),
                      heading(
                        "Music by:",
                      ),
                      textUrl('https://starhelix.space', "Some random text"),
                      heading(
                        "Main Image by:",
                      ),
                      // textUrl(
                      //     'https://www.artstation.com/snatti', "Atey Ghailan"),
                      // heading(
                      //   "Classroom by:",
                      // ),
                      // textUrl('https://www.deviantart.com/ah-kai', "AH-Kai"),
                      // heading(
                      //   "Sci-Fi images by:",
                      // ),
                      // textUrl('https://sparth.tumblr.com/', "SPARTH"),
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
                            top: 30.0, bottom: 5, left: 30, right: 30),
                        child: new Text(
                          "Other:",
                          style: new TextStyle(
                            fontSize: 21.0,
                            color: Colors.white,
                            fontFamily: "BottleParty",
                          ),
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 3),
                        child: new Text(
                          "Hey, I'm a 20 y/o developer. It is very hard for small developers to succeed in the App Store. So, please *RATE 5 STARS* and support the development further. Thank You so much!",
                          textAlign: TextAlign.justify,
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontFamily: "Mali",
                          ),
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(
                            top: 30.0, bottom: 25, left: 30, right: 30),
                        child: new Text(
                          "Thanks for playing!",
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontFamily: "Mali",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed("/home");
                        },
                        child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width / 3,
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
                                    fontFamily: "SpaceMono"),
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
              )
            ])));
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
        fontFamily: "Mali",
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
        fontFamily: "Nunito",
      ),
    ),
  );
}
