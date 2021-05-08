import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveGame extends StatefulWidget {
  final route;
  SaveGame({Key? key, this.route});

  @override
  _SaveGameState createState() => _SaveGameState();
}

class _SaveGameState extends State<SaveGame> {
  @override
  void initState() {
    super.initState();
    getSlot1();
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

  @override
  Widget build(BuildContext context) {
    print(saveSlotOne);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(0.4), BlendMode.dstATop),
        image: AssetImage("assets/images/bgs/mininature_001_19201440.jpg"),
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
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new DrawerHeader(
                  child: Center(
                    child: Text(
                      "SAVE GAME",
                      style: TextStyle(
                          fontSize: 45,
                          fontFamily: "Aleo",
                          color: Colors.white),
                    ),
                  ),
                ),
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
                                    width: 200,
                                    height: 200,
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
                                    width: 200,
                                    height: 200,
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
                              if (saveSlotOne == null || saveSlotOne!.isEmpty) {
                                return Text(
                                  "EMPTY",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "NanumBrush",
                                      fontSize: 22),
                                );
                              } else {
                                return Text(
                                  "SAVED",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "NanumBrush",
                                      fontSize: 22),
                                );
                              }
                            }),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            InkWell(
                              onTap: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();

                                setState(() {
                                  prefs.remove("saveSlotOne");
                                  saveSlotOne = null;
                                  print(saveSlotOne);
                                });
                              },
                              child: Container(
                                width: 200,
                                height: 200,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Theme.of(context).cardColor,
                                ),
                              ),
                            ),
                            Text("HI"),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            InkWell(
                              onTap: () => print("HI"),
                              child: Container(
                                width: 200,
                                height: 200,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Theme.of(context).cardColor,
                                ),
                              ),
                            ),
                            Text("HI"),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
}
