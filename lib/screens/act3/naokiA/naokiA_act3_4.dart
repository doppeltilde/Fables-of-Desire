import 'package:fablesofdesire/constructor/text/naoki/naoki_act3_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki24 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki24> {
  final String route = "/naoki24";
  final String nextRoute = "/naoki25";
  final textSound = NaokiAct3BranchA4();

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
