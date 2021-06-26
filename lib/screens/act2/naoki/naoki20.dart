import 'package:fablesofdesire/constructor/text/naoki/naoki_act2_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki20 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki20> {
  final String route = "/naoki20";
  final String nextRoute = "/naoki21";
  final textSound = NaokiText20();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: "mininature_003_y_19201440",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
