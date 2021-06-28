import 'package:fablesofdesire/constructor/text/naoki/naoki_act2_text.dart';
import 'package:fablesofdesire/constructor/vn_constructor.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:fablesofdesire/global/logical_keyboard.dart';
import 'package:flutter/material.dart';

class Naoki20 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki20> {
  final String route = "/naoki20";
  final String nextRoute = "/naoki21";
  final textSound = NaokiText20();
  int _thisNumber = 0;
  callback(updatedNumber) {
    setState(() {
      print(_thisNumber);
      _thisNumber = updatedNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      // if (!textSound.getCharacterText()!.contains(
      //     "He bows low to me, as if that will hide the truth in his eyes—fear."))
      if (_thisNumber >= 46) {
        return CounterShortcuts(
          onIncrementDetected: () => showAlertDialog(context),
          onDecrementDetected: () => showAlertDialog(context),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.black,
            body: GestureDetector(
              onTap: () {
                setState(() {
                  showAlertDialog(context);
                });
              },
              child: InterludeTextSound(
                bgImage: "assets/images/bgs/mininature_003_y_19201440.jpg",
                characterName: textSound.getCharacterName(),
                characterText: textSound.getCharacterText(),
                n: textSound.getNumber(),
                mcImage: textSound.getMCImage(),
                sideCharImage: textSound.getSideCharImage(),
                route: route,
                nextRoute: nextRoute,
                nextText: textSound,
              ),
            ),
          ),
        );
      } else {
        return VNScaffold(
          callback: this.callback,
          bgImage: "mininature_003_y_19201440",
          textSound: textSound,
          route: route,
          nextRoute: nextRoute,
        );
      }
    });
  }

  showAlertDialog(BuildContext context) {
    Widget continueButton = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.white),
          child: Text(
            "The animals of the mountain.",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Mali",
                fontSize: 20,
                letterSpacing: .2),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("/naoki21");
          },
        ),
        SizedBox(
          height: 12,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Theme.of(context).primaryColor,
          ),
          child: Text(
            "I can’t answer that, Naoki.",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Mali",
                fontSize: 20,
                letterSpacing: .2),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("/naokib1");
          },
        ),
      ],
    );

    Dialog alert = Dialog(
      backgroundColor: Colors.green,
      insetPadding: EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.green),
        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          children: <Widget>[
            Text("CHOOSE",
                style: TextStyle(
                    fontSize: 28, fontFamily: "Mali", color: Colors.white),
                textAlign: TextAlign.center),
            // Text("Are you sure about that?",
            //     style: TextStyle(fontSize: 24, fontFamily: "Mali"),
            //     textAlign: TextAlign.center),
            Spacer(),
            continueButton,
          ],
        ),
      ),
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
