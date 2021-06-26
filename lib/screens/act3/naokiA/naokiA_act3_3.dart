import 'package:fablesofdesire/constructor/text/naoki/naoki_act3_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki23 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki23> {
  final String route = "/naoki23";
  final String nextRoute = "/naoki24";
  final textSound = NaokiAct3BranchA3();

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
