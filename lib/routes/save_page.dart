/// Copyright (c) 2021 Jona T. Feucht and The SmallDreams Authors.

import 'package:universal_platform/universal_platform.dart';

import 'package:fablesofdesire/global/globals.dart';
import 'package:fablesofdesire/routes/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

class SaveGame extends StatefulWidget {
  final route;
  SaveGame({this.route});

  @override
  _LoadGameState createState() => _LoadGameState();
}

class _LoadGameState extends State<SaveGame> {
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

  saveSlotOneState(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("saveSlotOne", value);
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

  saveSlotOneDateState(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("saveSlotOneDate", value);
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

  saveSlot2DateState(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("saveSlot2Date", value);
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

  saveSlot3DateState(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("saveSlot3Date", value);
  }

  getSlot3DateState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? saveSlot3Date = prefs.getString('saveSlot3Date');
    return saveSlot3Date;
  }

  callback(newValue, name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (name == "saveSlotOne") {
      setState(() {
        prefs.remove("saveSlotOne");
        saveSlotOne = null;
      });
    } else if (name == "saveSlot2") {
      setState(() {
        prefs.remove("saveSlot2");
        saveSlot2 = null;
      });
    } else if (name == "saveSlot3") {
      setState(() {
        prefs.remove("saveSlot3");
        saveSlot3 = null;
      });
    }
  }

  callback2(newValue, name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (name == "saveSlotOne") {
      setState(() {
        prefs.remove("saveSlotOne");
        saveSlotOne = null;
      });
    } else if (name == "saveSlot2") {
      setState(() {
        prefs.remove("saveSlot2");
        saveSlot2 = null;
      });
    } else if (name == "saveSlot3") {
      setState(() {
        prefs.remove("saveSlot3");
        saveSlot3 = null;
      });
    }
  }

  callbackSave(getRoute, name) async {
    print(getRoute);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (getRoute.contains("naoki") == true) {
      if (getRoute == null || getRoute.isEmpty) {
        setState(() {
          name = name;
          saveSlotOneState(name);
          DateTime now = DateTime.now();
          String dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss").format(now);
          saveSlotOneDateState("$dateFormat".toString());
          saveSlotOneDate = "$dateFormat".toString();
        });
      } else {
        showAlertDialog(context);
      }
    } else if (name == "saveSlot2") {
      setState(() {
        prefs.remove("saveSlot2");
        saveSlot2 = null;
      });
    } else if (name == "saveSlot3") {
      setState(() {
        prefs.remove("saveSlot3");
        saveSlot3 = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (UniversalPlatform.isMacOS ||
            UniversalPlatform.isWindows ||
            UniversalPlatform.isLinux) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(1), BlendMode.dstATop),
              image:
                  AssetImage("assets/images/bgs/mininature_003_19201440.jpg"),
              fit: BoxFit.cover,
            )),
            child: SafeArea(
              child: Scaffold(
                appBar: appbar(context, "SAVE GAME") as PreferredSizeWidget?,
                backgroundColor: Colors.transparent,
                resizeToAvoidBottomInset: false,
                body: Stack(children: <Widget>[
                  Center(
                      child: new Container(
                          child: SafeArea(
                              child: new SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: new Container(
                            child: Row(
                              children: <Widget>[
                                Spacer(),
                                Column(
                                  children: [
                                    InkWell(onTap: () {
                                      if (saveSlotOne == null ||
                                          saveSlotOne!.isEmpty) {
                                        setState(() {
                                          saveSlotOne = widget.route;
                                          saveSlotOneState(widget.route);
                                          DateTime now = DateTime.now();
                                          String dateFormat =
                                              DateFormat("dd-MM-yyyy HH:mm:ss")
                                                  .format(now);
                                          saveSlotOneDateState(
                                              "$dateFormat".toString());
                                          saveSlotOneDate =
                                              "$dateFormat".toString();
                                        });
                                      } else {
                                        showAlertDialog(context);
                                      }
                                    }, child: Builder(builder: (context) {
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
                                    })),
                                    // GetSave(
                                    //   getRoute: widget.route,
                                    //   getRouteName: "saveSlotOne",
                                    //   callbackSave: this.callbackSave,
                                    // ),
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
                                        //String _route = widget.route;
                                        return Text(
                                          "\nSAVED\n$saveSlotOneDate\n",
                                          // +
                                          //     "Chapter: " +
                                          //     _route.replaceAll(
                                          //         new RegExp(r'[^\w\s]+'), ''),
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
                                              LoadButton(
                                                getSlot: saveSlotOne,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              DeleteButton(
                                                saveSlot: saveSlotOne,
                                                saveSlotName: "saveSlotOne",
                                                callback: this.callback,
                                              ),
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
                                          setState(() {
                                            saveSlot2 = widget.route;
                                            saveSlot2State(widget.route);
                                            DateTime now = DateTime.now();
                                            String dateFormat = DateFormat(
                                                    "dd-MM-yyyy HH:mm:ss")
                                                .format(now);
                                            saveSlot2DateState(
                                                "$dateFormat".toString());
                                            saveSlot2Date =
                                                "$dateFormat".toString();
                                            //print(saveSlot2);
                                          });
                                        } else {
                                          showAlertDialog2(context);
                                        }
                                      },
                                      child: Builder(builder: (context) {
                                        if (saveSlot2 == null ||
                                            saveSlot2!.isEmpty) {
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
                                              LoadButton(
                                                getSlot: saveSlot2,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              DeleteButton(
                                                saveSlot: saveSlot2,
                                                saveSlotName: "saveSlot2",
                                                callback: this.callback,
                                              ),
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
                                    InkWell(onTap: () {
                                      if (saveSlot3 == null ||
                                          saveSlot3!.isEmpty) {
                                        setState(() {
                                          saveSlot3 = widget.route;
                                          saveSlot3State(widget.route);
                                          DateTime now = DateTime.now();
                                          String dateFormat =
                                              DateFormat("dd-MM-yyyy HH:mm:ss")
                                                  .format(now);
                                          saveSlot3DateState(
                                              "$dateFormat".toString());
                                          saveSlot3Date =
                                              "$dateFormat".toString();
                                          // print(saveSlot3);
                                        });
                                      } else {
                                        showAlertDialog3(context);
                                      }
                                    }, child: Builder(builder: (context) {
                                      if (saveSlot3 == null ||
                                          saveSlot3!.isEmpty) {
                                        return ChibiNeutral(
                                          chibiImg: "Chibi_Tomiichi",
                                        );
                                      } else {
                                        return ChibiHappy(
                                          chibiImg: "Chibi_Tomiichi",
                                        );
                                      }
                                    })),
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
                                              LoadButton(
                                                getSlot: saveSlot3,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              DeleteButton(
                                                saveSlot: saveSlot3,
                                                saveSlotName: "saveSlot3",
                                                callback: this.callback,
                                              ),
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
              ),
            ),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              colorFilter: new ColorFilter.mode(
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
                  title: Text("SAVE GAME"),
                ),
                backgroundColor: Colors.transparent,
                resizeToAvoidBottomInset: false,
                body: Stack(children: <Widget>[
                  Center(
                      child: new Container(
                          child: SafeArea(
                              child: new SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: new Container(
                            child: Row(
                              children: <Widget>[
                                Spacer(),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        if (saveSlotOne == null ||
                                            saveSlotOne!.isEmpty) {
                                          setState(() {
                                            saveSlotOne = widget.route;
                                            saveSlotOneState(widget.route);
                                            DateTime now = DateTime.now();
                                            String dateFormat = DateFormat(
                                                    "dd-MM-yyyy HH:mm:ss")
                                                .format(now);
                                            saveSlotOneDateState(
                                                "$dateFormat".toString());
                                            saveSlotOneDate =
                                                "$dateFormat".toString();
                                            //print(saveSlotOne);
                                          });
                                        } else {
                                          showAlertDialog(context);
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
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.white,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 20,
                                                            horizontal: 30)),
                                                onPressed: () {
                                                  if (saveSlotOne == null ||
                                                      saveSlotOne!.isEmpty) {
                                                    //print("EMPTY");
                                                  } else {
                                                    Navigator.of(context)
                                                        .pushNamed(
                                                            '$saveSlotOne');
                                                  }
                                                },
                                                child: Text(
                                                  "LOAD SAVE",
                                                  style: TextStyle(
                                                      fontFamily: "Mali",
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              InkWell(
                                                  onTap: () async {
                                                    SharedPreferences prefs =
                                                        await SharedPreferences
                                                            .getInstance();

                                                    setState(() {
                                                      prefs.remove(
                                                          "saveSlotOne");
                                                      saveSlotOne = null;
                                                    });
                                                  },
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
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
                                          setState(() {
                                            saveSlot2 = widget.route;
                                            saveSlot2State(widget.route);
                                            DateTime now = DateTime.now();
                                            String dateFormat = DateFormat(
                                                    "dd-MM-yyyy HH:mm:ss")
                                                .format(now);
                                            saveSlot2DateState(
                                                "$dateFormat".toString());
                                            saveSlot2Date =
                                                "$dateFormat".toString();
                                            //print(saveSlot2);
                                          });
                                        } else {
                                          showAlertDialog2(context);
                                        }
                                      },
                                      child: Builder(builder: (context) {
                                        if (saveSlot2 == null ||
                                            saveSlot2!.isEmpty) {
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
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.white,
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 20,
                                                                  horizontal:
                                                                      30)),
                                                  onPressed: () {
                                                    if (saveSlot2 == null ||
                                                        saveSlot2!.isEmpty) {
                                                      //print("EMPTY");
                                                    } else {
                                                      Navigator.of(context)
                                                          .pushNamed(
                                                              '$saveSlot2');
                                                    }
                                                  },
                                                  child: Text(
                                                    "LOAD SAVE",
                                                    style: TextStyle(
                                                        fontFamily: "Mali",
                                                        color: Colors.black,
                                                        fontSize: 18),
                                                  )),
                                              SizedBox(
                                                height: 10,
                                              ),
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
                                                    padding:
                                                        EdgeInsets.symmetric(
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
                                    InkWell(onTap: () {
                                      if (saveSlot3 == null ||
                                          saveSlot3!.isEmpty) {
                                        setState(() {
                                          saveSlot3 = widget.route;
                                          saveSlot3State(widget.route);
                                          DateTime now = DateTime.now();
                                          String dateFormat =
                                              DateFormat("dd-MM-yyyy HH:mm:ss")
                                                  .format(now);
                                          saveSlot3DateState(
                                              "$dateFormat".toString());
                                          saveSlot3Date =
                                              "$dateFormat".toString();
                                          // print(saveSlot3);
                                        });
                                      } else {
                                        showAlertDialog3(context);
                                      }
                                    }, child: Builder(builder: (context) {
                                      if (saveSlot3 == null ||
                                          saveSlot3!.isEmpty) {
                                        return ChibiNeutral(
                                          chibiImg: "Chibi_Tomiichi",
                                        );
                                      } else {
                                        return ChibiHappy(
                                          chibiImg: "Chibi_Tomiichi",
                                        );
                                      }
                                    })),
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
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.white,
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 20,
                                                                  horizontal:
                                                                      30)),
                                                  onPressed: () {
                                                    if (saveSlot3 == null ||
                                                        saveSlot3!.isEmpty) {
                                                      //print("EMPTY");
                                                    } else {
                                                      Navigator.of(context)
                                                          .pushNamed(
                                                              '$saveSlot3');
                                                    }
                                                  },
                                                  child: Text(
                                                    "LOAD SAVE",
                                                    style: TextStyle(
                                                        fontFamily: "Mali",
                                                        color: Colors.black,
                                                        fontSize: 18),
                                                  )),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              deleteButton(context, saveSlot3),
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
              ),
            ),
          );
        }
      },
    );
  }

  Widget deleteButton(context, slot) {
    return InkWell(
        onTap: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();

          setState(() {
            print("$slot");
            prefs.remove("$slot");
            slot = null;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.redAccent,
          ),
          child: Text(
            "DELETE SAVE",
            style: TextStyle(
                color: Colors.white, fontFamily: "Mali", fontSize: 20),
          ),
        ));
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    void _getStuff() {
      {
        return setState(() {
          saveSlotOne = widget.route;
          saveSlotOneState(widget.route);
          DateTime now = DateTime.now();
          String dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss").format(now);
          saveSlotOneDateState("$dateFormat".toString());
          saveSlotOneDate = "$dateFormat".toString();
          //print(saveSlotOne);
        });
      }
    }

    Widget continueButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white),
            child: Text(
              "YES",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Mali",
                  fontSize: 18,
                  letterSpacing: .4),
            ),
            onPressed: () {
              Navigator.pop(context);
              _getStuff();
            }),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white, onPrimary: Theme.of(context).primaryColor),
          child: Text(
            "NO",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Mali",
                fontSize: 18,
                letterSpacing: .4),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    Dialog alert = Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 230,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.green),
        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          children: <Widget>[
            Text("Override Save",
                style: TextStyle(
                    fontSize: 30, fontFamily: "Mali", color: Colors.white),
                textAlign: TextAlign.center),
            Text("Are you sure about that?",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: "IndieFlower",
                    color: Colors.white),
                textAlign: TextAlign.center),
            Spacer(),
            continueButton,
          ],
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog2(BuildContext context) {
    // set up the buttons
    void _getStuff() {
      {
        return setState(() {
          saveSlot2 = widget.route;
          saveSlot2State(widget.route);
          DateTime now = DateTime.now();
          String dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss").format(now);
          saveSlot2DateState("$dateFormat".toString());
          saveSlot2Date = "$dateFormat".toString();
          //print(saveSlotOne);
        });
      }
    }

    Widget continueButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white),
            child: Text(
              "YES",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Mali",
                  fontSize: 18,
                  letterSpacing: .4),
            ),
            onPressed: () {
              Navigator.pop(context);
              _getStuff();
            }),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white, onPrimary: Theme.of(context).primaryColor),
          child: Text(
            "NO",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Mali",
                fontSize: 18,
                letterSpacing: .4),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    Dialog alert = Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 230,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.green),
        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          children: <Widget>[
            Text("Override Save",
                style: TextStyle(
                    fontSize: 30, fontFamily: "Mali", color: Colors.white),
                textAlign: TextAlign.center),
            Text("Are you sure about that?",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: "IndieFlower",
                    color: Colors.white),
                textAlign: TextAlign.center),
            Spacer(),
            continueButton,
          ],
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog3(BuildContext context) {
    // set up the buttons
    void _getStuff() {
      {
        return setState(() {
          saveSlot3 = widget.route;
          saveSlot3State(widget.route);
          DateTime now = DateTime.now();
          String dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss").format(now);
          saveSlot3DateState("$dateFormat".toString());
          saveSlot3Date = "$dateFormat".toString();
          //print(saveSlotOne);
        });
      }
    }

    Widget continueButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white),
            child: Text(
              "YES",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Mali",
                  fontSize: 18,
                  letterSpacing: .4),
            ),
            onPressed: () {
              Navigator.pop(context);
              _getStuff();
            }),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white, onPrimary: Theme.of(context).primaryColor),
          child: Text(
            "NO",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Mali",
                fontSize: 18,
                letterSpacing: .4),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    Dialog alert = Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 230,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.green),
        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          children: <Widget>[
            Text("Override Save",
                style: TextStyle(
                    fontSize: 30, fontFamily: "Mali", color: Colors.white),
                textAlign: TextAlign.center),
            Text("Are you sure about that?",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: "IndieFlower",
                    color: Colors.white),
                textAlign: TextAlign.center),
            Spacer(),
            continueButton,
          ],
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
