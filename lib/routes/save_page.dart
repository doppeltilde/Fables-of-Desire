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

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(1), BlendMode.dstATop),
          image: AssetImage("assets/images/bgs/mininature_003_19201440.jpg"),
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
                              InkWell(
                                onTap: () {
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
                                      chibiImg: "MC_Happy",
                                    );
                                  } else {
                                    return ChibiHappy(
                                      chibiImg: "MC_Happy",
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
                                        fontFamily: "Aleo",
                                        fontSize: 20),
                                  );
                                } else {
                                  return Text(
                                    "\nSAVED\n$saveSlotOneDate\n",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Aleo",
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
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20,
                                                  horizontal: 30)),
                                          onPressed: () {
                                            if (saveSlotOne == null ||
                                                saveSlotOne!.isEmpty) {
                                              //print("EMPTY");
                                            } else {
                                              Navigator.of(context)
                                                  .pushNamed('$saveSlotOne');
                                            }
                                          },
                                          child: Text(
                                            "LOAD SAVE",
                                            style: TextStyle(
                                                fontFamily: "Aleo",
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextButton(
                                            style: TextButton.styleFrom(
                                                backgroundColor:
                                                    Colors.redAccent,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 20,
                                                    horizontal: 30)),
                                            onPressed: () async {
                                              SharedPreferences prefs =
                                                  await SharedPreferences
                                                      .getInstance();

                                              setState(() {
                                                prefs.remove("saveSlotOne");
                                                saveSlotOne = null;
                                              });
                                            },
                                            child: Text(
                                              "DELETE SAVE",
                                              style: TextStyle(
                                                  fontFamily: "Aleo",
                                                  color: Colors.white,
                                                  fontSize: 15),
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
                                  if (saveSlot2 == null || saveSlot2!.isEmpty) {
                                    setState(() {
                                      saveSlot2 = widget.route;
                                      saveSlot2State(widget.route);
                                      DateTime now = DateTime.now();
                                      String dateFormat =
                                          DateFormat("dd-MM-yyyy HH:mm:ss")
                                              .format(now);
                                      saveSlot2DateState(
                                          "$dateFormat".toString());
                                      saveSlot2Date = "$dateFormat".toString();
                                      //print(saveSlot2);
                                    });
                                  } else {
                                    showAlertDialog2(context);
                                  }
                                },
                                child: Builder(builder: (context) {
                                  if (saveSlot2 == null || saveSlot2!.isEmpty) {
                                    return ChibiNeutral(
                                      chibiImg: "MC_Happy",
                                    );
                                  } else {
                                    return ChibiHappy(
                                      chibiImg: "MC_Happy",
                                    );
                                  }
                                }),
                              ),
                              Builder(builder: (context) {
                                if (saveSlot2 == null || saveSlot2!.isEmpty) {
                                  return Text(
                                    "\nEMPTY",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Aleo",
                                        fontSize: 20),
                                  );
                                } else {
                                  return Text(
                                    "\nSAVED\n$saveSlot2Date\n",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Aleo",
                                        fontSize: 20),
                                  );
                                }
                              }),
                              Builder(
                                builder: (context) {
                                  if (saveSlot2 == null || saveSlot2!.isEmpty) {
                                    return Column(children: [
                                      SizedBox.shrink(),
                                    ]);
                                  } else {
                                    return Column(
                                      children: [
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 20,
                                                    horizontal: 30)),
                                            onPressed: () {
                                              if (saveSlot2 == null ||
                                                  saveSlot2!.isEmpty) {
                                                //print("EMPTY");
                                              } else {
                                                Navigator.of(context)
                                                    .pushNamed('$saveSlot2');
                                              }
                                            },
                                            child: Text(
                                              "LOAD SAVE",
                                              style: TextStyle(
                                                  fontFamily: "Aleo",
                                                  color: Colors.black,
                                                  fontSize: 18),
                                            )),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextButton(
                                            style: TextButton.styleFrom(
                                                backgroundColor:
                                                    Colors.redAccent,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 20,
                                                    horizontal: 30)),
                                            onPressed: () async {
                                              SharedPreferences prefs =
                                                  await SharedPreferences
                                                      .getInstance();

                                              setState(() {
                                                prefs.remove("saveSlot2");
                                                saveSlot2 = null;
                                                //print(saveSlot2);
                                              });
                                            },
                                            child: Text(
                                              "DELETE SAVE",
                                              style: TextStyle(
                                                  fontFamily: "Aleo",
                                                  color: Colors.white,
                                                  fontSize: 15),
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
                                if (saveSlot3 == null || saveSlot3!.isEmpty) {
                                  setState(() {
                                    saveSlot3 = widget.route;
                                    saveSlot3State(widget.route);
                                    DateTime now = DateTime.now();
                                    String dateFormat =
                                        DateFormat("dd-MM-yyyy HH:mm:ss")
                                            .format(now);
                                    saveSlot3DateState(
                                        "$dateFormat".toString());
                                    saveSlot3Date = "$dateFormat".toString();
                                    // print(saveSlot3);
                                  });
                                } else {
                                  showAlertDialog3(context);
                                }
                              }, child: Builder(builder: (context) {
                                if (saveSlot3 == null || saveSlot3!.isEmpty) {
                                  return ChibiNeutral(
                                    chibiImg: "MC_Happy",
                                  );
                                } else {
                                  return ChibiHappy(
                                    chibiImg: "MC_Happy",
                                  );
                                }
                              })),
                              Builder(builder: (context) {
                                if (saveSlot3 == null || saveSlot3!.isEmpty) {
                                  return Text(
                                    "\nEMPTY",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Aleo",
                                        fontSize: 20),
                                  );
                                } else {
                                  return Text(
                                    "\nSAVED\n$saveSlot3Date\n",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Aleo",
                                        fontSize: 20),
                                  );
                                }
                              }),
                              Builder(
                                builder: (context) {
                                  if (saveSlot3 == null || saveSlot3!.isEmpty) {
                                    return Column(children: [
                                      SizedBox.shrink(),
                                    ]);
                                  } else {
                                    return Column(
                                      children: [
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.white,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 20,
                                                    horizontal: 30)),
                                            onPressed: () {
                                              if (saveSlot3 == null ||
                                                  saveSlot3!.isEmpty) {
                                                //print("EMPTY");
                                              } else {
                                                Navigator.of(context)
                                                    .pushNamed('$saveSlot3');
                                              }
                                            },
                                            child: Text(
                                              "LOAD SAVE",
                                              style: TextStyle(
                                                  fontFamily: "Aleo",
                                                  color: Colors.black,
                                                  fontSize: 18),
                                            )),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TextButton(
                                            style: TextButton.styleFrom(
                                                backgroundColor:
                                                    Colors.redAccent,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 20,
                                                    horizontal: 30)),
                                            onPressed: () async {
                                              SharedPreferences prefs =
                                                  await SharedPreferences
                                                      .getInstance();

                                              setState(() {
                                                prefs.remove("saveSlot3");
                                                saveSlot3 = null;
                                                //print(saveSlot3);
                                              });
                                            },
                                            child: Text(
                                              "DELETE SAVE",
                                              style: TextStyle(
                                                  fontFamily: "Aleo",
                                                  color: Colors.white,
                                                  fontSize: 15),
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
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons

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
                fontFamily: "Aleo",
                fontSize: 18,
                letterSpacing: .4),
          ),
          onPressed: () {
            Navigator.pop(context);
            setState(() {
              saveSlotOne = widget.route;
              saveSlotOneState(widget.route);
              DateTime now = DateTime.now();
              String dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss").format(now);
              saveSlotOneDateState("$dateFormat".toString());
              saveSlotOneDate = "$dateFormat".toString();
              //print(saveSlotOne);
            });
          },
        ),
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
                fontFamily: "Aleo",
                fontSize: 18,
                letterSpacing: .4),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.amber,
      title: Text(
        "Override Save",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "Aleo", fontSize: 30, letterSpacing: .2),
      ),
      content: Text(
        "Are you sure about that?",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "Aleo", fontSize: 20, letterSpacing: .4),
      ),
      actions: [
        continueButton,
      ],
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
                fontFamily: "Aleo",
                fontSize: 18,
                letterSpacing: .4),
          ),
          onPressed: () {
            Navigator.pop(context);
            setState(() {
              saveSlot2 = widget.route;
              saveSlot2State(widget.route);
              DateTime now = DateTime.now();
              String dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss").format(now);
              saveSlot2DateState("$dateFormat".toString());
              saveSlot2Date = "$dateFormat".toString();
              //print(saveSlot2);
            });
          },
        ),
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
                fontFamily: "Aleo",
                fontSize: 18,
                letterSpacing: .4),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.amber,
      title: Text(
        "Override Save",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "Aleo", fontSize: 30, letterSpacing: .2),
      ),
      content: Text(
        "Are you sure about that?",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "Aleo", fontSize: 20, letterSpacing: .4),
      ),
      actions: [
        continueButton,
      ],
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
                fontFamily: "Aleo",
                fontSize: 18,
                letterSpacing: .4),
          ),
          onPressed: () {
            Navigator.pop(context);
            setState(() {
              saveSlot3 = widget.route;
              saveSlot3State(widget.route);
              DateTime now = DateTime.now();
              String dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss").format(now);
              saveSlot3DateState("$dateFormat".toString());
              saveSlot3Date = "$dateFormat".toString();
              // print(saveSlot3);
            });
          },
        ),
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
                fontFamily: "Aleo",
                fontSize: 18,
                letterSpacing: .4),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.amber,
      title: Text(
        "Override Save",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "Aleo", fontSize: 30, letterSpacing: .2),
      ),
      content: Text(
        "Are you sure about that?",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "Aleo", fontSize: 20, letterSpacing: .4),
      ),
      actions: [
        continueButton,
      ],
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
