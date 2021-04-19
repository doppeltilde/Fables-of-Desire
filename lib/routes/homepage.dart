import 'dart:async';
import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:games_services/games_services.dart';
import 'package:hive/hive.dart';
import 'package:fablesofdesire/screens/pages/more/chapters.dart';
import 'package:fablesofdesire/settings/settings_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*
  Process navigation and persist
*/

import 'dart:ui';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String spKey = "switchState";
  String notiKey = "notiState";
  SharedPreferences? sharedPreferences;

  bool? isNoti = true;
  bool? isSwitchedFT = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Text("· · ·",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold))));
  }

  @override
  void initState() {
    super.initState();
    GamesServices.signIn();
    //initPlatformState();
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      sharedPreferences = sp;
      isNoti = sharedPreferences!.getBool(notiKey);
      // will be null if never previously saved
      if (isNoti == null) {
        isNoti = true;
        persistNoti(isNoti!); // set an initial value
      }
    });
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      sharedPreferences = sp;
      isSwitchedFT = sharedPreferences!.getBool(spKey);
      // will be null if never previously saved
      if (isSwitchedFT == null) {
        isSwitchedFT = true;
        persist(isSwitchedFT!); // set an initial value
      }
    });
    initSplash();
  }

  void persist(bool value) {
    setState(() {
      isSwitchedFT = value;
    });
    sharedPreferences?.setBool(spKey, value);
  }

  void persistNoti(bool value) {
    setState(() {
      isNoti = value;
    });
    sharedPreferences?.setBool(notiKey, value);
  }

  //
  // Saves pushNamed as last route
  // Example:
  // If pushNamed "/page1" -> saves page1 into cache
  // If pushNamed -> materialroute, still saves last pushNamed
  //

  Future<void> initSplash() async {
    final prefs = await SharedPreferences.getInstance();
    String? lastRoute = prefs.getString('last_route');
    String? previousRoute = prefs.getString('previous_route');
    if (lastRoute != null && lastRoute != '/') {
      Navigator.pushReplacementNamed(context, lastRoute);
    } else if (previousRoute != null && previousRoute != '/') {
      Navigator.pushReplacementNamed(context, previousRoute);
    } else {
      Navigator.of(context).pushReplacementNamed('/home');
    }
  }

  ///
  /// PURCHASES
  ///
  // PurchaserInfo? purchaserInfo;
  // Future<void> initPlatformState() async {
  //   await Purchases.setDebugLogsEnabled(true);
  //   await Purchases.setup("dRodsutvKmmLBIyWWCJggMKnSwPywfde");
  //   PurchaserInfo purchaserInfo = await Purchases.getPurchaserInfo();

  //   if (!mounted) return;
  //   setState(() {
  //     purchaserInfo = purchaserInfo;
  //   });
  // }

  // Future<void> initPlatformState() async {
  //   // Enable debug logs before calling `configure`.
  //   await Purchases.setDebugLogsEnabled(true);

  //   /*
  //   - appUserID is nil, so an anonymous ID will be generated automatically by the Purchases SDK. Read more about Identifying Users here: https://docs.revenuecat.com/docs/user-ids
  //   - observerMode is false, so Purchases will automatically handle finishing transactions. Read more about Observer Mode here: https://docs.revenuecat.com/docs/observer-mode
  //   */
  //   await Purchases.setup("dRodsutvKmmLBIyWWCJggMKnSwPywfde");

  //   appData.appUserID = await Purchases.appUserID;

  //   Purchases.addPurchaserInfoUpdateListener((purchaserInfo) async {
  //     appData.appUserID = await Purchases.appUserID;

  //     PurchaserInfo purchaserInfo = await Purchases.getPurchaserInfo();
  //     (purchaserInfo.entitlements.all["pro"] != null &&
  //             purchaserInfo.entitlements.all["pro"]!.isActive)
  //         ? appData.entitlementIsActive = true
  //         : appData.entitlementIsActive = false;

  //     // setState(() {});
  //   });
  // }
}

// Primary
class HomePage extends StatefulWidget {
  @override
  _WildfyreState createState() => _WildfyreState();
}

