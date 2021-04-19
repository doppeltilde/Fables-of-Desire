import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fablesofdesire/screens/pages/more/chapters.dart';
import 'package:fablesofdesire/screens/pages/revenueCat/components.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Future<bool> getOnWillPop(context) {
  return messenger(context);
}

messenger(context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Sorry, you cant go back.'),
      action: SnackBarAction(
          label: 'OKAY',
          onPressed: ScaffoldMessenger.of(context).hideCurrentSnackBar),
    ),
  );
}

class RestorePurchase extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

/// The main widget state.
class _BaseScreenState extends State<RestorePurchase> {
  bool onPressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Theme.of(context).accentColor,
              padding: EdgeInsets.all(7)),
          child: onPressed
              ? Container(
                  color: Colors.black,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                )
              : Text(
                  'Restore Purchase',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 15,
                    fontFamily: "Arvo",
                  ),
                ),
          onPressed: () async {
            setState(() {
              onPressed = true;
            });
            try {
              print('now trying to restore');
              PurchaserInfo restoredInfo =
                  await Purchases.restoreTransactions();
              print('restore completed');
              print(restoredInfo.toString());

              appData.isPro = restoredInfo.entitlements.all["pro"]!.isActive;

              print('is user pro? ${appData.isPro}');

              if (appData.isPro!) {
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
                  title: "Congratulations!",
                  content: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, right: 8.0, left: 8.0, bottom: 20.0),
                        child: Text(
                          'Your purchase has been restored!',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  buttons: [
                    DialogButton(
                      color: Theme.of(context).accentColor,
                      radius: BorderRadius.circular(10),
                      child: Text(
                        "Nice!",
                        style: TextStyle(
                            fontFamily: "PxGrotesk",
                            color: Theme.of(context).primaryColor),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, _, __) => Chapters(),
                            transitionDuration: Duration(seconds: 0),
                          ),
                        );
                      },
                      width: 127,
                      height: 52,
                    ),
                  ],
                ).show();
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
              } else if (errorCode ==
                  PurchasesErrorCode.purchaseNotAllowedError) {
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
            //return UpgradeScreen();
          },
        ));
  }
}
