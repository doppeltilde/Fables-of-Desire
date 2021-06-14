import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:fablesofdesire/global/globals.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io' show Platform;

class InterludeTextSound extends StatefulWidget {
  final String? a;
  final String? q;
  final int n;
  final route;

  InterludeTextSound(this.a, this.q, this.n, this.route);

  @override
  _InterludeState createState() => _InterludeState();
}

class _InterludeState extends State<InterludeTextSound> {
  bool? isNoti;
  int? speed = 50;
  String? _name;
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefValue) => {
          setState(() {
            _name = prefValue.getString('name') ?? 'MC';
          })
        });
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Builder(
      builder: (context) {
        if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
          return Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Builder(
                  builder: (context) {
                    if (widget.a! == "MC") {
                      return Opacity(
                        opacity: 0.8,
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 15),
                            child: Text(
                              "$_name",
                              style: TextStyle(
                                fontFamily: "Julee",
                                fontSize: 21,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    } else {
                      return Opacity(
                        opacity: 0.8,
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 15),
                            child: Text(
                              widget.a!,
                              style: TextStyle(
                                fontFamily: "Julee",
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                  },
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(vertical: 12),
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Container(
                //         width: 100,
                //         height: 100,
                //         decoration: BoxDecoration(
                //           color: Colors.transparent,
                //           border: Border.all(
                //             color: Colors.white,
                //             width: 10,
                //           ),
                //           borderRadius: BorderRadius.circular(100),
                //         ),
                //       ),
                Container(
                  //width: MediaQuery.of(context).size.width / 2,
                  // padding: EdgeInsets.symmetric(
                  //     horizontal: MediaQuery.of(context).size.width / 3.5,
                  //     vertical: 20),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: <Widget>[
                      // Stack(
                      //   children: <Widget>[
                      //     Container(
                      //       color: Colors.transparent,
                      //       padding: EdgeInsets.all(5),
                      //       width: MediaQuery.of(context).size.width * 2,
                      //       child: ClipRRect(
                      //         borderRadius: BorderRadius.circular(10.0),
                      //         child: Image.asset(
                      //           "assets/images/gui/textbox_scroll_03.png",
                      //           fit: BoxFit.cover,
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: MediaQuery.of(context).size.width / 2,
                        child: Opacity(
                          opacity: 0.8,
                          child: ClayContainer(
                            spread: 3,
                            surfaceColor: Colors.white,
                            curveType: CurveType.none,
                            width: 700,
                            //color: Colors.brown[400],
                            color: Colors.grey,
                            customBorderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.03,
                                  vertical: height * 0.04),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TyperAnimatedText(
                                    widget.q!,
                                    textAlign: TextAlign.left,
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Aleo",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                    speed: Duration(milliseconds: speed!),
                                  ),
                                ],
                                displayFullTextOnTap: true,
                                isRepeatingAnimation: false,
                                key: ValueKey(widget.n),
                              ),
                            ),
                          ),
                        ),
                        // FittedBox(
                        //   fit: BoxFit.fitHeight,
                        //   child: Stack(
                        //     children: <Widget>[
                        //       Container(
                        //         color: Colors.transparent,
                        //         padding: EdgeInsets.symmetric(
                        //             vertical: 15, horizontal: 70),
                        //         child: AnimatedTextKit(
                        //           animatedTexts: [
                        //             TyperAnimatedText(
                        //               widget.q!,
                        //               textAlign: TextAlign.left,
                        //               textStyle: TextStyle(
                        //                   color: Colors.black,
                        //                   fontFamily: "Aleo",
                        //                   fontSize: 18),
                        //               speed: Duration(milliseconds: speed!),
                        //             ),
                        //           ],
                        //           displayFullTextOnTap: true,
                        //           isRepeatingAnimation: false,
                        //           key: ValueKey(widget.n),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   width: 100,
                //   height: 100,
                //   decoration: BoxDecoration(
                //     color: Colors.transparent,
                //     border: Border.all(
                //       color: Colors.white,
                //       width: 10,
                //     ),
                //     borderRadius: BorderRadius.circular(100),
                //   ),
                // ),
                // Container(
                //   transform: Matrix4.translationValues(-140.0, 0.0, 0.0),
                //   width: 100,
                //   height: 100,
                //   decoration: BoxDecoration(
                //     border: Border(
                //       right: BorderSide(width: 16.0, color: Colors.white),
                //     ),
                //     color: Colors.transparent,
                //   ),
                // ),

                Buttons(route: widget.route),
              ],
            ),
          );
        } else {
          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 15),
                child: Buttons(route: widget.route),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Builder(
                    builder: (context) {
                      if (widget.a! == "MC") {
                        return Opacity(
                          opacity: 0.8,
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 15),
                              child: Text(
                                "$_name",
                                style: TextStyle(
                                  fontFamily: "Julee",
                                  fontSize: 21,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Opacity(
                          opacity: 0.8,
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 15),
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
                        );
                      }
                    },
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 4.4),
                      child: Column(
                        children: [
                          Stack(alignment: Alignment.centerLeft, children: <
                              Widget>[
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
                              fit: BoxFit.scaleDown,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    color: Colors.transparent,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 70),
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
                          ]),
                        ],
                      )),
                ],
              )
            ],
          );
        }
      },
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
    double height = MediaQuery.of(context).size.height;
    return Builder(
      builder: (context) {
        if (height < 700) {
          return Align(
            alignment: Alignment.bottomRight,
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 0),
              child: Image.asset(
                "assets/images/sprites/" + widget.image! + ".png",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 1.4,
                key: UniqueKey(),
              ),
            ),
          );
        } else {
          return Align(
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
          );
        }
      },
    );
  }
}
