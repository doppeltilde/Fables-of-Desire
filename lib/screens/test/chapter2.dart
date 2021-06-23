import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fablesofdesire/constructor/vn_scaffold.dart';
import 'package:fablesofdesire/global/will_pop.dart';
import 'package:fablesofdesire/text/vn_text.dart';
import 'package:flutter/material.dart';

class VN2 extends StatefulWidget {
  @override
  _VNState createState() => _VNState();
}

class _VNState extends State<VN2> {
  static const route = "/2";
  static const nextRoute = "/1";
  final textSound = TextConstructor1();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (this.mounted) {
        setState(() {
          _visible = !_visible;
        });
      }
    });
  }

  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => getOnWillPop(),
        child: Builder(builder: (context) {
          if (_visible == true) {
            return Scaffold(
                body: Center(
              child: AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
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
                                "Some time later...",
                                speed: Duration(milliseconds: 85),
                                textStyle: TextStyle(
                                    fontSize: 30,
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
            ));
          } else {
            return VNScaffold(
              bgImage: "mininature_003_19201440",
              textSound: textSound,
              route: route,
              nextRoute: nextRoute,
            );
          }
        }));
  }
}
