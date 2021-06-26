import 'package:fablesofdesire/constructor/text/naoki/naoki_act2_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki16 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki16> {
  final String route = "/naoki16";
  final String nextRoute = "/naoki17";
  final textSound = NaokiText16();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: textSound.bgImage(),
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
