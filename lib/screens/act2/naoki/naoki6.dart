import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki6 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki6> {
  final String route = "/naoki6";
  final String nextRoute = "/naoki7";
  final textSound = NaokiText6();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: "mininature_001_19201440",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
