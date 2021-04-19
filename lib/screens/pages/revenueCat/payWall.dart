import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fablesofdesire/screens/pages/more/more.dart';
import 'package:fablesofdesire/screens/pages/revenueCat/components.dart';
import 'package:fablesofdesire/screens/pages/revenueCat/upgrade.dart';
import 'package:fablesofdesire/settings/settings_ingame.dart';
import 'package:fablesofdesire/settings/settings_widget.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';

class UpsellScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UpsellScreenState();
}

class _UpsellScreenState extends State<UpsellScreen> {
  Offerings? _offerings;
  bool _visible = false;
  bool onPressed = false;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    Offerings? offerings;
    try {
      offerings = await Purchases.getOfferings();
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      _offerings = offerings;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_offerings != null) {
      final offering = _offerings!.current;
      if (offering != null) {
        final lifetime = offering.lifetime;
        if (lifetime != null) {
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
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => ThemeChange()));
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.15,
                            vertical: 5),
                        child: Text(
                          'You have reached the end of the demo. If you want to continue, please consider buying the game.',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.palanquinDark(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      //Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.07),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _visible = !_visible;
                            });
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
                              color: Theme.of(context).cardColor,
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.monetization_on_outlined,
                                  size: 25,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'Why is it not free?',
                                  style: GoogleFonts.arvo(
                                    fontSize: 18,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  _visible
                                      ? Icons.keyboard_arrow_down_rounded
                                      : Icons.chevron_right_rounded,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: _visible,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.15,
                              vertical: 5),
                          child: Text(
                            """
Privacy is one of the core pillars we believe in and build upon. We do not track you and target ads at you and neither should others.
""",
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.arvo(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: PurchaseButton(package: lifetime),
                      ),
                      restorePurchase(context),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.07),
                        child: GestureDetector(
                          onTap: () async {
                            const url =
                                'https://smalldreams.space/about/values/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: ProfileListItem(
                            icon: Icons.face_outlined,
                            text: 'Our values',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.07),
                        child: GestureDetector(
                          onTap: () async {
                            const url =
                                'https://starhelix.space/privacy-policy/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: ProfileListItem(
                            icon: Icons.privacy_tip_outlined,
                            text: 'Privacy',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.07),
                        child: GestureDetector(
                          onTap: () async {
                            const url =
                                'https://starhelix.space/terms-of-service/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: ProfileListItem(
                            icon: Icons.policy_outlined,
                            text: 'Terms of Service',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      }
    }
    return TopBarAgnosticNoIcon(
      text: "Loading",
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    CircularProgressIndicator(),
                  ],
                ),
                // continueButton(context, "/chapter2ending"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget purchaseError() {
    return TopBarAgnosticNoIcon(
      text: "Error",
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text("Sorry, there was an error."),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () => Navigator.pushReplacementNamed(
                          context, "/chapter2ending"),
                      child: Text(
                        "Try again.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () =>
                          Navigator.pushReplacementNamed(context, "/home"),
                      child: Text(
                        "Go Home.",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                // continueButton(context, "/chapter2ending"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget restorePurchase(context) {
    return GestureDetector(
      child: Container(
        decoration: new BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: new BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: onPressed
                ? Container(
                    padding: EdgeInsets.all(0),
                    color: Colors.black,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                  )
                : Text(
                    'Restore Purchase',
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                      fontFamily: "Arvo",
                    ),
                  )),
      ),
      onTap: () async {
        setState(() {
          onPressed = true;
        });
        try {
          print('now trying to restore');
          PurchaserInfo restoredInfo = await Purchases.restoreTransactions();
          print('restore completed');
          print(restoredInfo.toString());

          appData.isPro = restoredInfo.entitlements.all["pro"]!.isActive;

          print('is user pro? ${appData.isPro}');

          if (appData.isPro!) {
            await Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, _, __) => ProScreen(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          } else {
            Alert(
              context: context,
              style: AlertStyle(
                  isCloseButton: false,
                  isOverlayTapDismiss: false,
                  titleStyle: TextStyle(color: Theme.of(context).accentColor),
                  backgroundColor: Theme.of(context).primaryColor),
              image: Image.asset(
                "assets/images/icon.png",
                height: 150,
              ),
              title: "Whoops...",
              content: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 8.0, left: 8.0, bottom: 20.0),
                    child: Text(
                      'There was an error. Please try again...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "SpaceMono",
                      ),
                    ),
                  )
                ],
              ),
              buttons: [
                DialogButton(
                  color: Theme.of(context).accentColor,
                  radius: BorderRadius.circular(10),
                  child: Text(
                    "Okay",
                    style: TextStyle(
                        fontFamily: "PxGrotesk",
                        color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () {
                    setState(() {
                      onPressed = false;
                    });
                    Navigator.of(context, rootNavigator: true).pop();
                  },
                  width: 127,
                  height: 52,
                ),
              ],
            ).show();
          }
        } on PlatformException catch (e) {
          print('----xx-----');
          var errorCode = PurchasesErrorHelper.getErrorCode(e);
          if (errorCode == PurchasesErrorCode.purchaseCancelledError) {
            print("User cancelled");
          } else if (errorCode == PurchasesErrorCode.purchaseNotAllowedError) {
            print("User not allowed to purchase");
          }
          Alert(
            context: context,
            style: AlertStyle(
                isCloseButton: false,
                isOverlayTapDismiss: false,
                titleStyle: TextStyle(color: Theme.of(context).accentColor),
                backgroundColor: Theme.of(context).primaryColor),
            image: Image.asset(
              "assets/images/icon.png",
              height: 150,
            ),
            title: "Whoops...",
            content: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, right: 8.0, left: 8.0, bottom: 20.0),
                  child: Text(
                    'There was an error. Please try again...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "SpaceMono",
                    ),
                  ),
                )
              ],
            ),
            buttons: [
              DialogButton(
                color: Theme.of(context).accentColor,
                radius: BorderRadius.circular(10),
                child: Text(
                  "Okay",
                  style: TextStyle(
                      fontFamily: "PxGrotesk",
                      color: Theme.of(context).primaryColor),
                ),
                onPressed: () {
                  setState(() {
                    onPressed = false;
                  });
                  Navigator.of(context, rootNavigator: true).pop();
                },
                width: 127,
                height: 52,
              ),
            ],
          ).show();
        }
        await Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, _, __) => UpgradeScreen(),
            transitionDuration: Duration(seconds: 0),
          ),
        );
      },
    );
  }
}