class _WildfyreState extends State<HomePage> {
  static const int _startingPageId = 0;
  bool? isSwitchedFT;
  int _selectedPageId = _startingPageId;
  TabController? tabscon;
  final _controller = PageController(
    initialPage: 0,
  );
  void initState() {
    super.initState();
    getSharedPrefs();
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isSwitchedFT = (prefs.getBool("switchState"));
    if (isSwitchedFT == true) {
      FlameAudio.bgm.play("main.mp3", volume: 1);
    } else {
      //Flame.bgm.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBody(controller: _controller),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Theme.of(context).primaryColor,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Theme.of(context).primaryColor,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Theme.of(context).accentColor))),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                _selectedPageId == 0 ? Icons.menu : Icons.menu_outlined,
                color: Theme.of(context).accentColor,
              ),
              label: 'HOME',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     _selectedPageId == 1 ? Icons.info : Icons.info_outline,
            //     color: Theme.of(context).accentColor,
            //   ),
            //   label: 'ABOUT',
            // ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedPageId == 1
                      ? Icons.category
                      : Icons.category_outlined,
                  color: Theme.of(context).accentColor),
              label: 'MORE',
            ),
          ],
          unselectedLabelStyle: TextStyle(
              fontFamily: "BottleParty", fontSize: 18, letterSpacing: 1),
          selectedLabelStyle: TextStyle(
              fontFamily: "BottleParty", fontSize: 21, letterSpacing: 1),
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.grey,
          iconSize: 25.0,
          currentIndex: _selectedPageId,
          onTap: (newId) => setState(() {
            _controller.jumpToPage(newId);
            _selectedPageId = newId;
          }),
        ),
      ),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({
    Key? key,
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
        HomePage2(),
        // About(),
        MyHomePage(),
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
class _BaseScreenState extends State<HomePage2> with TickerProviderStateMixin {
  late AnimationController animationController;
  var random = Random();
  bool isLightTheme = true;

  @override
  void initState() {
    super.initState();
    isLightValues();
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

  isLightValues() async {
    isLightTheme = await isLight();
    setState(() {});
  }

  Future<bool> isLight() async {
    final settings = await Hive.openBox('settings');
    bool isLightTheme = settings.get('isLightTheme') ?? true;
    return isLightTheme;
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

  dynamic listImages = [
    "assets/images/main.jpg",
    "assets/images/main2.jpg",
    "assets/images/main3.jpg",
    "assets/images/main4.jpg"
  ];
  Random? rnd;

  buildImage() {
    int min = 0;
    int max = listImages.length - 1;
    rnd = new Random();
    int r = min + rnd!.nextInt(max - min);
    String imageName = listImages[r].toString();
    return AssetImage(imageName);
  }

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
          // Builder(
          //   builder: (context) {
          //     if (isLightTheme == true) {
          //       return Container(
          //         width: MediaQuery.of(context).size.width,
          //         height: MediaQuery.of(context).size.height,
          //         decoration: new BoxDecoration(
          //           gradient: new LinearGradient(
          //               colors: [
          //                 const Color(0xFF422d96),
          //                 const Color(0xFF7bcee3),
          //               ],
          //               begin: Alignment.topCenter,
          //               end: Alignment.bottomCenter,
          //               stops: [0.0, 1.0],
          //               tileMode: TileMode.clamp),
          //         ),
          //       );
          //     } else {
          //       return Container(
          //         width: MediaQuery.of(context).size.width,
          //         height: MediaQuery.of(context).size.height,
          //         decoration: new BoxDecoration(
          //           gradient: new LinearGradient(
          //             colors: [
          //               Colors.black,
          //               const Color(0xFF3b3b3b),
          //             ],
          //             begin: Alignment.topCenter,
          //             end: Alignment.bottomCenter,
          //             stops: [0.0, 1.0],
          //           ),
          //         ),
          //       );
          //     }
          //   },
          // ),
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        child: Container(
                          width: double.infinity,
                          child: TextButton(
                            child: Text(
                              tr('start_game'),
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 35,
                                  fontFamily: "BottleParty"),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              padding: EdgeInsets.symmetric(vertical: 20),
                            ),
                            onPressed: () async {
                              FlameAudio.bgm.stop();
                              Navigator.of(context).pushNamed('/1');
                            },
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          // if (chapters == true) {
                          if (true) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 5),
                              child: Container(
                                width: double.infinity,
                                child: TextButton(
                                  child: Text(
                                    'Chapters',
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontSize: 35,
                                        fontFamily: "BottleParty"),
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Chapters()),
                                    );
                                  },
                                ),
                              ),
                            );
                          } else
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 5),
                              child: Container(
                                width: double.infinity,
                                child: TextButton(
                                  child: Text(
                                    'Chapters',
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontSize: 35,
                                        fontFamily: "BottleParty"),
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey,
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                  ),
                                  onPressed: () => showAlertDialog(context),
                                ),
                              ),
                            );
                        },
                      )
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
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(
        "Not available",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "BottleParty", fontSize: 28),
      ),
      content: Text(
        "Sorry! You need to advance the game to access ”Chapters”.",
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
