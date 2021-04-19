import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fablesofdesire/screens/pages/more/more.dart';
import 'package:fablesofdesire/screens/pages/revenueCat/payWall.dart';
import 'package:fablesofdesire/settings/settings_ingame.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class UpgradeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UpgradeScreenState();
}

class _UpgradeScreenState extends State<UpgradeScreen> {
  PurchaserInfo? _purchaserInfo;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Future<void> initPlatformState() async {
  //   PurchaserInfo purchaserInfo = await Purchases.getPurchaserInfo();

  //   if (!mounted) return;
  //   setState(() {
  //     _purchaserInfo = purchaserInfo;
  //   });

  Future<void> initPlatformState() async {
    await Purchases.setDebugLogsEnabled(true);
    await Purchases.setup("dRodsutvKmmLBIyWWCJggMKnSwPywfde");
    PurchaserInfo purchaserInfo = await Purchases.getPurchaserInfo();

    if (!mounted) return;
    setState(() {
      _purchaserInfo = purchaserInfo;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isLinux || Platform.isWindows) {
      return ProScreen();
    } else if (_purchaserInfo == null) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0.4,
          leading: new Padding(
            padding: const EdgeInsets.all(5.0),
            child: new GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: new AssetImage("assets/images/icon.png"),
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            "Purchase",
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ThemeChange()));
              },
              child: Padding(
                padding: EdgeInsets.only(right: 21.0),
                child: new Icon(
                  FontAwesomeIcons.cog,
                ),
              ),
            ),
          ],
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      var isPro = _purchaserInfo!.entitlements.active.containsKey("pro");
      if (isPro) {
        return ProScreen();
      } else {
        return UpsellScreen();
      }
    }
  }
}

class ProScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(context),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.4,
          leading: new Padding(
            padding: const EdgeInsets.all(5.0),
            child: new GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: new AssetImage("assets/images/icon.png"),
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            "Purchase",
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ThemeChange()));
              },
              child: Padding(
                padding: EdgeInsets.only(right: 21.0),
                child: new Icon(
                  FontAwesomeIcons.cog,
                ),
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Awesome!\nYou're breathtaking! 🥳\n\nThanks for purchasing the game. 😊",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.arvo(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).accentColor,
                      ),
                      child: Text('Continue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontFamily: "BottleParty",
                            fontSize: 30,
                            letterSpacing: 2,
                          )),
                      onPressed: () =>
                          Navigator.of(context).pushNamed("/chapterthree")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
