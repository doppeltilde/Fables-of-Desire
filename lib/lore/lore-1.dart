import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoreOne extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

/// The main widget state.
class _BaseScreenState extends State<LoreOne> {
  get value => value;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: new Container(
          child: Center(
            child: new Column(
              // center the children
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                ),
                new Padding(
                  padding: EdgeInsets.only(
                      top: 100.0, bottom: 5, left: 30, right: 30),
                  child: new Text(
                    "Credits:",
                    style: new TextStyle(
                        fontSize: 45.0,
                        fontFamily: "BottleParty",
                        color: Colors.white),
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(
                      top: 30.0, bottom: 5, left: 30, right: 30),
                  child: new Text(
                    "How did we get to the 22nd Century?",
                    style: new TextStyle(
                        fontSize: 25.0,
                        fontFamily: "BottleParty",
                        color: Colors.white),
                  ),
                ),
                new Padding(
                  padding:
                      EdgeInsets.only(top: 5.0, bottom: 5, left: 30, right: 30),
                  child: new Text(
                    """Unlike with our timeline, Hannibal or rather Carthage won the 2nd Punic War.
They would become a bit more militaristic, but not to the extend the Roman Republic and later the Roman Empire was.
""",
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
                  padding:
                      EdgeInsets.only(top: 5.0, bottom: 5, left: 30, right: 30),
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
                  "Classroom by:",
                ),
                textUrl('https://www.deviantart.com/ah-kai', "AH-Kai"),
                Divider(),
                heading(
                  "Sci-Fi images by:",
                ),
                textUrl('https://sparth.tumblr.com/', "SPARTH"),
                Divider(),
                heading(
                  "Other",
                ),
                new Padding(
                  padding:
                      EdgeInsets.only(top: 5.0, bottom: 5, left: 30, right: 30),
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
                  padding:
                      EdgeInsets.only(top: 5.0, bottom: 5, left: 30, right: 30),
                  child: new Text(
                    "Model for\nTea Jeong:",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontFamily: "SpaceMono",
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.all(45),
                //   child: Image.asset(
                //     "assets/images/tea/teaPic1.jpg",
                //   ),
                // ),
                new Padding(
                  padding: EdgeInsets.only(bottom: 5, left: 30, right: 30),
                  child: new Text(
                    "”Kim Na Hee”",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontFamily: "SpaceMono",
                    ),
                  ),
                ),
                SizedBox(
                  height: 75,
                ),
                GestureDetector(
                  onTap: () async {
                    const url = 'https://www.instagram.com/taaarannn/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: new Text(
                    "Model for\nClara Liovich:",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontFamily: "SpaceMono",
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.all(45),
                //   child: Image.asset(
                //     "assets/images/clara/clara11.jpg",
                //   ),
                // ),
                GestureDetector(
                  onTap: () async {
                    const url = 'https://www.instagram.com/taaarannn/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: new Text(
                    "”Dasha Taran”",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 22.0,
                      color: Colors.white,
                      fontFamily: "SpaceMono",
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                ),
                // GestureDetector(
                //   onTap: () async {
                //     const url = 'https://jona.space';
                //     if (await canLaunch(url)) {
                //       await launch(url);
                //     } else {
                //       throw 'Could not launch $url';
                //     }
                //   },
                //   child: new Text(
                //     "Model for Jacob Valerian:",
                //     textAlign: TextAlign.center,
                //     style: new TextStyle(
                //       decoration: TextDecoration.underline,
                //       fontSize: 21.0,
                //       color: Colors.white,
                //       fontFamily: "SpaceMono",
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.all(45),
                //   child: Image.asset(
                //     "assets/images/jacob/jacob3.jpg",
                //   ),
                // ),
                // GestureDetector(
                //   onTap: () async {
                //     const url = 'https://jona.space';
                //     if (await canLaunch(url)) {
                //       await launch(url);
                //     } else {
                //       throw 'Could not launch $url';
                //     }
                //   },
                //   child: new Text(
                //     "”Jona 타다시 Feucht”",
                //     textAlign: TextAlign.center,
                //     style: new TextStyle(
                //       color: Colors.white,
                //       decoration: TextDecoration.underline,
                //       fontSize: 21.0,
                //       fontFamily: "SpaceMono",
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 75,
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
                  padding: EdgeInsets.only(
                      top: 5.0, bottom: 10, left: 30, right: 30),
                  child: new Text(
                    "Hey, I'm a 20 y/o developer. It is very hard for small developers to succeed in the App Store. So, please *RATE 5 STARS* and support the development further. Thank You so much!",
                    textAlign: TextAlign.justify,
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "SpaceMono",
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
                      fontFamily: "SpaceMono",
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
