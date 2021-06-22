import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki7 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki7> {
  final String route = "/naoki7";
  final String nextRoute = "/naoki8";
  final textSound = NaokiText7();

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
