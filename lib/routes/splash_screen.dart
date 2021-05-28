import 'package:fablesofdesire/global/audio/game_audio.dart';
import 'package:fablesofdesire/routes/homepage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_io/io.dart';

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
  double? vol = 0.5;
  bool? splash = false;
  double? opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
                child: SafeArea(
                    child: SingleChildScrollView(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
              Center(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      AnimatedOpacity(
                        opacity: opacity!,
                        duration: Duration(milliseconds: 250),
                        child: Center(
                            child: Image.asset(
                          "assets/images/logo.png",
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width / 3,
                        )),
                      ),
                    ],
                  ),
                ),
              )
            ]))))));
  }

  // PRECACHE IMAGES

  List<Map<String, dynamic>> images = [
    // MC
    {
      "image": "assets/images/sprites/Cast/MC_Sad.png",
    },
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
    // Hidetake
    {
      "image": "assets/images/sprites/Cast/Hidetake/2sad.png",
    },
    {
      "image": "assets/images/sprites/Cast/Hidetake/2blush.png",
    },
    {
      "image": "assets/images/sprites/Cast/Hidetake/2frown.png",
    },
    {
      "image": "assets/images/sprites/Cast/Hidetake/2happy.png",
    },
    {
      "image": "assets/images/sprites/Cast/Hidetake/2neutral.png",
    },
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (var i in images) precacheImage(AssetImage(i["image"]), context);
  }
  // PRECACHE IMAGES

  @override
  void initState() {
    super.initState();
    //GamesServices.signIn();
    //initPlatformState();
    Future.delayed(Duration.zero).then((_) {
      // PRECACHE IMAGES
      for (var i in images) precacheImage(AssetImage(i["image"]), context);

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
      SharedPreferences.getInstance().then((SharedPreferences sp) {
        sharedPreferences = sp;
        vol = sharedPreferences!.getDouble("volValue");
        if (vol == null) {
          vol = 1.0;
          persistVol(vol!);
        }
      });
      SharedPreferences.getInstance().then((SharedPreferences sp) {
        sharedPreferences = sp;
        speed = sharedPreferences!.getInt("speedValue");
        if (speed == null) {
          speed = 100;
          persistSpeed(speed!);
        }
      });

      Future.delayed(const Duration(seconds: 3), () {
        if (this.mounted) {
          initSplash();
        }
      });
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          opacity = 1.0;
        });
      });
    });
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

  void persistVol(double value) {
    setState(() {
      vol = value;
    });
    sharedPreferences?.setDouble("volValue", value);
  }

  int? speed;
  void persistSpeed(int value) {
    setState(() {
      speed = value;
    });
    sharedPreferences?.setInt("speedValue", value);
  }

  //
  // Saves pushNamed as last route
  // Example:
  // If pushNamed "/page1" -> saves page1 into cache
  // If pushNamed -> materialroute, still saves last pushNamed
  //

  Future<void> initSplash() async {
    final prefs = await SharedPreferences.getInstance();
    String? notHome = prefs.getString("notHome");
    String? lastRoute = prefs.getString('last_route');
    String? previousRoute = prefs.getString('previous_route');

    if (lastRoute != null && lastRoute != '/') {
      Navigator.pushReplacementNamed(context, lastRoute);
    } else if (previousRoute != null && previousRoute != '/') {
      Navigator.pushReplacementNamed(context, previousRoute);
    } else {
      Navigator.of(context).pushNamed(HomePage.currentRoute);
    }

    if (lastRoute != null ||
        lastRoute != '/' ||
        lastRoute != "/home" ||
        previousRoute != "/home" ||
        previousRoute != null ||
        previousRoute != '/') {
      if (!Platform.isWindows || Platform.isLinux) {
        GameAudio.bgm.play(notHome!);
      } else {
        GameAudioDesktop.playAudio.play(notHome!);
      }
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
