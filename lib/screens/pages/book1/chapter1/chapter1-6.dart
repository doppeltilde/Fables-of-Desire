import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bubble/bubble.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fablesofdesire/globals/globals.dart';
import 'package:fablesofdesire/screens/pages/more/more.dart';

class Choice6 extends StatefulWidget {
  _Choices createState() => _Choices();
}

class _Choices extends State<Choice6> {
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
    Future.delayed(const Duration(seconds: 8), () {
      if (this.mounted) {
        setState(() {
          visible1 = true;
        });
      }
    });
    Future.delayed(const Duration(seconds: 13), () {
      if (this.mounted) {
        setState(() {
          _visible2 = true;
          onPressed1 = true;
        });
      }
    });
  }

  bool _visible = true;
  var visible1 = false;
  var _visible2 = false;
  var _visible3 = false;
  var _visible4 = false;
  var _visible5 = false;
  var _visible6 = false;
  var _visible7 = false;
  var _visible8 = false;
  var _visible9 = false;
  var _visible10 = false;

  var onPressed1 = false;
  var onPressed2 = false;
  var onPressed3 = false;
  var onPressed4 = false;
  var onPressed5 = false;
  var onPressed6 = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => getOnWillPop(context),
      child: Builder(
        builder: (context) {
          if (_visible == true) {
            return Scaffold(
                body: Center(
              child: AnimatedOpacity(
                // If the widget is visible, animate to 0.0 (invisible).
                // If the widget is hidden, animate to 1.0 (fully visible).
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
                // The green box must be a child of the AnimatedOpacity widget.
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 60.0, bottom: 10, left: 50, right: 50),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            "Five days later...",
                            speed: Duration(milliseconds: 85),
                            textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: "SpaceMono"),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black,
                ),
              ),
            ));
          } else {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(),
              body: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Expanded(
                        child: ListView(
                          reverse: true,
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Bubble(
                                    color: Color.fromRGBO(212, 234, 244, 1.0),
                                    child: Text('Starlink\nJust Now',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black)),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Visibility(
                                      visible: visible1,
                                      child: TextCardOther(
                                          "Hi, Al! And? How was your first week?")),
                                  Builder(builder: (context) {
                                    if (visible1 == true &&
                                        _visible2 == false) {
                                      return TextCardBubble();
                                    } else {
                                      return Visibility(
                                          visible: _visible2,
                                          child: TextCardOther(
                                              tr("anna.speech8")));
                                    }
                                  }),
                                  Visibility(
                                      visible: _visible3,
                                      child: textCard(
                                          context, tr("alvin.speech15"))),
                                  Visibility(
                                      visible: _visible4,
                                      child: textCard(
                                          context, tr("alvin.speech16"))),
                                  Builder(builder: (context) {
                                    if (_visible4 == true &&
                                        _visible5 == false) {
                                      return TextCardBubble();
                                    } else {
                                      return Visibility(
                                          visible: _visible5,
                                          child: TextCardOther(
                                              tr("anna.speech10")));
                                    }
                                  }),
                                  Visibility(
                                      visible: _visible6,
                                      child: textCard(
                                          context, tr("alvin.speech17"))),
                                  Builder(builder: (context) {
                                    if (_visible6 == true &&
                                        _visible7 == false) {
                                      return TextCardBubble();
                                    } else {
                                      return Visibility(
                                          visible: _visible7,
                                          child: TextCardOther(
                                              tr("anna.speech11")));
                                    }
                                  }),
                                  Visibility(
                                      visible: _visible8,
                                      child: textCard(
                                          context, tr("alvin.speech18"))),
                                  Builder(builder: (context) {
                                    if (_visible8 == true &&
                                        _visible9 == false) {
                                      return TextCardBubble();
                                    } else {
                                      return Visibility(
                                          visible: _visible9,
                                          child: TextCardOther(
                                              tr("anna.speech12")));
                                    }
                                  }),
                                  Visibility(
                                      visible: _visible10,
                                      child: textCard(
                                          context, tr("alvin.speech19"))),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          if (onPressed1) {
                            return speechTextComposer(
                              context,
                              typeWriter(context, "Yeah, was pretty rad!"),
                              IconButton(
                                  icon: Icon(FontAwesomeIcons.telegramPlane),
                                  iconSize: 25.0,
                                  color: Colors.blue,
                                  onPressed: () {
                                    Future.delayed(const Duration(seconds: 0),
                                        () {
                                      setState(() {
                                        onPressed1 = false;
                                        _visible3 = true;
                                      });
                                    });
                                    Future.delayed(const Duration(seconds: 1),
                                        () {
                                      setState(() {
                                        onPressed2 = true;
                                      });
                                    });
                                  }),
                            );
                          } else if (onPressed2) {
                            return speechTextComposer(
                              context,
                              typeWriter(context, tr("alvin.speech16")),
                              IconButton(
                                  icon: Icon(FontAwesomeIcons.telegramPlane),
                                  iconSize: 25.0,
                                  color: Colors.blue,
                                  onPressed: () {
                                    Future.delayed(const Duration(seconds: 0),
                                        () {
                                      setState(() {
                                        onPressed2 = false;
                                        _visible4 = true;
                                      });
                                    });
                                    Future.delayed(const Duration(seconds: 4),
                                        () {
                                      setState(() {
                                        onPressed3 = true;
                                        _visible5 = true;
                                      });
                                    });
                                  }),
                            );
                          } else if (onPressed3) {
                            return speechTextComposer(
                              context,
                              typeWriter(context, tr("alvin.speech17")),
                              IconButton(
                                  icon: Icon(FontAwesomeIcons.telegramPlane),
                                  iconSize: 25.0,
                                  color: Colors.blue,
                                  onPressed: () {
                                    Future.delayed(const Duration(seconds: 0),
                                        () {
                                      setState(() {
                                        onPressed3 = false;
                                        _visible6 = true;
                                      });
                                    });
                                    Future.delayed(const Duration(seconds: 4),
                                        () {
                                      setState(() {
                                        onPressed4 = true;
                                        _visible7 = true;
                                      });
                                    });
                                  }),
                            );
                          } else if (onPressed4) {
                            return speechTextComposer(
                              context,
                              typeWriter(context, tr("alvin.speech18")),
                              IconButton(
                                  icon: Icon(FontAwesomeIcons.telegramPlane),
                                  iconSize: 25.0,
                                  color: Colors.blue,
                                  onPressed: () {
                                    Future.delayed(const Duration(seconds: 0),
                                        () {
                                      setState(() {
                                        onPressed4 = false;
                                        _visible8 = true;
                                      });
                                    });
                                    Future.delayed(const Duration(seconds: 4),
                                        () {
                                      setState(() {
                                        onPressed5 = true;
                                        _visible9 = true;
                                      });
                                    });
                                  }),
                            );
                          } else if (onPressed5) {
                            return speechTextComposer(
                              context,
                              typeWriter(context, tr("alvin.speech19")),
                              IconButton(
                                  icon: Icon(FontAwesomeIcons.telegramPlane),
                                  iconSize: 25.0,
                                  color: Colors.blue,
                                  onPressed: () {
                                    Future.delayed(const Duration(seconds: 0),
                                        () {
                                      setState(() {
                                        onPressed5 = false;
                                        _visible10 = true;
                                      });
                                    });

                                    Future.delayed(const Duration(seconds: 2),
                                        () {
                                      setState(() {
                                        onPressed6 = true;
                                      });
                                    });
                                  }),
                            );
                          } else if (onPressed6) {
                            return SafeArea(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                height: 70.0,
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon:
                                          Icon(FontAwesomeIcons.solidSmileBeam),
                                      iconSize: 25.0,
                                      onPressed: () {},
                                    ),
                                    Expanded(
                                      child: continueButton(
                                          context, "/episode1-7"),
                                    ),
                                    IconButton(
                                      icon:
                                          Icon(FontAwesomeIcons.telegramPlane),
                                      iconSize: 25.0,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            );
                          } else {
                            return messageComposer(context);
                          }
                        },
                      ),
                      //_buildMessageComposer(),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
