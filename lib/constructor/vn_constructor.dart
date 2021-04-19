import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InterludeTextSound extends StatefulWidget {
  final String? a;
  final String? q;
  final int n;
  InterludeTextSound(this.a, this.q, this.n);

  @override
  _InterludeSoundJacobState createState() => _InterludeSoundJacobState();
}

class _InterludeSoundJacobState extends State<InterludeTextSound> {
  bool? isNoti;
  @override
  void initState() {
    super.initState();
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isNoti = (prefs.getBool("notiState"));
    if (isNoti == true) {
      //_playAudio();
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    // DEBUG
    getSharedPrefs();
    print(widget.a);
    print(widget.q);
    print(widget.n);
    //
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Opacity(
          opacity: 0.8,
          child: Card(
            color: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                widget.a!,
                style: TextStyle(
                  fontFamily: "BottleParty",
                  fontSize: 37,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
          ),
        ),

        //
        //  CARD
        //
        LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: width / 8),
              child: Opacity(
                opacity: 0.8,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.03, vertical: height * 0.02),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              widget.q!,
                              textAlign: TextAlign.left,
                              textStyle: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 21,
                              ),
                              speed: const Duration(milliseconds: 40),
                            ),
                          ],
                          displayFullTextOnTap: true,
                          isRepeatingAnimation: false,
                          key: ValueKey(widget.n),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Opacity(
              opacity: 0.8,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.03, vertical: height * 0.02),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            widget.q!,
                            textAlign: TextAlign.left,
                            textStyle: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 21,
                            ),
                            speed: const Duration(milliseconds: 40),
                          ),
                        ],
                        displayFullTextOnTap: true,
                        isRepeatingAnimation: false,
                        key: ValueKey(widget.n),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        }),
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
      child: new BackdropFilter(
        filter: new ImageFilter.blur(sigmaX: 0, sigmaY: 0),
        child: new Container(
          decoration: new BoxDecoration(color: Colors.black.withOpacity(0)),
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
      duration: Duration(milliseconds: 300),
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
          ]),
    );
  }
}
