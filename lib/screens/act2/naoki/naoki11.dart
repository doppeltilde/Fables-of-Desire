import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki11 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki11> {
  final String route = "/naoki11";
  final String nextRoute = "/naoki12";
  final textSound = NaokiText11();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: "1710heian15_y_19201080",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
