import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:bubble/bubble.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

///
/// TESTS
///

// Main Character Card
Widget mainMC(context, visible, text) {
  return Visibility(
    visible: visible,
    child: textCard(
      context,
      text,
    ),
  );
}

dynamic skipClip(context, route) {
  AudioPlayer player = new AudioPlayer();
  void stopAudio() {
    player.stop();
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 6),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              primary: Theme.of(context).primaryColor),
          onPressed: () => showAlertDialog(context),
          onLongPress: () {
            stopAudio();
            FlameAudio.bgm.stop();
            Navigator.of(context).pushReplacementNamed(route);
          },
          child: Text(
            "Skip >>",
            style: TextStyle(
                color: Theme.of(context).accentColor,
                fontFamily: "BottleParty",
                fontSize: 25,
                letterSpacing: .4),
          ),
        ),
      ),
    ],
  );
}

class BackgroundBuilder extends StatefulWidget {
  final String? image;
  BackgroundBuilder({Key? key, this.image}) : super(key: key);
  @override
  _BackgroundBuilderState createState() => _BackgroundBuilderState();
}

class _BackgroundBuilderState extends State<BackgroundBuilder> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.image!),
          fit: BoxFit.cover,
        ),
      ),
      child: new BackdropFilter(
        filter: new ImageFilter.blur(sigmaX: 0, sigmaY: 0),
        child: new Container(
          decoration: new BoxDecoration(color: Colors.black.withOpacity(0)),
        ),
      ),
    );
  }
}

class ImageBuilder extends StatefulWidget {
  final String? image;
  ImageBuilder({Key? key, this.image}) : super(key: key);
  @override
  _ImageBuilderState createState() => _ImageBuilderState();
}

class _ImageBuilderState extends State<ImageBuilder> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 300),
      child: ListView(
          key: UniqueKey(),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/images/sprites/" + widget.image! + ".png",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 1.5,
                )
              ],
            )
          ]),
    );
  }
}

///
/// TESTS
///

Widget interludeAppbar(context, text) {
  return AppBar(
    backgroundColor: Colors.black,
    centerTitle: true,
    brightness: Brightness.dark,
    title: Text(
      text,
      style: TextStyle(color: Colors.white, fontFamily: "SpaceMono"),
    ),
    automaticallyImplyLeading: false,
  );
}

Widget interludeText(text) {
  return Padding(
    padding: EdgeInsets.only(top: 35.0, bottom: 20, left: 50, right: 50),
    child: new Text(
      text,
      textAlign: TextAlign.center,
      style: new TextStyle(
          color: Colors.white, fontSize: 18.0, fontFamily: "SpaceMono"),
    ),
  );
}

class InterludeSound extends StatefulWidget {
  final String? s;
  final String? a;
  final String? q;
  final int n;
  //(context, a, q, n)
  InterludeSound(this.s, this.a, this.q, this.n);

  @override
  _InterludeSoundState createState() => _InterludeSoundState();
}

class _InterludeSoundState extends State<InterludeSound> {
//Widget textCardOther2(context, String text) {

  bool? isNoti;
  late AudioCache _audioCache;
  AudioPlayer player = new AudioPlayer();
  @override
  void initState() {
    super.initState();
    //getSharedPrefs();
    _audioCache = AudioCache(prefix: "assets/audio/test/jacob/");
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
      _playAudio();
      _stopAudio();
    } else {
      //_audioCache.play('pop.mp3', volume: 0);
    }
  }

  void _playAudio() async {
    player = await _audioCache.play(widget.s! + '.mp3');
  }

  void _stopAudio() {
    player.stop();
  }

  @override
  Widget build(BuildContext context) {
    // DEBUG
    getSharedPrefs();

    print(widget.s);
    print(widget.a);
    print(widget.q);
    print(widget.n);
    //
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Opacity(
          opacity: 0.8,
          child: Card(
            color: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(widget.a!,
                  style: TextStyle(
                    fontFamily: "BottleParty",
                    fontSize: 37,
                    color: Theme.of(context).accentColor,
                  )),
            ),
          ),
        ),
        LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: width / 8),
              child: Opacity(
                opacity: 0.8,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.03, vertical: height * 0.02),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              widget.q!,
                              textAlign: TextAlign.left,
                              textStyle: GoogleFonts.gothicA1(
                                color: Theme.of(context).accentColor,
                                fontSize: 21,
                              ),
                              speed: const Duration(milliseconds: 40),
                            ),
                          ],
                          displayFullTextOnTap: true,
                          isRepeatingAnimation: false,
                          key: ValueKey(widget.n),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Opacity(
              opacity: 0.8,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.03, vertical: height * 0.02),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            widget.q!,
                            textAlign: TextAlign.left,
                            textStyle: GoogleFonts.gothicA1(
                              color: Theme.of(context).accentColor,
                              fontSize: 21,
                            ),
                            speed: const Duration(milliseconds: 40),
                          ),
                        ],
                        displayFullTextOnTap: true,
                        isRepeatingAnimation: false,
                        key: ValueKey(widget.n),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        }),
      ],
    );
  }
}

