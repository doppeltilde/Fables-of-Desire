import 'dart:async';
import 'package:fablesofdesire/global/audio/global_audio.dart';
import 'package:fablesofdesire/global/end_credits_comp.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class EndCredits2 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<EndCredits2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: EndCreditsScene([
      Section(title: 'Cast', roles: [
        Role(name: 'Role 1', crew: [Responsable('John Doe')]),
        Role(name: 'Role 2', crew: [Responsable('John Doe')]),
        Role(name: 'Role 3', crew: [Responsable('John Doe')]),
        Role(name: 'Role 4', crew: [Responsable('John Doe')]),
        Role(name: 'Role 5', crew: [Responsable('John Doe')]),
      ]),
      Section(title: 'Producers', roles: [
        Role(name: 'Executive producer', crew: [
          Responsable('John Doe'),
          Responsable('John Doe'),
          Responsable('John Doe')
        ]),
        Role(name: 'Producer', crew: [
          Responsable('John Doe'),
          Responsable('John Doe'),
          Responsable('John Doe')
        ])
      ]),
      Section(title: 'Other', roles: [
        Role(name: 'Role', crew: [
          Responsable('John Doe'),
          Responsable('John Doe'),
          Responsable('John Doe'),
          Responsable('John Doe')
        ])
      ])
    ]));
  }
}

class EndCredits extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

/// The main widget state.
class _BaseScreenState extends State<EndCredits> with TickerProviderStateMixin {
  late AnimationController cc;
  late Animation<double> anim;
  late AnimationController animation;
  late Animation<double> _fadeInFadeOut;
  SharedPreferences? sharedPreferences;
  double? vol = 1.0;
  @override
  void initState() {
    super.initState();
    cc = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    anim = CurvedAnimation(
      parent: cc,
      curve: Curves.easeInOutCubic,
    ).drive(Tween(begin: 0, end: 2));
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      sharedPreferences = sp;
      vol = sharedPreferences!.getDouble("volValue");

      vol = 1.0;
      persistVol(vol!);
    });
    GlobalAudio.playAudio.getBGM("placeholder");

    animation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 0.4).animate(animation);

    animation.forward();
  }

  void persistVol(double value) {
    setState(() {
      vol = value;
    });
    sharedPreferences?.setDouble("volValue", value);
  }

  @override
  void dispose() {
    cc.dispose();
    super.dispose();
  }

  ScrollController _scrollController = ScrollController();
  int speedFactor = 30;
  bool scroll = true;

  _scroll() {
    // ignore: invalid_use_of_protected_member
    if (_scrollController.positions.isNotEmpty) {
      double maxExtent = _scrollController.position.maxScrollExtent;
      double distanceDifference = maxExtent - _scrollController.offset;
      double durationDouble = distanceDifference / speedFactor;

      _scrollController.animateTo(_scrollController.position.maxScrollExtent,
          duration: Duration(seconds: durationDouble.toInt()),
          curve: Curves.linear);
    }
  }

  List<Map<String, dynamic>> roles = [
    {
      "roleName": "Executive Producer",
      "name": "Neeka",
    },
    {
      "roleName": "Hidetake Writer",
      "name": "Neeka",
    },
    {
      "roleName": "Naoki Writer",
      "name": "Destini Islands",
    },
    {
      "roleName": "Tomiichi Writer",
      "name": "Neeka",
    },
    {
      "roleName": "Character Art",
      "name": "Neeka",
    },
    {
      "roleName": "Chibi Art",
      "name": "Neeka",
    },
    {
      "roleName": "Background Art",
      "name": "Neeka",
    },
    {
      "roleName": "Music",
      "name": "Neeka",
    },
    {
      "roleName": "Developer",
      "name": "Jona T. Feucht",
    },
  ];

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
                      Text(
                        "Credits",
                        style: new TextStyle(
                          fontSize: 32.0,
                          color: Colors.white,
                          fontFamily: "Nunito",
                        ),
                      ),
                      for (var i in roles)
                        Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            margin: const EdgeInsets.only(bottom: 24.0),
                            child: Column(children: <Widget>[
                              SizedBox(height: 16.0),
                              Container(
                                margin:
                                    EdgeInsets.only(bottom: 10 > 1 ? 8.0 : 0.0),
                                child: IntrinsicHeight(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                      Expanded(
                                          child: Text(i["roleName"],
                                              style: new TextStyle(
                                                fontSize: 24.0,
                                                color: Colors.white,
                                                fontFamily: "Nunito",
                                              ),
                                              textAlign: TextAlign.end)),
                                      SizedBox(width: 16.0),
                                      Expanded(
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 4.0),
                                                child: Text(i["name"],
                                                    style: new TextStyle(
                                                      fontSize: 24.0,
                                                      color: Colors.white,
                                                      fontFamily: "Nunito",
                                                    ),
                                                    textAlign: TextAlign.start))
                                          ]))
                                    ])),
                              )
                            ])),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(
                            top: 30.0, bottom: 5, left: 30, right: 30),
                        child: new Text(
                          "Other:",
                          style: new TextStyle(
                            fontSize: 40.0,
                            color: Colors.white,
                            fontFamily: "BottleParty",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () async {
                          const url = 'https://github.com/SmallDreams/Engine';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: new Text(
                            "Developed with ❤️ in the\nSalem Engine.",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 24.0,
                              color: Colors.black,
                              fontFamily: "Mali",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          cc
                            ..reset()
                            ..forward();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: RotationTransition(
                            turns: anim,
                            child: FlutterLogo(
                              size: 110,
                              style: FlutterLogoStyle.horizontal,
                            ),
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
