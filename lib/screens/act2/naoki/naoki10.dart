import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki10 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki10> {
  final String route = "/naoki10";
  final String nextRoute = "/naoki11";
  final textSound = NaokiText10();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: "1710heian09_y_19201080",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
