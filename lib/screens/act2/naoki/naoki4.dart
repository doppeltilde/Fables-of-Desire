import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki4 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki4> {
  final String route = "/naoki4";
  final String nextRoute = "/naoki5";
  final textSound = NaokiText4();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: "1710heian22_19201080",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
