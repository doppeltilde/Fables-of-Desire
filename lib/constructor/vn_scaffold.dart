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
  var introFade = true;
  var switchFade = false;
  double? opacity = 0.0;
  double? opacityIntro = 1.0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(),
      child: Builder(
        builder: (context) {
          if (this.mounted && introFade == true) {
            Future.delayed(Duration(milliseconds: 1200), () {
              setState(() {
                introFade = false;
              });
            });
            Future.delayed(Duration(milliseconds: 300), () {
              setState(() {
                opacityIntro = 0.0;
              });
            });
            return Scaffold(
              body: Stack(
                children: [
                  BackgroundBuilder(
                    image: "assets/images/bgs/" + widget.bgImage + ".jpg",
                  ),
                  AnimatedOpacity(
                    opacity: opacityIntro!,
                    duration: Duration(milliseconds: 300),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
          } else {
            if (switchFade != false) {
              return Scaffold(
                body: Stack(
                  children: [
                    BackgroundBuilder(
                      image: "assets/images/bgs/" + widget.bgImage + ".jpg",
                    ),
                    AnimatedOpacity(
                      opacity: opacity!,
                      duration: Duration(milliseconds: 300),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.black,
                      ),
                    ),
                  ],
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
                        Future.delayed(Duration(seconds: 2), () {
                          Navigator.of(context).pushNamed(widget.nextRoute);
                        });

                        switchFade = true;
                        Future.delayed(Duration(milliseconds: 300), () {
                          setState(() {
                            opacity = 1.0;
                          });
                        });
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
                    widget.textSound.getSideCharImage(),
                    widget.route,
                    widget.nextRoute,
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
