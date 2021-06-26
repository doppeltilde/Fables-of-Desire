import 'package:fablesofdesire/constructor/text/naoki/naoki_act2_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki13 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki13> {
  final String route = "/naoki13";
  final String nextRoute = "/naoki14";
  final textSound = NaokiText13();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: "1710heian06_19201080",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