class InterludeSoundJacob extends StatefulWidget {
  final String? s;
  final String? a;
  final String? q;
  final int n;
  InterludeSoundJacob(this.s, this.a, this.q, this.n);

  @override
  _InterludeSoundJacobState createState() => _InterludeSoundJacobState();
}

class _InterludeSoundJacobState extends State<InterludeSoundJacob> {
  bool? isNoti;
  late AudioCache _audioCache;
  AudioPlayer player = new AudioPlayer();
  @override
  void initState() {
    super.initState();

    //getSharedPrefs();
    _audioCache = AudioCache(prefix: "assets/audio/jacob/");
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
      _playAudio();
    } else {
      //_audioCache.play('pop.mp3', volume: 0);
    }
  }

  void _playAudio() async {
    player = await _audioCache.play(widget.s! + '.mp3');
  }

  void _stopAudio() {
    player.stop();
  }

  @override
  Widget build(BuildContext context) {
    // DEBUG
    _stopAudio();
    getSharedPrefs();
    print(widget.s);
    print(widget.a);
    print(widget.q);
    print(widget.n);
    //
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Opacity(
          opacity: 0.8,
          child: Card(
            color: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                widget.a!,
                style: TextStyle(
                  fontFamily: "BottleParty",
                  fontSize: 37,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
          ),
        ),

        //
        //  CARD
        //
        LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: width / 8),
              child: Opacity(
                opacity: 0.8,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.03, vertical: height * 0.02),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              widget.q!,
                              textAlign: TextAlign.left,
                              textStyle: GoogleFonts.gothicA1(
                                color: Theme.of(context).accentColor,
                                fontSize: 21,
                              ),
                              speed: const Duration(milliseconds: 40),
                            ),
                          ],
                          displayFullTextOnTap: true,
                          isRepeatingAnimation: false,
                          key: ValueKey(widget.n),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Opacity(
              opacity: 0.8,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.03, vertical: height * 0.02),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            widget.q!,
                            textAlign: TextAlign.left,
                            textStyle: GoogleFonts.gothicA1(
                              color: Theme.of(context).accentColor,
                              fontSize: 21,
                            ),
                            speed: const Duration(milliseconds: 40),
                          ),
                        ],
                        displayFullTextOnTap: true,
                        isRepeatingAnimation: false,
                        key: ValueKey(widget.n),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        }),
      ],
    );
  }
}

class InterludeSoundTea extends StatefulWidget {
  final String? s;
  final String? a;
  final String? q;
  final int n;
  InterludeSoundTea(this.s, this.a, this.q, this.n);

  @override
  _InterludeSoundTeaState createState() => _InterludeSoundTeaState();
}

