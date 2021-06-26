import 'package:fablesofdesire/constructor/text/naoki/naoki_act3_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki22 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki22> {
  final String route = "/naoki22";
  final String nextRoute = "/naoki23";
  final textSound = NaokiAct3BranchA2();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: textSound.getBgImage(),
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
