import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki9 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki9> {
  final String route = "/naoki9";
  final String nextRoute = "/naoki10";
  final textSound = NaokiText9();

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      bgImage: "1710heian12_y_19201080",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