class _InterludeSoundTeaState extends State<InterludeSoundTea> {
  bool? isNoti;
  late AudioCache _audioCache;
  AudioPlayer player = new AudioPlayer();
  @override
  void initState() {
    super.initState();

    //getSharedPrefs();
    _audioCache = AudioCache(prefix: "assets/audio/tea/");
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
      _playAudio();
    } else {
      //_audioCache.play('pop.mp3', volume: 0);
    }
  }

  void _playAudio() async {
    player = await _audioCache.play(widget.s! + '.mp3');
  }

  void _stopAudio() {
    player.stop();
  }

  @override
  Widget build(BuildContext context) {
    _stopAudio();
    getSharedPrefs();
    print(widget.s);
    print(widget.a);
    print(widget.q);
    print(widget.n);
    //
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Opacity(
          opacity: 0.8,
          child: Card(
            color: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(widget.a!,
                  style: TextStyle(
                    fontFamily: "BottleParty",
                    fontSize: 37,
                    color: Theme.of(context).accentColor,
                  )),
            ),
          ),
        ),
        LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: width / 8),
              child: Opacity(
                opacity: 0.8,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.03, vertical: height * 0.02),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              widget.q!,
                              textAlign: TextAlign.left,
                              textStyle: GoogleFonts.gothicA1(
                                color: Theme.of(context).accentColor,
                                fontSize: 21,
                              ),
                              speed: const Duration(milliseconds: 40),
                            ),
                          ],
                          displayFullTextOnTap: true,
                          isRepeatingAnimation: false,
                          key: ValueKey(widget.n),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Opacity(
              opacity: 0.8,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.03, vertical: height * 0.02),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            widget.q!,
                            textAlign: TextAlign.left,
                            textStyle: GoogleFonts.gothicA1(
                              color: Theme.of(context).accentColor,
                              fontSize: 21,
                            ),
                            speed: const Duration(milliseconds: 40),
                          ),
                        ],
                        displayFullTextOnTap: true,
                        isRepeatingAnimation: false,
                        key: ValueKey(widget.n),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        }),
      ],
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons

  Widget continueButton = ElevatedButton(
    child: Text(
      "Okay",
      style:
          TextStyle(fontFamily: "BottleParty", fontSize: 25, letterSpacing: .4),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.amber,
    title: Text(
      "CHAPTER SKIP!",
      textAlign: TextAlign.center,
      style:
          TextStyle(fontFamily: "BottleParty", fontSize: 35, letterSpacing: .2),
    ),
    content: Text(
      "Are you sure about that? If so please long press the skip button.",
      textAlign: TextAlign.center,
      style:
          TextStyle(fontFamily: "SpaceMono", fontSize: 18, letterSpacing: .4),
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

Widget interlude(context, a, q, n) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  // showAlertDialog(BuildContext context) {
  //   // set up the buttons

  //   Widget continueButton = ElevatedButton(
  //     child: Text(
  //       "Okay",
  //       style: TextStyle(
  //           fontFamily: "BottleParty", fontSize: 25, letterSpacing: .4),
  //     ),
  //     onPressed: () {
  //       Navigator.pop(context);
  //     },
  //   );

  //   // set up the AlertDialog
  //   AlertDialog alert = AlertDialog(
  //     backgroundColor: Colors.amber,
  //     title: Text(
  //       "CHAPTER SKIP!",
  //       textAlign: TextAlign.center,
  //       style: TextStyle(
  //           fontFamily: "BottleParty", fontSize: 35, letterSpacing: .2),
  //     ),
  //     content: Text(
  //       "Are you sure about that? If so please long press the skip button.",
  //       textAlign: TextAlign.center,
  //       style:
  //           TextStyle(fontFamily: "SpaceMono", fontSize: 18, letterSpacing: .4),
  //     ),
  //     actions: [
  //       continueButton,
  //     ],
  //   );

  //   // show the dialog
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return alert;
  //     },
  //   );
  // }

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      // Padding(
      //   padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 5),
      //   child:

      Opacity(
        opacity: 0.9,
        child: Card(
          color: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              a,
              style: TextStyle(
                fontFamily: "BottleParty",
                fontSize: 37,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ),
      ),

      Opacity(
        opacity: 0.9,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03, vertical: height * 0.02),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      q,
                      textAlign: TextAlign.left,
                      textStyle: GoogleFonts.gothicA1(
                        color: Theme.of(context).accentColor,
                        fontSize: 21,
                      ),
                      speed: const Duration(milliseconds: 40),
                    ),
                  ],
                  displayFullTextOnTap: true,
                  isRepeatingAnimation: false,
                  key: ValueKey(n),
                ),
              ),
            ),
          ),
        ),
      ),
      // Container(
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(18.0),
      //         ),
      //         primary: Theme.of(context).primaryColor),
      //     onPressed: () => showAlertDialog(context),
      //     onLongPress: () => Navigator.pushReplacement(context),
      //     child: Text(
      //       "Skip >>",
      //       style: TextStyle(
      //           fontFamily: "BottleParty", fontSize: 25, letterSpacing: .4),
      //     ),
      //   ),
      // ),
    ],
  );
}

