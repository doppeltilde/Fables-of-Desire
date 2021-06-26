import 'package:fablesofdesire/constructor/text/naoki/naoki_act2_text.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:flutter/material.dart';

class Naoki18 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<Naoki18> {
  final String route = "/naoki18";
  final String nextRoute = "/naoki19";
  final textSound = NaokiText18();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (textSound.textNumber >= 2) {
          return VNScaffold(
            bgImage: "Hotspring_Morning",
            textSound: textSound,
            route: route,
            nextRoute: nextRoute,
          );
        } else if (textSound.textNumber >= 4) {
          return VNScaffold(
            bgImage: "1710heian12_19201080",
            textSound: textSound,
            route: route,
            nextRoute: nextRoute,
          );
        } else if (textSound.textNumber >= 6) {
          return VNScaffold(
            bgImage: "1710heian15_n_19201080",
            textSound: textSound,
            route: route,
            nextRoute: nextRoute,
          );
        } else {
          return VNScaffold(
            bgImage: "1710heian08_19201080",
            textSound: textSound,
            route: route,
            nextRoute: nextRoute,
          );
        }
      },
    );
  }
}
