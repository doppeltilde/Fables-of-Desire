import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InterludeTextSound extends StatefulWidget {
  final String? a;
  final String? q;
  final int n;
  final route;
  final scaffoldKey;
  InterludeTextSound(this.a, this.q, this.n, this.route, this.scaffoldKey);

  @override
  _InterludeState createState() => _InterludeState();
}

class _InterludeState extends State<InterludeTextSound> {
  bool? isNoti;
  int? speed;
  @override
  void initState() {
    super.initState();
    getSpeed();
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
      //_playAudio();
    } else {}
  }

  getSpeed() async {
    speed = await getSpeedState();
    setState(() {});
  }

  saveSpeedState(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("speedValue", value);
  }

  getSpeedState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? speed = prefs.getInt('speedValue');

    return speed;
  }

  @override
  Widget build(BuildContext context) {
    // DEBUG
    getSharedPrefs();
    print(widget.a);
    print(widget.q);
    print(widget.n);
    //
    return Column(
      children: <Widget>[
        Opacity(
          opacity: 0.8,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: Text(
                widget.a!,
                style: TextStyle(
                  fontFamily: "Julee",
                  fontSize: 21,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Stack(
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 4),
                child:
                    Stack(alignment: Alignment.centerLeft, children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/images/gui/textbox_scroll_03.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal:
                                  MediaQuery.of(context).size.width / 12),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                widget.q!,
                                textAlign: TextAlign.left,
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Aleo",
                                    fontSize: 18),
                                speed: Duration(milliseconds: speed!),
                              ),
                            ],
                            displayFullTextOnTap: true,
                            isRepeatingAnimation: false,
                            key: ValueKey(widget.n),
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
          ],
        ),
      ],
    );
  }
}

class BackgroundBuilder extends StatefulWidget {
  final String? image;
  BackgroundBuilder({Key? key, this.image}) : super(key: key);
  @override
  _BackgroundBuilderState createState() => _BackgroundBuilderState();
}

class _BackgroundBuilderState extends State<BackgroundBuilder> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.image!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ImageBuilder extends StatefulWidget {
  final String? image;
  ImageBuilder({Key? key, this.image}) : super(key: key);
  @override
  _ImageBuilderState createState() => _ImageBuilderState();
}

class _ImageBuilderState extends State<ImageBuilder> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 0),
      child: ListView(
        key: UniqueKey(),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/sprites/" + widget.image! + ".png",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 1,
              )
            ],
          )
        ],
      ),
    );
  }
}

class ImageBuilderMC extends StatefulWidget {
  final String? image;
  ImageBuilderMC({Key? key, this.image}) : super(key: key);
  @override
  _ImageBuilderMCState createState() => _ImageBuilderMCState();
}

class _ImageBuilderMCState extends State<ImageBuilderMC> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      // Just crop the image!
      top: (MediaQuery.of(context).size.height / 2) + 25,
      child: Align(
        alignment: Alignment.bottomRight,
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 0),
          child: Image.asset(
            "assets/images/sprites/" + widget.image! + ".png",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height / 2,
            key: UniqueKey(),
          ),
        ),
      ),
    );
  }
}
