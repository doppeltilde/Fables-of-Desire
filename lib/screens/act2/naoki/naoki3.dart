import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:fablesofdesire/global/transition_screeen.dart';
import 'package:flutter/material.dart';

class Naoki3 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki3> {
  final String route = "/naoki3";
  final String nextRoute = "/naoki5";
  final textSound = NaokiText3();
  int? _thisNumber = 0;
  bool visible = true;

  callback(updatedNumber) {
    setState(() {
      _thisNumber = updatedNumber;
    });
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        visible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_thisNumber);

    return Builder(builder: (context) {
      if (_thisNumber! <= 14) {
        return VNScaffold(
          callback: this.callback,
          bgImage: "Hotspring_Morning",
          textSound: textSound,
          route: route,
          nextRoute: nextRoute,
        );
      } else {
        return Builder(
          builder: (context) {
            if (visible == true) {
              return TransitionScreen(
                visible: visible,
                text: "Some time later...",
              );
            } else {
              return VNScaffold(
                callback: this.callback,
                bgImage: "1710heian22_19201080",
                textSound: textSound,
                route: route,
                nextRoute: nextRoute,
              );
            }
          },
        );
      }
    });
  }
}