// ignore: must_be_immutable
class PurchaseButton extends StatefulWidget {
  final Package package;

  PurchaseButton({Key? key, required this.package}) : super(key: key);

  @override
  _PurchaseButtonState createState() => _PurchaseButtonState();
}

class _PurchaseButtonState extends State<PurchaseButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: TextButton(
                onPressed: () async {
                  setState(() {
                    onPurchase = true;
                  });
                  try {
                    print('now trying to purchase');
                    PurchaserInfo purchaserInfo =
                        await Purchases.purchasePackage(widget.package);
                    print('purchase completed');
                    appData.entitlementIsActive =
                        purchaserInfo.entitlements.all["pro"]!.isActive;

                    print('is user pro? ${appData.isPro}');

                    if (appData.entitlementIsActive) {
                      await Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, _, __) => ProScreen(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    } else {
                      Alert(
                        context: context,
                        style: AlertStyle(
                            isCloseButton: false,
                            isOverlayTapDismiss: false,
                            titleStyle:
                                TextStyle(color: Theme.of(context).accentColor),
                            backgroundColor: Theme.of(context).primaryColor),
                        image: Image.asset(
                          "assets/images/icon.png",
                          height: 150,
                        ),
                        title: "Whoops...",
                        content: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0,
                                  right: 8.0,
                                  left: 8.0,
                                  bottom: 20.0),
                              child: Text(
                                'There was an error. Please try again...',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "SpaceMono",
                                ),
                              ),
                            )
                          ],
                        ),
                        buttons: [
                          DialogButton(
                            color: Theme.of(context).accentColor,
                            radius: BorderRadius.circular(10),
                            child: Text(
                              "Okay",
                              style: TextStyle(
                                  fontFamily: "PxGrotesk",
                                  color: Theme.of(context).primaryColor),
                            ),
                            onPressed: () {
                              setState(() {
                                onPurchase = false;
                              });
                              Navigator.of(context, rootNavigator: true).pop();
                            },
                            width: 127,
                            height: 52,
                          ),
                        ],
                      ).show();
                    }
                  } on PlatformException catch (e) {
                    print('----xx-----');
                    var errorCode = PurchasesErrorHelper.getErrorCode(e);
                    if (errorCode ==
                        PurchasesErrorCode.purchaseCancelledError) {
                      print("User cancelled");
                    } else if (errorCode ==
                        PurchasesErrorCode.purchaseNotAllowedError) {
                      print("User not allowed to purchase");
                    }
                    Alert(
                      context: context,
                      style: AlertStyle(
                          isCloseButton: false,
                          isOverlayTapDismiss: false,
                          titleStyle:
                              TextStyle(color: Theme.of(context).accentColor),
                          backgroundColor: Theme.of(context).primaryColor),
                      image: Image.asset(
                        "assets/images/icon.png",
                        height: 150,
                      ),
                      title: "Whoops...",
                      content: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, right: 8.0, left: 8.0, bottom: 20.0),
                            child: Text(
                              'There was an error. Please try again...',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "SpaceMono",
                              ),
                            ),
                          )
                        ],
                      ),
                      buttons: [
                        DialogButton(
                          color: Theme.of(context).accentColor,
                          radius: BorderRadius.circular(10),
                          child: Text(
                            "Okay",
                            style: TextStyle(
                                fontFamily: "PxGrotesk",
                                color: Theme.of(context).primaryColor),
                          ),
                          onPressed: () {
                            setState(() {
                              onPurchase = false;
                            });
                            Navigator.of(context).pop();
                          },
                          width: 127,
                          height: 52,
                        ),
                      ],
                    ).show();
                  }
                  await Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, _, __) => UpgradeScreen(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: kColorText,
                  padding: const EdgeInsets.all(0.0),
                ),
                child: onPurchase
                    ? Container(
                        padding: EdgeInsets.all(15),
                        color: Colors.black,
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.white,
                        ),
                      )
                    : Container(
                        color: Theme.of(context).accentColor,
                        width: MediaQuery.of(context).size.width * 0.7,
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Buy ${widget.package.product.title}\n${widget.package.product.priceString}',
                          style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context).primaryColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: Text(
                '${widget.package.product.description}',
                textAlign: TextAlign.center,
                style: GoogleFonts.arvo(
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  bool onPurchase = false;
}
