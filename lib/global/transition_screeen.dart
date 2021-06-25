import 'package:fablesofdesire/constructor/text_animation.dart';
import 'package:flutter/material.dart';

class TransitionScreen extends StatelessWidget {
  final visible;
  final text;
  TransitionScreen({this.visible, this.text});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 1000),
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "--",
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 60.0, bottom: 60, left: 50, right: 50),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          text,
                          speed: Duration(milliseconds: 85),
                          textStyle: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontFamily: "Mali"),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "--",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
