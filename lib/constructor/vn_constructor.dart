import 'package:universal_io/io.dart';
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
  _InterludeState createState() => _InterludeState();
}

class _InterludeState extends State<InterludeTextSound> {
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
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Text(
                widget.a!,
                style: TextStyle(
                  fontFamily: "Aleo",
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        LayoutBuilder(builder: (context, constraints) {
          if (Platform.isIOS || Platform.isAndroid) {
            return Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      color: Colors.transparent,
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
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      widget.q!,
                      textAlign: TextAlign.left,
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      speed: const Duration(milliseconds: 40),
                    ),
                  ],
                  displayFullTextOnTap: true,
                  isRepeatingAnimation: false,
                  key: ValueKey(widget.n),
                ),
              ],
            );
          } else {
            return Stack(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 4),
                    child:
                        Stack(alignment: Alignment.center, children: <Widget>[
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
                      Stack(
                        children: <Widget>[
                          Container(
                            color: Colors.transparent,
                            padding: EdgeInsets.all(5),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                  widget.q!,
                                  textAlign: TextAlign.left,
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                  ),
                                  speed: const Duration(milliseconds: 40),
                                ),
                              ],
                              displayFullTextOnTap: true,
                              isRepeatingAnimation: false,
                              key: ValueKey(widget.n),
                            ),
                          ),
                        ],
                      ),
                    ])),
              ],
            );
          }

          //
          //  CARD
          //
          // LayoutBuilder(builder: (context, constraints) {
          //   if (constraints.maxWidth > 800) {
          //     return Container(
          //       padding: EdgeInsets.symmetric(horizontal: width / 8),
          //       child: Opacity(
          //         opacity: 0.8,
          //         child: Card(
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(15.0),
          //           ),
          //           color: Colors.white,
          //           child: Padding(
          //             padding: EdgeInsets.all(15.0),
          //             child: Center(
          //               child: Padding(
          //                 padding: EdgeInsets.symmetric(
          //                     horizontal: width * 0.03, vertical: height * 0.02),
          //                 child: AnimatedTextKit(
          //                   animatedTexts: [
          //                     TyperAnimatedText(
          //                       widget.q!,
          //                       textAlign: TextAlign.left,
          //                       textStyle: TextStyle(
          //                         color: Colors.black,
          //                         fontSize: 21,
          //                       ),
          //                       speed: const Duration(milliseconds: 40),
          //                     ),
          //                   ],
          //                   displayFullTextOnTap: true,
          //                   isRepeatingAnimation: false,
          //                   key: ValueKey(widget.n),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     );
          //   } else {
          //     return Opacity(
          //       opacity: 0.8,
          //       child: Card(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(15.0),
          //         ),
          //         color: Colors.white,
          //         child: Padding(
          //           padding: EdgeInsets.all(15.0),
          //           child: Center(
          //             child: Padding(
          //               padding: EdgeInsets.symmetric(
          //                   horizontal: width * 0.03, vertical: height * 0.02),
          //               child: AnimatedTextKit(
          //                 animatedTexts: [
          //                   TyperAnimatedText(
          //                     widget.q!,
          //                     textAlign: TextAlign.left,
          //                     textStyle: TextStyle(
          //                       color: Colors.black,
          //                       fontSize: 21,
          //                     ),
          //                     speed: const Duration(milliseconds: 40),
          //                   ),
          //                 ],
          //                 displayFullTextOnTap: true,
          //                 isRepeatingAnimation: false,
          //                 key: ValueKey(widget.n),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     );
          //   }
          // }),
        })
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
