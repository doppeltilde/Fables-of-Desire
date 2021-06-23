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
  var fadeIn = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(),
      child: Builder(
        builder: (context) {
          if (fadeIn != false) {
            return AnimatedOpacity(
              // If the widget is visible, animate to 0.0 (invisible).
              // If the widget is hidden, animate to 1.0 (fully visible).
              opacity: fadeIn ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              // The green box must be a child of the AnimatedOpacity widget.
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black,
              ),
            );
          } else {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.black,
              body: GestureDetector(
                onTap: () {
                  setState(() {
                    if (widget.textSound.isFinished() == true) {
                      Future.delayed(Duration(seconds: 3), () {
                        Navigator.of(context).pushNamed(widget.nextRoute);
                      });

                      fadeIn = true;
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
            );
          }
        },
      ),
    );
  }
}
