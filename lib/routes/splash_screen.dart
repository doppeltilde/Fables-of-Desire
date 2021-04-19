import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    //GamesServices.signIn();
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
