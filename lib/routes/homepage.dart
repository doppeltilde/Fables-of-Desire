// Primary
import 'package:dart_vlc/dart_vlc.dart';
import 'package:universal_io/io.dart';
import 'dart:math';
import 'package:fablesofdesire/global/globals.dart';
import 'package:fablesofdesire/global/setings.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _WildfyreState createState() => _WildfyreState();
}

class _WildfyreState extends State<HomePage> {
  Player? player;

  static const int _startingPageId = 0;
  bool? isSwitchedFT;
  int selectedPageId = _startingPageId;
  TabController? tabscon;
  bool init = true;
  final controller = PageController(
    initialPage: 0,
  );
  void initState() {
    super.initState();
    if (!Platform.isWindows || !Platform.isLinux) {
      getSharedPrefs();
    }
  }

  Future<dynamic> getSharedPrefs() async {
    if (Platform.isWindows || Platform.isLinux) {
    } else {
      FlameAudio.bgm.play("warmth-of-the-sun-adi-goldstein.mp3", volume: 1.0);
    }
  }

  bool isLightTheme = true;
  var scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      endDrawer: AppDrawerMain(),
      body: AppBody(controller: controller),
      bottomNavigationBar: new LayoutBuilder(builder: (context, constraints) {
        if (Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
          return SizedBox.shrink();
        } else {
          return Theme(
            data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                canvasColor: Colors.white,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Colors.white,
                textTheme: Theme.of(context).textTheme.copyWith(
                    caption: TextStyle(color: Theme.of(context).accentColor))),
            child: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      selectedPageId == 0 ? Icons.menu : Icons.menu_outlined,
                      color: Colors.black,
                    ),
                    label: 'HOME',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      selectedPageId == 1
                          ? Icons.category
                          : Icons.category_outlined,
                      color: Colors.black,
                    ),
                    label: 'MORE',
                  ),
                ],
                unselectedLabelStyle: TextStyle(fontSize: 18, letterSpacing: 1),
                selectedLabelStyle: TextStyle(fontSize: 21, letterSpacing: 1),
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.black,
                iconSize: 25.0,
                currentIndex: selectedPageId,
                onTap: (newId) {
                  setState(() {
                    controller.jumpToPage(newId);
                    selectedPageId = newId;
                  });
                }),
          );
        }
      }),
    );
  }
}

class AppBody extends StatelessWidget {
  final player;
  const AppBody({
    Key? key,
    this.player,
    required PageController controller,
  })   : _controller = controller,
        super(key: key);

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _controller,
      children: [
        HomePage2(
          player: player,
        ),
        // About(),
        Settings(),
      ],
    );
  }
}

// HomePage
class HomePage2 extends StatefulWidget {
  final player;
  HomePage2({Key? key, this.player});
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

/// The main widget state.
class _BaseScreenState extends State<HomePage2> with TickerProviderStateMixin {
  late AnimationController animationController;
  var random = Random();
  bool isLightTheme = true;
  bool sound = true;
  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..addStatusListener(
        (AnimationStatus status) {
          if (status == AnimationStatus.completed) {
            if (!mounted) return;
            animationController.reverse();
          }
        },
      );
  }

  @override
  void didChangeDependencies() async {
    if (Platform.isWindows || Platform.isLinux) {
      if (this.sound == true) {
        super.didChangeDependencies();
        this.player = await Player.create(
          id: 0,
        );
        getSound();
      }
    }
  }

  Future<dynamic> getSound() async {
    if (Platform.isWindows || Platform.isLinux) {
      this.player?.open(
            new Playlist(
              medias: [
                await Media.asset(
                    'assets/audio/warmth-of-the-sun-adi-goldstein.mp3'),
              ],
            ),
          );
    } else {}
  }

