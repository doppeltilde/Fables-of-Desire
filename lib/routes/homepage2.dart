// Primary
import 'dart:io';

import 'package:just_audio/just_audio.dart';
import 'dart:math';

import 'package:fablesofdesire/global/globals.dart';
import 'package:fablesofdesire/global/setings.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage2 extends StatefulWidget {
  @override
  _WildfyreState createState() => _WildfyreState();
}

class _WildfyreState extends State<HomePage2> {
  late AudioPlayer _player;

  static const int _startingPageId = 0;
  bool? isSwitchedFT;
  int selectedPageId = _startingPageId;
  TabController? tabscon;
  final controller = PageController(
    initialPage: 0,
  );

  void initState() {
    super.initState();
    getSharedPrefs();
    _player = AudioPlayer();
    _player
      ..setAudioSource(
        AudioSource.uri(
          Uri.parse("asset:///assets/audio/cherrycolored.mp3"),
        ),
      )
      ..play()
      ..setLoopMode(LoopMode.one);
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  Future<dynamic> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isSwitchedFT = (prefs.getBool("switchState"));
    if (isSwitchedFT == true) {
      if (Platform.isWindows || Platform.isLinux) {
      } else {}
    } else {
      //Flame.bgm.stop();
    }
  }

  bool isLightTheme = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      endDrawer: AppDrawerMain(
        player: _player,
      ),
      body: AppBody(player: _player, controller: controller),
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
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _controller,
      children: [
        HomePage3(
          player: player,
        ),
        // About(),
        Settings(),
      ],
    );
  }
}

// HomePage
class HomePage3 extends StatefulWidget {
  final player;
  HomePage3({Key? key, this.player});
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

/// The main widget state.
class _BaseScreenState extends State<HomePage3> with TickerProviderStateMixin {
  late AnimationController animationController;
  var random = Random();
  bool isLightTheme = true;

  @override
  void initState() {
    super.initState();
    getSharedPrefs();
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
  dispose() {
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
                image: AssetImage("assets/images/bgs/snowuta_029_19201440.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: new BoxDecoration(
                color: Colors.black.withOpacity(isLightTheme ? 0 : 0.4),
              ),
            ),
          ),
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
