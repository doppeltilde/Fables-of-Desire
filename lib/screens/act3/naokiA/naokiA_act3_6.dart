import 'package:fablesofdesire/constructor/text/naoki/naoki_act3_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki26 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki26> {
  final String route = "/naoki26";
  final String nextRoute = "/naoki27";
  final textSound = NaokiAct3BranchA6();
  int? _thisNumber = 0;
  bool visible = true;

  callback(updatedNumber) {
    setState(() {
      _thisNumber = updatedNumber;
    });
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        visible = false;
      });
    });
  }

  String? _bgImage() {
    if (_thisNumber! <= 1) {
      return "1710heian15_19201080";
    } else if (_thisNumber! <= 9) {
      return "Hotspring_Morning";
    } else {
      return "1710heian20_19201080";
    }
  }

  @override
  Widget build(BuildContext context) {
    print(_thisNumber);

    return VNScaffold(
      callback: this.callback,
      bgImage: _bgImage(),
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
