// Primary
import 'package:dart_vlc/dart_vlc.dart';
import 'package:fablesofdesire/global/credits.dart';
import 'package:fablesofdesire/global/will_pop.dart';
import 'package:fablesofdesire/routes/load_game.dart';
import 'package:universal_io/io.dart';
import 'package:fablesofdesire/global/globals.dart';
import 'package:fablesofdesire/global/setings.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
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
      drawerEnableOpenDragGesture: false,
      drawer: AppDrawerMain(),
      body: AppBody(controller: controller),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({
    Key? key,
    required PageController controller,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _controller,
      children: [
        HomePage2(),
        // About(),
        Settings(),
      ],
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
  Player? player;
  AudioPlayer audioPlayer = AudioPlayer();
  late AudioCache _audioCache;
  double? opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _audioCache = AudioCache(prefix: "assets/audio/");
    if (!Platform.isWindows || !Platform.isLinux) {
      playAudio();
    }
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  void playAudio() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? _vol;
    _vol = (prefs.getDouble('volValue'));
    audioPlayer = await _audioCache.loop('warmth-of-the-sun-adi-goldstein.mp3',
        volume: _vol!);
  }

  void stopAudio() {
    audioPlayer.stop();
  }

  @override
  void didChangeDependencies() async {
    if (Platform.isWindows || Platform.isLinux) {
      super.didChangeDependencies();
      player = Player(
        id: 0,
      );

      getSound();
    }
  }

  Future<dynamic> getSound() async {
    if (Platform.isWindows || Platform.isLinux) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      double? _vol;
      _vol = (prefs.getDouble('volValue'));
      await player?.open(
        new Playlist(
          playlistMode: PlaylistMode.loop,
          medias: [
            await Media.asset(
                'assets/audio/warmth-of-the-sun-adi-goldstein.mp3'),
          ],
        ),
      );
      await player?.setVolume(_vol!);
    }
  }

  bool? chapters;

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
                                      player?.stop();
                                    });
                                  } else {
                                    stopAudio();
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
                                      player?.stop();
                                    });
                                  } else {
                                    stopAudio();
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
                                            player: player,
                                            audioPlayer: audioPlayer,
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

class Star extends StatefulWidget {
  final top;
  final right;
  final animationController;

  const Star({Key? key, this.top, this.right, this.animationController})
      : super(key: key);

  @override
  _StarState createState() => _StarState();
}

class _StarState extends State<Star> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.top,
      right: widget.right,
      child: ScaleTransition(
        alignment: Alignment.center,
        scale: Tween<double>(begin: 0.4, end: 1.0).animate(
          CurvedAnimation(
            parent: widget.animationController,
            curve: Interval(0.1, 1.0, curve: Curves.fastOutSlowIn),
          ),
        ),
        child: Container(
          width: 3,
          height: 3,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
