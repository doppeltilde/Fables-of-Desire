import 'package:fablesofdesire/constructor/text/naoki/naoki_act2_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki17 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki17> {
  final String route = "/naoki17";
  final String nextRoute = "/naoki18";
  final textSound = NaokiText17();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (textSound.textNumber >= 7) {
          return VNScaffold(
            bgImage: "1710heian09_19201080",
            textSound: textSound,
            route: route,
            nextRoute: nextRoute,
          );
        } else {
          return VNScaffold(
            bgImage: "1710heian15_y_19201080",
            textSound: textSound,
            route: route,
            nextRoute: nextRoute,
          );
        }
      },
    );
  }
}
