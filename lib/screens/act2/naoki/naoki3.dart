import 'package:fablesofdesire/constructor/text/naoki/naoki_act2_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki3 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki3> {
  final String route = "/naoki3";
  final String nextRoute = "/naoki5";
  final textSound = NaokiText3();
  int? _thisNumber = 0;
  bool visible = true;

  callback(updatedNumber) {
    setState(() {
      _thisNumber = updatedNumber;
    });
  }

  String? _bgImage() {
    if (_thisNumber! <= 14) {
      return "Hotspring_Morning";
    } else {
      return "1710heian22_19201080";
    }
  }

  @override
  Widget build(BuildContext context) {
    return VNScaffold(
      callback: this.callback,
      bgImage: _bgImage(),
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
