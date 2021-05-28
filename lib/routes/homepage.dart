// Primary
import 'package:dart_vlc/dart_vlc.dart';
import 'package:fablesofdesire/global/audio/game_audio.dart';
import 'package:fablesofdesire/global/credits.dart';
import 'package:fablesofdesire/global/will_pop.dart';
import 'package:fablesofdesire/routes/load_game.dart';
import 'package:universal_io/io.dart';
import 'package:fablesofdesire/global/setings.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  static const currentRoute = "/home";
  @override
  _WildfyreState createState() => _WildfyreState();
}

class _WildfyreState extends State<HomePage> {
  static const int _startingPageId = 0;
  bool? isSwitchedFT;
  int selectedPageId = _startingPageId;
  TabController? tabscon;
  bool init = true;
  final controller = PageController(
    initialPage: 0,
  );

  List<Map<String, dynamic>> images = [
    {
      "image": "assets/images/sprites/Cast/MC_Sad.png",
    },
    {
      "image": "assets/images/sprites/Cast/MC_Angry.png",
    },
    {
      "image": "assets/images/sprites/Cast/MC_Blush.png",
    },
    {
      "image": "assets/images/sprites/Cast/MC_Happy.png",
    },
  ];
  void initState() {
    super.initState();
  }

  // PRECACHE IMAGES
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (var i in images) precacheImage(AssetImage(i["image"]), context);
  }

  bool isLightTheme = true;
  var scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: HomePage2(),
    );
  }
}

// HomePage
class HomePage2 extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

/// The main widget state.
class _BaseScreenState extends State<HomePage2> {
  bool isLightTheme = true;

  double? opacity = 0.0;

  @override
  void initState() {
    super.initState();

    playAudio();

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  CurrentState current = new CurrentState();
  playAudio() {
    if (!Platform.isWindows || Platform.isLinux) {
      GameAudio.bgm.play("warmth-of-the-sun-adi-goldstein.mp3");
    } else {
      GameAudioDesktop.playAudio.player?.currentStream.listen((current) {
        this.setState(() => this.current = current);
      });
      GameAudioDesktop.playAudio.play("warmth-of-the-sun-adi-goldstein.mp3");
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(context),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/bgs/mininature_001_19201440.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: opacity!,
              duration: Duration(milliseconds: 300),
              child: Center(
                child: new Container(
                  child: SafeArea(
                    child: new SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: ElevatedButton(
                                child: Text(
                                  "START",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontFamily: "Julee"),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        side: BorderSide(color: Colors.white))),
                                onPressed: () async {
                                  if (Platform.isWindows || Platform.isLinux) {
                                    setState(() {
                                      GameAudioDesktop.playAudio.stop();
                                    });
                                  }

                                  Navigator.of(context).pushNamed('/intro');
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: ElevatedButton(
                                child: Text(
                                  "LOAD",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 35,
                                      fontFamily: "Julee"),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        side: BorderSide(color: Colors.white))),
                                onPressed: () async {
                                  if (Platform.isWindows || Platform.isLinux) {
                                    setState(() {
                                      GameAudioDesktop.playAudio.stop();
                                    });
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoadGame()),
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: ElevatedButton(
                                child: Text(
                                  "OPTIONS",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 35,
                                      fontFamily: "Julee"),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        side: BorderSide(color: Colors.white))),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Settings(
                                            route: "/home",
                                          )),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: ElevatedButton(
                                child: Text(
                                  "CREDITS",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 35,
                                      fontFamily: "Julee"),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        side: BorderSide(color: Colors.white))),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Credits()),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("Okay."),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      contentPadding: EdgeInsets.all(5),
      backgroundColor: Colors.white,
      title: Text(
        "Not available",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28),
      ),
      content: Text(
        "Sorry! Currently not available.",
        textAlign: TextAlign.center,
        style: TextStyle(),
      ),
      actions: [
        okButton,
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
}
