import 'package:fablesofdesire/constructor/text/naoki/naoki_act2_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki12 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki12> {
  final String route = "/naoki12";
  final String nextRoute = "/naoki13";
  final textSound = NaokiText12();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: "1710heian23_n2_19201080",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
