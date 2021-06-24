import 'package:fablesofdesire/constructor/text/naoki.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:fablesofdesire/global/audio/global_audio.dart';
import 'package:flutter/material.dart';

class Naoki3 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki3> {
  final String route = "/naoki3";
  final String nextRoute = "/naoki4";
  final textSound = NaokiText3();

  @override
  Widget build(BuildContext context) {
    GlobalAudio.playAudio.getBGM(textSound.getBGM().toString());

    return VNScaffold(
      bgImage: "Hotspring_Morning",
      textSound: textSound,
      route: route,
      nextRoute: nextRoute,
    );
  }
}