// Gestures
class AllowMultipleGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);
  }
}

void interludeModal(context, route) {
  showModalBottomSheet<void>(
    isDismissible: false,
    enableDrag: false,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        color: Colors.red[400],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      child: Text('Continue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontFamily: "BottleParty",
                            fontSize: MediaQuery.of(context).size.width * .08,
                            letterSpacing: 2,
                          )),
                      onPressed: () => Navigator.of(context).pushNamed(route)),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Widget continueButton(context, route) {
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).accentColor,
        elevation: 4.0,
        padding: EdgeInsets.only(top: 10, bottom: 10),
      ),
      child: Text(
        "Continue",
        style: TextStyle(
            fontSize: 30,
            color: Theme.of(context).primaryColor,
            fontFamily: "BottleParty"),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(route);
      },
    ),
  );
}

// getPref(String name) async {
//   SharedPreferences localstorage = await SharedPreferences.getInstance();
//   String name = localstorage.getString('name') ?? '';
// }

Widget continueButtonWhite(context, route) {
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        elevation: 4.0,
        padding: EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
      ),
      child: Text(
        "Continue",
        style: TextStyle(
            fontSize: 30, color: Colors.black, fontFamily: "BottleParty"),
      ),
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(route);
      },
    ),
  );
}

Widget textCard(context, String text) {
  return Bubble(
      margin: BubbleEdges.only(top: 10, right: 10, left: 100),
      padding: BubbleEdges.all(7),
      elevation: 0,
      alignment: Alignment.topRight,
      nip: BubbleNip.rightBottom,
      color: Theme.of(context).canvasColor,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18.5,
            color: Theme.of(context).hintColor,
            fontFamily: "PxGrotesk"),
        textAlign: TextAlign.left,
      ));
}

Widget textCardBlack(String text) {
  return Bubble(
    margin: BubbleEdges.only(top: 10, right: 10, left: 100),
    padding: BubbleEdges.all(7),
    elevation: 0,
    alignment: Alignment.topRight,
    nip: BubbleNip.rightBottom,
    color: Colors.black,
    child: Text(text,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.white, fontSize: 18.0, fontFamily: "PxGrotesk")),
  );
}

Widget textCardOther(context, String text) {
  return Bubble(
    margin: BubbleEdges.only(top: 10, left: 10, right: 100),
    padding: BubbleEdges.all(10),
    elevation: 0,
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftBottom,
    color: Theme.of(context).cardColor,
    child: Text(
      text,
      style: TextStyle(
          fontSize: 18.0,
          color: Theme.of(context).accentColor,
          fontFamily: "PxGrotesk"),
      textAlign: TextAlign.left,
    ),
  );
}

class TextCardOther extends StatefulWidget {
  final String text;
  TextCardOther(this.text);

  @override
  _TextCardOtherState createState() => _TextCardOtherState();
}

