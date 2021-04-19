import 'package:bubble/bubble.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fablesofdesire/globals/globals.dart';
import 'package:fablesofdesire/screens/pages/more/more.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChoiceFive extends StatefulWidget {
  _Choices createState() => _Choices();
}

class _Choices extends State<ChoiceFive> {
  bool? isSwitchedFT;

  @override
  void initState() {
    super.initState();
    getSharedPrefs();
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isSwitchedFT = (prefs.getBool("switchState"));
    if (isSwitchedFT == true) {
      //FlameAudio.bgm.play("jacob.mp3", volume: .3);
    } else {}
  }

  int speedFactor = 7;
  bool scroll = false;

  var visible = true;
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
  var _visible11 = false;
  var _visible12 = false;
  var _visible13 = false;
  var _visible14 = false;
  var _visible15 = false;
  var _visible16 = false;

  bool onPressed = false;
  bool onPressed1 = false;
  bool onPressed2 = false;
  bool onPressed3 = false;
  bool onPressed4 = false;
  bool onPressed5 = false;
  bool onPressed6 = false;
  bool onPressed7 = false;
  bool onPressed8 = false;
  bool onPressed9 = false;
  bool onPressed10 = false;
  bool onPressed11 = false;
  bool onPressed12 = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => getOnWillPop(context),
        child: new Scaffold(
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
                                child: Text('Starlink\n8:05 AM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14.0)),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Builder(
                                builder: (context) {
                                  if (onPressed1 == true) {
                                    return Container(
                                      child: Column(
                                        children: <Widget>[
                                          Visibility(
                                              visible: visible1,
                                              child: textCard(context,
                                                  tr("alvin.speech8"))),
                                          Builder(builder: (context) {
                                            if (visible1 == true &&
                                                _visible2 == false) {
                                              return TextCardBubble();
                                            } else {
                                              return Visibility(
                                                  visible: _visible2,
                                                  child: TextCardOther(
                                                      tr("jacob.speech1")));
                                            }
                                          }),
                                        ],
                                      ),
                                    );
                                  } else
                                    return SizedBox(
                                      height: 0,
                                    );
                                },
                              ),
                              Visibility(
                                  visible: _visible3,
                                  child:
                                      textCard(context, tr("alvin.speech9"))),
                              Builder(builder: (context) {
                                if (_visible3 == true && _visible4 == false) {
                                  return TextCardBubble();
                                } else {
                                  return Visibility(
                                      visible: _visible4,
                                      child:
                                          TextCardOther(tr("jacob.speech2")));
                                }
                              }),
                              Visibility(
                                  visible: _visible5,
                                  child:
                                      textCard(context, tr("alvin.speech10"))),
                              Builder(builder: (context) {
                                if (_visible5 == true && _visible6 == false) {
                                  return TextCardBubble();
                                } else {
                                  return Visibility(
                                      visible: _visible6,
                                      child:
                                          TextCardOther(tr("jacob.speech3")));
                                }
                              }),
                              Visibility(
                                  visible: _visible7,
                                  child:
                                      textCard(context, tr("alvin.speech11"))),
                              Visibility(
                                  visible: _visible8,
                                  child:
                                      textCard(context, tr("alvin.speech12"))),
                              Builder(builder: (context) {
                                if (_visible8 == true && _visible9 == false) {
                                  return TextCardBubble();
                                } else {
                                  return Visibility(
                                      visible: _visible9,
                                      child:
                                          TextCardOther(tr("jacob.speech4")));
                                }
                              }),
                              Builder(builder: (context) {
                                if (_visible9 == true && _visible10 == false) {
                                  return TextCardBubble();
                                } else {
                                  return Visibility(
                                      visible: _visible10,
                                      child:
                                          TextCardOther(tr("jacob.speech5")));
                                }
                              }),
                              Builder(builder: (context) {
                                if (_visible10 == true && _visible11 == false) {
                                  return TextCardBubble();
                                } else {
                                  return Visibility(
                                      visible: _visible11,
                                      child:
                                          TextCardOther(tr("jacob.speech6")));
                                }
                              }),
                              Visibility(
                                  visible: _visible12,
                                  child:
                                      textCard(context, tr("alvin.speech13"))),
                              Builder(builder: (context) {
                                if (_visible12 == true && _visible13 == false) {
                                  return TextCardBubble();
                                } else {
                                  return Visibility(
                                      visible: _visible13,
                                      child:
                                          TextCardOther(tr("jacob.speech7")));
                                }
                              }),
                              Builder(builder: (context) {
                                if (_visible13 == true && _visible14 == false) {
                                  return TextCardBubble();
                                } else {
                                  return Visibility(
                                      visible: _visible14,
                                      child:
                                          TextCardOther(tr("jacob.speech8")));
                                }
                              }),
                              Visibility(
                                  visible: _visible15,
                                  child:
                                      textCard(context, tr("alvin.speech14"))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      if (visible) {
                        return SafeArea(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            height: 70.0,
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.solidSmileBeam),
                                  iconSize: 25.0,
                                  onPressed: () {},
                                ),
                                Expanded(
                                  child: Visibility(
                                    visible: visible,
                                    child: Container(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary:
                                                Theme.of(context).accentColor,
                                            elevation: 4.0,
                                            padding: EdgeInsets.only(
                                                top: 15,
                                                bottom: 15,
                                                left: 30,
                                                right: 30),
                                          ),
                                          child: Text(
                                            "Start",
                                            style: TextStyle(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontSize: 30,
                                                fontFamily: "BottleParty"),
                                          ),
                                          onPressed: () {
                                            Future.delayed(
                                              Duration(milliseconds: 0),
                                              () {
                                                setState(
                                                  () {
                                                    visible = false;
                                                    onPressed1 = true;
                                                    visible1 = true;
                                                  },
                                                );
                                              },
                                            );

                                            Future.delayed(
                                              const Duration(seconds: 3),
                                              () {
                                                setState(
                                                  () {
                                                    onPressed2 = true;
                                                    _visible2 = true;
                                                  },
                                                );
                                              },
                                            );
                                          }),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.telegramPlane),
                                  iconSize: 25.0,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        );
                      } else if (onPressed2) {
                        return SafeArea(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            height: 70.0,
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.solidSmileBeam),
                                  iconSize: 25.0,
                                  onPressed: () {},
                                ),
                                typeWriter(context, tr("alvin.speech9")),
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.telegramPlane),
                                  iconSize: 25.0,
                                  color: Colors.blue,
                                  onPressed: () {
                                    Future.delayed(
                                      const Duration(seconds: 0),
                                      () {
                                        if (this.mounted) {
                                          setState(
                                            () {
                                              onPressed2 = false;
                                              _visible3 = true;
                                            },
                                          );
                                        }
                                      },
                                    );
                                    Future.delayed(const Duration(seconds: 4),
                                        () {
                                      if (this.mounted) {
                                        setState(() {
                                          onPressed3 = true;
                                          _visible4 = true;
                                        });
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      } else if (onPressed3) {
                        return SafeArea(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            height: 70.0,
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.solidSmileBeam),
                                  iconSize: 25.0,
                                  onPressed: () {},
                                ),
                                typeWriter(context, tr("alvin.speech10")),
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.telegramPlane),
                                    iconSize: 25.0,
                                    color: Colors.blue,
                                    onPressed: () {
                                      Future.delayed(const Duration(seconds: 0),
                                          () {
                                        setState(() {
                                          onPressed3 = false;
                                          _visible5 = true;
                                        });
                                      });
                                      Future.delayed(const Duration(seconds: 4),
                                          () {
                                        setState(() {
                                          onPressed4 = true;
                                          _visible6 = true;
                                        });
                                      });
                                    }),
                              ],
                            ),
                          ),
                        );
                      } else if (onPressed4) {
                        return SafeArea(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            height: 70.0,
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.solidSmileBeam),
                                  iconSize: 25.0,
                                  onPressed: () {},
                                ),
                                typeWriter(context, tr("alvin.speech11")),
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.telegramPlane),
                                    iconSize: 25.0,
                                    color: Colors.blue,
                                    onPressed: () {
                                      Future.delayed(const Duration(seconds: 0),
                                          () {
                                        setState(() {
                                          onPressed4 = false;
                                          _visible7 = true;
                                        });
                                      });

                                      Future.delayed(const Duration(seconds: 1),
                                          () {
                                        setState(() {
                                          onPressed5 = true;
                                        });
                                      });
                                    }),
                              ],
                            ),
                          ),
                        );
                      } else if (onPressed5) {
                        return SafeArea(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            height: 70.0,
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.solidSmileBeam),
                                  iconSize: 25.0,
                                  onPressed: () {},
                                ),
                                typeWriter(context, tr("alvin.speech12")),
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.telegramPlane),
                                    iconSize: 25.0,
                                    color: Colors.blue,
                                    onPressed: () {
                                      Future.delayed(const Duration(seconds: 0),
                                          () {
                                        setState(() {
                                          onPressed5 = false;
                                          _visible8 = true;
                                        });
                                      });
                                      Future.delayed(const Duration(seconds: 4),
                                          () {
                                        setState(() {
                                          _visible9 = true;
                                        });
                                      });
                                      Future.delayed(const Duration(seconds: 6),
                                          () {
                                        setState(() {
                                          _visible10 = true;
                                        });
                                      });
                                      Future.delayed(const Duration(seconds: 8),
                                          () {
                                        setState(() {
                                          onPressed6 = true;
                                          _visible11 = true;
                                        });
                                      });
                                    }),
                              ],
                            ),
                          ),
                        );
                      } else if (onPressed6) {
                        return SafeArea(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            height: 70.0,
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.solidSmileBeam),
                                  iconSize: 25.0,
                                  onPressed: () {},
                                ),
                                typeWriter(context, tr("alvin.speech13")),
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.telegramPlane),
                                    iconSize: 25.0,
                                    color: Colors.blue,
                                    onPressed: () {
                                      Future.delayed(const Duration(seconds: 0),
                                          () {
                                        setState(() {
                                          onPressed6 = false;
                                          _visible12 = true;
                                        });
                                      });
                                      Future.delayed(const Duration(seconds: 4),
                                          () {
                                        setState(() {
                                          _visible13 = true;
                                        });
                                      });
                                      Future.delayed(const Duration(seconds: 7),
                                          () {
                                        setState(() {
                                          onPressed7 = true;
                                          _visible14 = true;
                                        });
                                      });
                                    }),
                              ],
                            ),
                          ),
                        );
                      } else if (onPressed7) {
                        return speechTextComposer(
                          context,
                          typeWriter(context, tr("alvin.speech14")),
                          IconButton(
                              icon: Icon(FontAwesomeIcons.telegramPlane),
                              iconSize: 25.0,
                              color: Colors.blue,
                              onPressed: () {
                                Future.delayed(const Duration(seconds: 0), () {
                                  setState(() {
                                    onPressed7 = false;
                                    _visible15 = true;
                                  });
                                });
                                Future.delayed(const Duration(seconds: 1), () {
                                  setState(() {
                                    _visible16 = true;
                                  });
                                });
                              }),
                        );
                      } else if (_visible16) {
                        return SafeArea(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            height: 70.0,
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.solidSmileBeam),
                                  iconSize: 25.0,
                                  onPressed: () {},
                                ),
                                Expanded(
                                  child: continueButton(context, "/episode1-6"),
                                ),
                                IconButton(
                                  icon: Icon(FontAwesomeIcons.telegramPlane),
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
        ));
  }
}
