import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:fablesofdesire/global/audio/global_audio.dart';
import 'package:fablesofdesire/global/will_pop.dart';
import 'package:fablesofdesire/test/text/vn_text.dart';
import 'package:flutter/material.dart';

class VN1 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<VN1> {
  final String route = "/1";
  final String nextRoute = "/2";
  final textSound = TextConstructor1();

  @override
  Widget build(BuildContext context) {
    GlobalAudio.playAudio.getBGM("thousandyearoldforest");
    return WillPopScope(
      onWillPop: () => getOnWillPop(),
      child: VNScaffold(
        bgImage: "mininature_001_19201440",
        textSound: textSound,
        route: route,
        nextRoute: nextRoute,
      ),
    );
  }
}