class _TextCardOtherState extends State<TextCardOther> {
//Widget textCardOther2(context, String text) {
  late AudioCache _audioCache;
  bool? isNoti;
  @override
  void initState() {
    super.initState();
    getSharedPrefs();
    _audioCache = AudioCache(prefix: "assets/sound/messenger/");
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
      _audioCache.play('pop.mp3', volume: 1);
    } else {
      //_audioCache.play('pop.mp3', volume: 0);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 0),
      child: Bubble(
        margin: BubbleEdges.only(top: 10, left: 10, right: 100),
        padding: BubbleEdges.all(7),
        elevation: 0,
        alignment: Alignment.topLeft,
        nip: BubbleNip.leftBottom,
        color: Theme.of(context).cardColor,
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: 18.5,
              color: Theme.of(context).accentColor,
              fontFamily: "PxGrotesk"),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}

class TextCardBubble extends StatefulWidget {
  @override
  _TextCardBubbleState createState() => _TextCardBubbleState();
}

class _TextCardBubbleState extends State<TextCardBubble> {
  late AudioCache _audioCache;
  bool? isNoti;
  @override
  void initState() {
    super.initState();
    getSharedPrefs();
    _audioCache = AudioCache(prefix: "assets/sound/messenger/");
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
      _audioCache.play('bubble.mp3', volume: 1);
    } else {
      //_audioCache.play('pop.mp3', volume: 0);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Bubble(
      margin: BubbleEdges.only(top: 10, left: 10, right: 100),
      padding: BubbleEdges.only(bottom: 10),
      elevation: 0,
      alignment: Alignment.topLeft,
      nip: BubbleNip.leftBottom,
      color: Theme.of(context).cardColor,
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText(
            "· · ·",
            textAlign: TextAlign.left,
            textStyle: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 21,
            ),
            speed: Duration(milliseconds: 100),
          ),
        ],
      ),
    );
  }
}

Widget animatedText(text, size, weight, family) {
  return AnimatedTextKit(
    animatedTexts: [
      TyperAnimatedText(
        text,
        speed: Duration(milliseconds: 70),
        textStyle: TextStyle(
            fontSize: size,
            fontWeight: weight,
            color: Colors.white,
            fontFamily: family),
        textAlign: TextAlign.center,
      )
    ],
  );
}

Widget textCardBubble(context, String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Bubble(
      margin: BubbleEdges.only(top: 10, left: 10, right: 100),
      padding: BubbleEdges.all(10),
      elevation: 0,
      alignment: Alignment.topLeft,
      nip: BubbleNip.leftBottom,
      color: Theme.of(context).cardColor,
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText(
            text,
            textAlign: TextAlign.left,
            textStyle: GoogleFonts.gothicA1(
              color: Theme.of(context).accentColor,
              fontSize: 21,
            ),
            speed: Duration(milliseconds: 100),
          ),
        ],
      ),
    ),
  );
}

Widget textCardOtherRed(context, String text) {
  return Bubble(
    margin: BubbleEdges.only(top: 10, left: 10, right: 100),
    padding: BubbleEdges.all(10),
    elevation: 1.0 * 1,
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftBottom,
    color: Colors.redAccent,
    child: Text(text,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.white, fontSize: 18.0, fontFamily: "PxGrotesk")),
  );
}

Widget textCredits(String text) {
  return new Padding(
    padding: EdgeInsets.only(top: 5.0, bottom: 5, left: 30, right: 30),
    child: new Text(
      text,
      textAlign: TextAlign.justify,
      style: new TextStyle(
          fontSize: 17.0, fontFamily: "SpaceMono", color: Colors.white),
    ),
  );
}

Widget textCardCenter(context, String text) {
  return new Padding(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
    child: Bubble(
      color: Theme.of(context).primaryColor,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 18.0,
            fontFamily: "SpaceMono"),
      ),
    ),
  );
}

Widget messageComposer(context) {
  return SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.solidSmileBeam),
            iconSize: 25.0,
            onPressed: () {},
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Text("Send a message...")),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.telegramPlane),
            iconSize: 25.0,
            onPressed: () {},
          ),
        ],
      ),
    ),
  );
}

Widget typeWriter(context, text) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: SizedBox(
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              text,
              speed: const Duration(milliseconds: 100),
            ),
          ],
          isRepeatingAnimation: false,
        ),
      ),
    ),
  );
}

Widget speechTextComposer(context, text, icon) {
  return SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.solidSmileBeam),
            iconSize: 25.0,
            onPressed: () {},
          ),
          text,
          icon,
        ],
      ),
    ),
  );
}

// Widget animatedText() {
//   return AnimatedTextKit(
//     animatedTexts: [
//       TyperAnimatedText(
//         text,
//         textAlign: TextAlign.left,
//         textStyle: GoogleFonts.gothicA1(
//           color: Theme.of(context).accentColor,
//           fontSize: 21,
//         ),
//         speed: Duration(milliseconds: 100),
//       ),
//     ],
//   );
// }
