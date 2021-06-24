import 'dart:io';

import 'package:dart_vlc/dart_vlc.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:fablesofdesire/global/audio/game_audio.dart';
import 'package:fablesofdesire/global/will_pop.dart';
import 'package:fablesofdesire/text/vn_text.dart';
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
  void didChangeDependencies() async {
    if (Platform.isWindows || Platform.isLinux) {
      super.didChangeDependencies();
      GameAudioDesktop.playAudio.player = Player(
        id: 0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
