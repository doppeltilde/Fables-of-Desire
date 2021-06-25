import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki2 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki2> {
  final String route = "/naoki2";
  final String nextRoute = "/naoki3";
  final textSound = NaokiText2();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: "1710heian06_y_19201080",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
