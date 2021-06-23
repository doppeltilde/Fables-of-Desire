import 'dart:async';

import 'package:fablesofdesire/constructor/vn_constructor.dart';
import 'package:fablesofdesire/global/will_pop.dart';
import 'package:flutter/material.dart';

class VNScaffold extends StatefulWidget {
  final bgImage;
  final textSound;
  final route;
  final nextRoute;
  VNScaffold({this.bgImage, this.textSound, this.route, this.nextRoute});
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<VNScaffold> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: GestureDetector(
          onTap: () {
            setState(() {
              if (widget.textSound.isFinished() == true) {
                Navigator.of(context).pushNamed(widget.nextRoute);
              }
              widget.textSound.nextQuestion();
            });
          },
          child: InterludeTextSound(
            "assets/images/bgs/" + widget.bgImage + ".jpg",
            widget.textSound.getCharacterName(),
            widget.textSound.getCharacterText(),
            widget.textSound.getNumber(),
            widget.textSound.getMCImage(),
            widget.textSound.getCharImage(),
            widget.route,
            widget.nextRoute,
          ),
        ),
      ),
    );
  }
}
