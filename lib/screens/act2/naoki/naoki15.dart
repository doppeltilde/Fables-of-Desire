import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki15 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki15> {
  final String route = "/naoki15";
  final String nextRoute = "/naoki16";
  final textSound = NaokiText15();

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
