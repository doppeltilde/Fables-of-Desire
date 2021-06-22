import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki5 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki5> {
  final String route = "/naoki5";
  final String nextRoute = "/naoki6";
  final textSound = NaokiText5();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: "1710heian08_19201080",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
