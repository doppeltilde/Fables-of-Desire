import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveGame extends StatefulWidget {
  final route;
  SaveGame({Key? key, this.route});

  @override
  _LoadGameState createState() => _LoadGameState();
}

class _LoadGameState extends State<SaveGame> {
  @override
  void initState() {
    super.initState();
    getSlot1();
    getSlot2();
    getSlot3();
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

  @override
  Widget build(BuildContext context) {
    print(saveSlotOne);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.6), BlendMode.dstATop),
          image: AssetImage("assets/images/bgs/mininature_003_19201440.jpg"),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
            child: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: true,
              elevation: 0,
              backgroundColor: Colors.transparent),
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: Stack(children: <Widget>[
            new DrawerHeader(
              child: Center(
                child: Text(
                  "SAVE GAME",
                  style: TextStyle(
                      fontSize: 40, fontFamily: "Aleo", color: Colors.white),
                ),
              ),
            ),
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
                                      print(saveSlotOne);
                                    });
                                  } else {
                                    showAlertDialog(context);
                                  }
                                },
                                child: Builder(builder: (context) {
                                  if (saveSlotOne == null ||
                                      saveSlotOne!.isEmpty) {
                                    return Container(
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Theme.of(context).cardColor,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/sprites/Cast/MC_Neutral.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Theme.of(context).cardColor,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/sprites/Cast/MC_Happy.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  }
                                }),
                              ),
                              Builder(builder: (context) {
                                if (saveSlotOne == null ||
                                    saveSlotOne!.isEmpty) {
                                  return Text(
                                    "EMPTY",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "NanumBrush",
                                        fontSize: 35),
                                  );
                                } else {
                                  return Text(
                                    "SAVED",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "NanumBrush",
                                        fontSize: 35),
                                  );
                                }
                              }),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 30)),
                                  onPressed: () {
                                    if (saveSlotOne == null ||
                                        saveSlotOne!.isEmpty) {
                                      print("EMPTY");
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
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.redAccent,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 30)),
                                  onPressed: () async {
                                    SharedPreferences prefs =
                                        await SharedPreferences.getInstance();

                                    setState(() {
                                      prefs.remove("saveSlot2");
                                      saveSlotOne = null;
                                      print(saveSlotOne);
                                    });
                                  },
                                  child: Text(
                                    "DELETE SAVE",
                                    style: TextStyle(
                                        fontFamily: "Aleo",
                                        color: Colors.white,
                                        fontSize: 18),
                                  ))
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
                                      print(saveSlot2);
                                    });
                                  } else {
                                    showAlertDialog2(context);
                                  }
                                },
                                child: Builder(builder: (context) {
                                  if (saveSlot2 == null || saveSlot2!.isEmpty) {
                                    return Container(
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Theme.of(context).cardColor,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/sprites/Cast/MC_Neutral.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Theme.of(context).cardColor,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/sprites/Cast/MC_Happy.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  }
                                }),
                              ),
                              Builder(builder: (context) {
                                if (saveSlot2 == null || saveSlot2!.isEmpty) {
                                  return Text(
                                    "EMPTY",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "NanumBrush",
                                        fontSize: 35),
                                  );
                                } else {
                                  return Text(
                                    "SAVED",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "NanumBrush",
                                        fontSize: 35),
                                  );
                                }
                              }),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 30)),
                                  onPressed: () {
                                    if (saveSlot2 == null ||
                                        saveSlot2!.isEmpty) {
                                      print("EMPTY");
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
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.redAccent,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 30)),
                                  onPressed: () async {
                                    SharedPreferences prefs =
                                        await SharedPreferences.getInstance();

                                    setState(() {
                                      prefs.remove("saveSlot2");
                                      saveSlot2 = null;
                                      print(saveSlot2);
                                    });
                                  },
                                  child: Text(
                                    "DELETE SAVE",
                                    style: TextStyle(
                                        fontFamily: "Aleo",
                                        color: Colors.white,
                                        fontSize: 18),
                                  ))
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (saveSlot3 == null || saveSlot3!.isEmpty) {
                                    setState(() {
                                      saveSlot3 = widget.route;
                                      saveSlot3State(widget.route);
                                      print(saveSlot3);
                                    });
                                  } else {
                                    showAlertDialog3(context);
                                  }
                                },
                                child: Builder(builder: (context) {
                                  if (saveSlot3 == null || saveSlot3!.isEmpty) {
                                    return Container(
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Theme.of(context).cardColor,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/sprites/Cast/MC_Neutral.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Theme.of(context).cardColor,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/sprites/Cast/MC_Happy.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  }
                                }),
                              ),
                              Builder(builder: (context) {
                                if (saveSlot3 == null || saveSlot3!.isEmpty) {
                                  return Text(
                                    "EMPTY",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "NanumBrush",
                                        fontSize: 35),
                                  );
                                } else {
                                  return Text(
                                    "SAVED",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "NanumBrush",
                                        fontSize: 35),
                                  );
                                }
                              }),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 30)),
                                  onPressed: () {
                                    if (saveSlot3 == null ||
                                        saveSlot3!.isEmpty) {
                                      print("EMPTY");
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
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.redAccent,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 30)),
                                  onPressed: () async {
                                    SharedPreferences prefs =
                                        await SharedPreferences.getInstance();

                                    setState(() {
                                      prefs.remove("saveSlot3");
                                      saveSlot3 = null;
                                      print(saveSlot3);
                                    });
                                  },
                                  child: Text(
                                    "DELETE SAVE",
                                    style: TextStyle(
                                        fontFamily: "Aleo",
                                        color: Colors.white,
                                        fontSize: 18),
                                  )),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))))
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
              print(saveSlotOne);
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
              print(saveSlot2);
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
              print(saveSlot3);
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
