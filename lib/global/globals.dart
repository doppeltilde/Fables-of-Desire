// Gestures
import 'package:fablesofdesire/global/setings.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AllowMultipleGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);
  }
}

dynamic settingsClip(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              primary: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade, child: SettingsIngame()));
          },
          child: Text(
            "Settings >>",
            style: TextStyle(
                color: Theme.of(context).accentColor,
                fontFamily: "Aleo",
                fontSize: 20,
                letterSpacing: .2),
          ),
        ),
      ),
    ],
  );
}

dynamic skipClip(context, route) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              primary: Theme.of(context).primaryColor),
          onPressed: () => showAlertDialog(context),
          onLongPress: () {
            FlameAudio.bgm.stop();
            Navigator.of(context).pushReplacementNamed(route);
          },
          child: Text(
            "Skip >>",
            style: TextStyle(
                color: Theme.of(context).accentColor,
                fontFamily: "Aleo",
                fontSize: 20,
                letterSpacing: .2),
          ),
        ),
      ),
    ],
  );
}

showAlertDialog(BuildContext context) {
  // set up the buttons

  Widget continueButton = ElevatedButton(
    style: ElevatedButton.styleFrom(
        primary: Theme.of(context).accentColor,
        onPrimary: Theme.of(context).primaryColor),
    child: Text(
      "Okay",
      style: TextStyle(fontFamily: "Aleo", fontSize: 18, letterSpacing: .4),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.amber,
    title: Text(
      "CHAPTER SKIP!",
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily: "Aleo", fontSize: 30, letterSpacing: .2),
    ),
    content: Text(
      "Are you sure about that? If so please long press the skip button.",
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily: "Aleo", fontSize: 20, letterSpacing: .4),
    ),
    actions: [
      continueButton,
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