  @override
  dispose() async {
    animationController.dispose();
    super.dispose();
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      chapters = (prefs.getBool('chapterState'));
    });
  }

  bool? chapters;

  List<Widget> makeStar(double width, double height) {
    double starsInRow = width / 50;
    double starsInColumn = height / 50;
    double starsNum = starsInRow != 0
        ? starsInRow * (starsInColumn != 0 ? starsInColumn : starsInRow)
        : starsInColumn;

    List<Widget> stars = [];

    for (int i = 0; i < starsNum; i++) {
      stars.add(Star(
        top: random.nextInt(height.floor()).toDouble(),
        right: random.nextInt(width.floor()).toDouble(),
        animationController: animationController,
      ));
    }

    return stars;
  }

  Random? rnd;
  Player? player;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/main.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: new BoxDecoration(
                color: Colors.black.withOpacity(isLightTheme ? 0 : 0.4),
              ),
            ),
          ),
          ...makeStar(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height / 4),
          Center(
            child: new Container(
              child: SafeArea(
                child: new SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () async {
                          if (Platform.isWindows || Platform.isLinux) {
                            setState(() {
                              this.player?.stop();
                              sound = false;
                            });
                          } else {
                            FlameAudio.bgm.stop();
                          }

                          Navigator.of(context).pushNamed('/1');
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Builder(builder: (context) {
                                  if (Platform.isAndroid || Platform.isIOS) {
                                    return Container(
                                      color: Colors.transparent,
                                      padding: EdgeInsets.all(5),
                                      width:
                                          MediaQuery.of(context).size.height /
                                              1.1,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.asset(
                                          "assets/images/gui/menu_scroll_01.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      color: Colors.transparent,
                                      padding: EdgeInsets.all(5),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.asset(
                                          "assets/images/gui/menu_scroll_01.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  }
                                })
                              ],
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => showAlertDialog(context),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Builder(
                                  builder: (context) {
                                    if (Platform.isAndroid || Platform.isIOS) {
                                      return Container(
                                        color: Colors.transparent,
                                        padding: EdgeInsets.all(5),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.asset(
                                            "assets/images/gui/menu_scroll_03.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    } else {
                                      return Column(
                                        children: [
                                          Container(
                                            color: Colors.transparent,
                                            padding: EdgeInsets.all(5),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.asset(
                                                "assets/images/gui/menu_scroll_03.png",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 30, vertical: 5),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  3,
                                              child: TextButton(
                                                child: Text(
                                                  "LOAD",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 35,
                                                      fontFamily:
                                                          "BottleParty"),
                                                ),
                                                style: TextButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 20),
                                                ),
                                                onPressed: () async {
                                                  FlameAudio.bgm.stop();
                                                  Navigator.of(context)
                                                      .pushNamed('/chapterone');
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Builder(
                      //   builder: (context) {
                      //     // if (chapters == true) {
                      //     if (chapters == true) {
                      //       return Padding(
                      //         padding: EdgeInsets.symmetric(
                      //             horizontal: 30, vertical: 5),
                      //         child: Container(
                      //           width: double.infinity,
                      //           child: TextButton(
                      //             child: Text(
                      //               'Chapters',
                      //               style: TextStyle(
                      //                 color: Colors.black,
                      //                 fontSize: 35,
                      //               ),
                      //             ),
                      //             style: TextButton.styleFrom(
                      //               backgroundColor:
                      //                   Colors.white,
                      //               padding: EdgeInsets.symmetric(vertical: 20),
                      //             ),
                      //             onPressed: () {
                      //               // Navigator.push(
                      //               //   context,
                      //               //   MaterialPageRoute(
                      //               //       builder: (context) => Chapters()),
                      //               // );
                      //             },
                      //           ),
                      //         ),
                      //       );
                      //     } else
                      //       return Container(
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(40),
                      //           image: DecorationImage(
                      //             image: AssetImage(
                      //                 "assets/images/gui/menu_scroll_03.png"),
                      //             fit: BoxFit.cover,
                      //           ),
                      //         ),
                      //         padding: EdgeInsets.symmetric(
                      //             horizontal: 30, vertical: 5),
                      //         child: TextButton(
                      //           child: Text(
                      //             '',
                      //             style: TextStyle(
                      //               color: Colors.black,
                      //               fontSize: 35,
                      //             ),
                      //           ),
                      //           style: TextButton.styleFrom(
                      //             backgroundColor: Colors.transparent,
                      //             padding: EdgeInsets.symmetric(vertical: 20),
                      //           ),
                      //           onPressed: () => showAlertDialog(context),
                      //         ),
                      //       );
                      //   },
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
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
