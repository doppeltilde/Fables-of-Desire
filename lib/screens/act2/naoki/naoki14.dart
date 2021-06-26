import 'package:fablesofdesire/constructor/text/naoki/naoki_act2_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki14 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki14> {
  final String route = "/naoki14";
  final String nextRoute = "/naoki15";
  final textSound = NaokiText14();

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
