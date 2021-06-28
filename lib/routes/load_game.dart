/// Copyright (c) 2021 Jona T. Feucht and The SmallDreams Authors.

import 'package:fablesofdesire/global/audio/game_audio.dart';
import 'package:fablesofdesire/global/globals.dart';
import 'package:fablesofdesire/routes/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io' show Platform;

import 'package:universal_platform/universal_platform.dart';

class LoadGame extends StatefulWidget {
  final route;
  LoadGame({Key? key, this.route});

  @override
  _LoadGameState createState() => _LoadGameState();
}

class _LoadGameState extends State<LoadGame> {
  @override
  void initState() {
    super.initState();
    getSlot1();
    getSlot1Date();
    getSlot2();
    getSlot2Date();
    getSlot3();
    getSlot3Date();
  }

  String? saveSlotOne;
  getSlot1() async {
    saveSlotOne = await getSlotOneState();
    setState(() {});
  }

  getSlotOneState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? saveSlotOne = prefs.getString('saveSlotOne');
    return saveSlotOne;
  }

  String? saveSlotOneDate;
  getSlot1Date() async {
    saveSlotOneDate = await getSlotOneDateState();
    setState(() {});
  }

  getSlotOneDateState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? saveSlotOneDate = prefs.getString('saveSlotOneDate');
    return saveSlotOneDate;
  }

  String? saveSlot2;
  getSlot2() async {
    saveSlot2 = await getSlot2State();
    setState(() {});
  }

  saveSlot2State(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("saveSlot2", value);
  }

  getSlot2State() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? saveSlot2 = prefs.getString('saveSlot2');
    return saveSlot2;
  }

  String? saveSlot2Date;
  getSlot2Date() async {
    saveSlot2Date = await getSlot2DateState();
    setState(() {});
  }

  getSlot2DateState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? saveSlot2Date = prefs.getString('saveSlot2Date');
    return saveSlot2Date;
  }

  String? saveSlot3;
  getSlot3() async {
    saveSlot3 = await getSlot3State();
    setState(() {});
  }

  saveSlot3State(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("saveSlot3", value);
  }

  getSlot3State() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? saveSlot3 = prefs.getString('saveSlot3');
    return saveSlot3;
  }

  String? saveSlot3Date;
  getSlot3Date() async {
    saveSlot3Date = await getSlot3DateState();
    setState(() {});
  }

  getSlot3DateState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? saveSlot3Date = prefs.getString('saveSlot3Date');
    return saveSlot3Date;
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (UniversalPlatform.isMacOS ||
          UniversalPlatform.isWindows ||
          UniversalPlatform.isLinux ||
          UniversalPlatform.isWeb) {
        return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(1), BlendMode.dstATop),
              image:
                  AssetImage("assets/images/bgs/mininature_003_19201440.jpg"),
              fit: BoxFit.cover,
            )),
            child: SafeArea(
                child: Scaffold(
              appBar: appbar(context, "LOAD GAME") as PreferredSizeWidget?,
              backgroundColor: Colors.transparent,
              resizeToAvoidBottomInset: false,
              body: Stack(children: <Widget>[
                Center(
                    child: Container(
                        child: SafeArea(
                            child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Spacer(),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (saveSlotOne == null ||
                                          saveSlotOne!.isEmpty) {
                                        print("EMPTY");
                                      } else {
                                        if (UniversalPlatform.isWindows ||
                                            UniversalPlatform.isLinux) {
                                          setState(() {
                                            GameAudioDesktop.playAudio.stop();
                                          });
                                        } else {
                                          setState(() {
                                            GameAudio.bgm.stop();
                                          });
                                        }
                                        Navigator.of(context)
                                            .pushNamed('$saveSlotOne');
                                      }
                                    },
                                    child: Builder(builder: (context) {
                                      if (saveSlotOne == null ||
                                          saveSlotOne!.isEmpty) {
                                        return ChibiNeutral(
                                          chibiImg: "Chibi_Hidetake",
                                        );
                                      } else {
                                        return ChibiHappy(
                                          chibiImg: "Chibi_Hidetake",
                                        );
                                      }
                                    }),
                                  ),
                                  Builder(builder: (context) {
                                    if (saveSlotOne == null ||
                                        saveSlotOne!.isEmpty) {
                                      return Text(
                                        "\nEMPTY",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Mali",
                                            fontSize: 20),
                                      );
                                    } else {
                                      return Text(
                                        "\nSAVED\n$saveSlotOneDate\n",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Mali",
                                            fontSize: 20),
                                      );
                                    }
                                  }),
                                  Builder(
                                    builder: (context) {
                                      if (saveSlotOne == null ||
                                          saveSlotOne!.isEmpty) {
                                        return Column(children: [
                                          SizedBox.shrink(),
                                        ]);
                                      } else {
                                        return Column(
                                          children: [
                                            InkWell(
                                                onTap: () async {
                                                  SharedPreferences prefs =
                                                      await SharedPreferences
                                                          .getInstance();

                                                  setState(() {
                                                    prefs.remove("saveSlotOne");
                                                    saveSlotOne = null;
                                                  });
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 25),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: Colors.redAccent,
                                                  ),
                                                  child: Text(
                                                    "DELETE SAVE",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: "Mali",
                                                        fontSize: 20),
                                                  ),
                                                )),
                                          ],
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (saveSlot2 == null ||
                                          saveSlot2!.isEmpty) {
                                        print("EMPTY");
                                      } else {
                                        if (UniversalPlatform.isWindows ||
                                            UniversalPlatform.isLinux) {
                                          setState(() {
                                            GameAudioDesktop.playAudio.stop();
                                          });
                                        } else {
                                          setState(() {
                                            GameAudio.bgm.stop();
                                          });
                                        }
                                        Navigator.of(context)
                                            .pushNamed('$saveSlot2');
                                      }
                                    },
                                    child: Builder(builder: (context) {
                                      if (saveSlot2 == null ||
                                          saveSlot2!.isEmpty) {
                                        return ChibiNeutral(
                                          chibiImg: "Chibi_Tomiichi",
                                        );
                                      } else {
                                        return ChibiHappy(
                                          chibiImg: "Chibi_Tomiichi",
                                        );
                                      }
                                    }),
                                  ),
                                  Builder(builder: (context) {
                                    if (saveSlot2 == null ||
                                        saveSlot2!.isEmpty) {
                                      return Text(
                                        "\nEMPTY",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Mali",
                                            fontSize: 20),
                                      );
                                    } else {
                                      return Text(
                                        "\nSAVED\n$saveSlot2Date\n",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Mali",
                                            fontSize: 20),
                                      );
                                    }
                                  }),
                                  Builder(
                                    builder: (context) {
                                      if (saveSlot2 == null ||
                                          saveSlot2!.isEmpty) {
                                        return Column(children: [
                                          SizedBox.shrink(),
                                        ]);
                                      } else {
                                        return Column(
                                          children: [
                                            InkWell(
                                                onTap: () async {
                                                  SharedPreferences prefs =
                                                      await SharedPreferences
                                                          .getInstance();

                                                  setState(() {
                                                    prefs.remove("saveSlot2");
                                                    saveSlot2 = null;
                                                  });
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 25),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: Colors.redAccent,
                                                  ),
                                                  child: Text(
                                                    "DELETE SAVE",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: "Mali",
                                                        fontSize: 20),
                                                  ),
                                                )),
                                          ],
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (saveSlot3 == null ||
                                          saveSlot3!.isEmpty) {
                                        print("EMPTY");
                                      } else {
                                        if (UniversalPlatform.isWindows ||
                                            UniversalPlatform.isLinux) {
                                          setState(() {
                                            GameAudioDesktop.playAudio.stop();
                                          });
                                        } else {
                                          setState(() {
                                            GameAudio.bgm.stop();
                                          });
                                        }
                                        Navigator.of(context)
                                            .pushNamed('$saveSlot3');
                                      }
                                    },
                                    child: Builder(builder: (context) {
                                      if (saveSlot3 == null ||
                                          saveSlot3!.isEmpty) {
                                        return ChibiNeutral(
                                          chibiImg: "Chibi_Naoki",
                                        );
                                      } else {
                                        return ChibiHappy(
                                          chibiImg: "Chibi_Naoki",
                                        );
                                      }
                                    }),
                                  ),
                                  Builder(builder: (context) {
                                    if (saveSlot3 == null ||
                                        saveSlot3!.isEmpty) {
                                      return Text(
                                        "\nEMPTY",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Mali",
                                            fontSize: 20),
                                      );
                                    } else {
                                      return Text(
                                        "\nSAVED\n$saveSlot3Date\n",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Mali",
                                            fontSize: 20),
                                      );
                                    }
                                  }),
                                  Builder(
                                    builder: (context) {
                                      if (saveSlot3 == null ||
                                          saveSlot3!.isEmpty) {
                                        return Column(children: [
                                          SizedBox.shrink(),
                                        ]);
                                      } else {
                                        return Column(
                                          children: [
                                            InkWell(
                                                onTap: () async {
                                                  SharedPreferences prefs =
                                                      await SharedPreferences
                                                          .getInstance();

                                                  setState(() {
                                                    prefs.remove("saveSlot3");
                                                    saveSlot3 = null;
                                                  });
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 25),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: Colors.redAccent,
                                                  ),
                                                  child: Text(
                                                    "DELETE SAVE",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: "Mali",
                                                        fontSize: 20),
                                                  ),
                                                )),
                                          ],
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )))),
                backbutton(context)
              ]),
            )));
      } else {
        return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(1), BlendMode.dstATop),
              image:
                  AssetImage("assets/images/bgs/mininature_003_19201440.jpg"),
              fit: BoxFit.cover,
            )),
            child: SafeArea(
                child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                centerTitle: true,
                backgroundColor: Colors.green,
                title: Text("LOAD GAME"),
              ),
              backgroundColor: Colors.transparent,
              resizeToAvoidBottomInset: false,
              body: Stack(children: <Widget>[
                Center(
                    child: Container(
                        child: SafeArea(
                            child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Spacer(),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (saveSlotOne == null ||
                                          saveSlotOne!.isEmpty) {
                                        print("EMPTY");
                                      } else {
                                        if (UniversalPlatform.isWindows ||
                                            UniversalPlatform.isLinux) {
                                          setState(() {
                                            GameAudioDesktop.playAudio.stop();
                                          });
                                        } else {
                                          setState(() {
                                            GameAudio.bgm.stop();
                                          });
                                        }
                                        Navigator.of(context)
                                            .pushNamed('$saveSlotOne');
                                      }
                                    },
                                    child: Builder(builder: (context) {
                                      if (saveSlotOne == null ||
                                          saveSlotOne!.isEmpty) {
                                        return ChibiNeutral(
                                          chibiImg: "Chibi_Hidetake",
                                        );
                                      } else {
                                        return ChibiHappy(
                                          chibiImg: "Chibi_Hidetake",
                                        );
                                      }
                                    }),
                                  ),
                                  Builder(builder: (context) {
                                    if (saveSlotOne == null ||
                                        saveSlotOne!.isEmpty) {
                                      return Text(
                                        "\nEMPTY",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Mali",
                                            fontSize: 20),
                                      );
                                    } else {
                                      return Text(
                                        "\nSAVED\n$saveSlotOneDate\n",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Mali",
                                            fontSize: 20),
                                      );
                                    }
                                  }),
                                  Builder(
                                    builder: (context) {
                                      if (saveSlotOne == null ||
                                          saveSlotOne!.isEmpty) {
                                        return Column(children: [
                                          SizedBox.shrink(),
                                        ]);
                                      } else {
                                        return Column(
                                          children: [
                                            InkWell(
                                                onTap: () async {
                                                  SharedPreferences prefs =
                                                      await SharedPreferences
                                                          .getInstance();

                                                  setState(() {
                                                    prefs.remove("saveSlotOne");
                                                    saveSlotOne = null;
                                                  });
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 25),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: Colors.redAccent,
                                                  ),
                                                  child: Text(
                                                    "DELETE SAVE",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: "Mali",
                                                        fontSize: 20),
                                                  ),
                                                )),
                                          ],
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (saveSlot2 == null ||
                                          saveSlot2!.isEmpty) {
                                        print("EMPTY");
                                      } else {
                                        if (UniversalPlatform.isWindows ||
                                            UniversalPlatform.isLinux) {
                                          setState(() {
                                            GameAudioDesktop.playAudio.stop();
                                          });
                                        } else {
                                          setState(() {
                                            GameAudio.bgm.stop();
                                          });
                                        }
                                        Navigator.of(context)
                                            .pushNamed('$saveSlot2');
                                      }
                                    },
                                    child: Builder(builder: (context) {
                                      if (saveSlot2 == null ||
                                          saveSlot2!.isEmpty) {
                                        return ChibiNeutral(
                                          chibiImg: "Chibi_Tomiichi",
                                        );
                                      } else {
                                        return ChibiHappy(
                                          chibiImg: "Chibi_Tomiichi",
                                        );
                                      }
                                    }),
                                  ),
                                  Builder(builder: (context) {
                                    if (saveSlot2 == null ||
                                        saveSlot2!.isEmpty) {
                                      return Text(
                                        "\nEMPTY",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Mali",
                                            fontSize: 20),
                                      );
                                    } else {
                                      return Text(
                                        "\nSAVED\n$saveSlot2Date\n",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Mali",
                                            fontSize: 20),
                                      );
                                    }
                                  }),
                                  Builder(
                                    builder: (context) {
                                      if (saveSlot2 == null ||
                                          saveSlot2!.isEmpty) {
                                        return Column(children: [
                                          SizedBox.shrink(),
                                        ]);
                                      } else {
                                        return Column(
                                          children: [
                                            ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.redAccent,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 20,
                                                            horizontal: 30)),
                                                onPressed: () async {
                                                  SharedPreferences prefs =
                                                      await SharedPreferences
                                                          .getInstance();

                                                  setState(() {
                                                    prefs.remove("saveSlot2");
                                                    saveSlot2 = null;
                                                  });
                                                },
                                                child: Text(
                                                  "DELETE SAVE",
                                                  style: TextStyle(
                                                      fontFamily: "Mali",
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ))
                                          ],
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (saveSlot3 == null ||
                                          saveSlot3!.isEmpty) {
                                        print("EMPTY");
                                      } else {
                                        if (UniversalPlatform.isWindows ||
                                            UniversalPlatform.isLinux) {
                                          setState(() {
                                            GameAudioDesktop.playAudio.stop();
                                          });
                                        } else {
                                          setState(() {
                                            GameAudio.bgm.stop();
                                          });
                                        }
                                        Navigator.of(context)
                                            .pushNamed('$saveSlot3');
                                      }
                                    },
                                    child: Builder(builder: (context) {
                                      if (saveSlot3 == null ||
                                          saveSlot3!.isEmpty) {
                                        return ChibiNeutral(
                                          chibiImg: "Chibi_Naoki",
                                        );
                                      } else {
                                        return ChibiHappy(
                                          chibiImg: "Chibi_Naoki",
                                        );
                                      }
                                    }),
                                  ),
                                  Builder(builder: (context) {
                                    if (saveSlot3 == null ||
                                        saveSlot3!.isEmpty) {
                                      return Text(
                                        "\nEMPTY",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Mali",
                                            fontSize: 20),
                                      );
                                    } else {
                                      return Text(
                                        "\nSAVED\n$saveSlot3Date\n",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Mali",
                                            fontSize: 20),
                                      );
                                    }
                                  }),
                                  Builder(
                                    builder: (context) {
                                      if (saveSlot3 == null ||
                                          saveSlot3!.isEmpty) {
                                        return Column(children: [
                                          SizedBox.shrink(),
                                        ]);
                                      } else {
                                        return Column(
                                          children: [
                                            ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.redAccent,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 20,
                                                            horizontal: 30)),
                                                onPressed: () async {
                                                  SharedPreferences prefs =
                                                      await SharedPreferences
                                                          .getInstance();

                                                  setState(() {
                                                    prefs.remove("saveSlot3");
                                                    saveSlot3 = null;
                                                  });
                                                },
                                                child: Text(
                                                  "DELETE SAVE",
                                                  style: TextStyle(
                                                      fontFamily: "Mali",
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ))
                                          ],
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )))),
              ]),
            )));
      }
    });
  }
}
