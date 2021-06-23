import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki8 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki8> {
  final String route = "/naoki8";
  final String nextRoute = "/naoki9";
  final textSound = NaokiText8();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: "mininature_001y_19201440",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
