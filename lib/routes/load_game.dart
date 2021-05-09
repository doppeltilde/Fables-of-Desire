import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_io/io.dart';

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
            Builder(builder: (context) {
              if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
                return new DrawerHeader(
                  child: Center(
                    child: Text(
                      "LOAD GAME",
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Aleo",
                          color: Colors.white),
                    ),
                  ),
                );
              } else {
                return SizedBox.shrink();
              }
            }),
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
                                    print("EMPTY");
                                  } else {
                                    Navigator.of(context)
                                        .pushNamed('$saveSlotOne');
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
                                  onPressed: () async {
                                    SharedPreferences prefs =
                                        await SharedPreferences.getInstance();

                                    setState(() {
                                      prefs.remove("saveSlotOne");
                                      saveSlotOne = null;
                                      print(saveSlotOne);
                                    });
                                  },
                                  child: Text(
                                    "DELETE SAVE",
                                    style: TextStyle(
                                        fontFamily: "Aleo",
                                        color: Colors.black),
                                  ))
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (saveSlot2 == null || saveSlot2!.isEmpty) {
                                    print("EMPTY");
                                  } else {
                                    Navigator.of(context)
                                        .pushNamed('$saveSlot2');
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
                                        color: Colors.black),
                                  ))
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (saveSlot3 == null || saveSlot3!.isEmpty) {
                                    print("EMPTY");
                                  } else {
                                    Navigator.of(context)
                                        .pushNamed('$saveSlot3');
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
                                        color: Colors.black),
                                  ))
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
}
