import 'package:fablesofdesire/constructor/text/naoki/naoki_act3_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class NaokiB1 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<NaokiB1> {
  final String route = "/naokib1";
  final String nextRoute = "/naokib2";
  final textSound = NaokiAct3BranchB1();

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
