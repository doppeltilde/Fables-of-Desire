import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki19 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki19> {
  final String route = "/naoki19";
  final String nextRoute = "/naoki20";
  final textSound = NaokiText19();

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (textSound.textNumber >= 21) {
        return VNScaffold(
          bgImage: "1710heian20_19201080",
          textSound: textSound,
          route: route,
          nextRoute: nextRoute,
        );
      } else {
        return VNScaffold(
          bgImage: "mininature_001_19201440",
          textSound: textSound,
          route: route,
          nextRoute: nextRoute,
        );
      }
    });
  }
}
