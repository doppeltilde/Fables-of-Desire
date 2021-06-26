import 'package:fablesofdesire/constructor/text/naoki/naoki_act2_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki1 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki1> {
  final String route = "/naoki1";
  final String nextRoute = "/naoki2";
  final textSound = NaokiText1();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: "1710heian15_19201080",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
