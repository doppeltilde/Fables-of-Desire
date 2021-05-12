import 'package:fablesofdesire/global/setttings/settings_changers.dart';
import 'package:fablesofdesire/routes/save_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  final player;
  final audioPlayer;
  final route;
  Settings({Key? key, this.player, this.audioPlayer, this.route});

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  void initState() {
    super.initState();
    getVolume();
  }

  double? vol = 1.0;
  getVolume() async {
    vol = await getVolumeState();
    setState(() {});
  }

  saveVolumeState(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble("volValue", value);
  }

  getVolumeState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? vol = prefs.getDouble('volValue');

    return vol;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(1), BlendMode.dstATop),
          image: AssetImage("assets/images/bgs/mininature_003_19201440.jpg"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            appBar: AppBar(
              toolbarOpacity: 1,
              elevation: 0,
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: true,
            ),
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: Stack(children: <Widget>[
              Builder(builder: (context) {
                if (widget.route != "/home") {
                  return Center(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.only(left: 8),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Builder(
                                        builder: (context) {
                                          if (widget.route != "/home") {
                                            return InkWell(
                                              onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SaveGame(
                                                          route: widget.route,
                                                        )),
                                              ),
                                              child: Card(
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2,
                                                  height: 55,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                  ),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color:
                                                          Colors.transparent),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.save,
                                                        size: 35,
                                                      ),
                                                      SizedBox(width: 15),
                                                      Text(
                                                        "SAVE GAME",
                                                        style: TextStyle(
                                                            fontFamily: "Julee",
                                                            fontSize: 28),
                                                      ),
                                                      Spacer(),
                                                      Icon(
                                                        Icons
                                                            .chevron_right_rounded,
                                                        color: Colors.black,
                                                        size: 25,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          } else {
                                            return SizedBox.shrink();
                                          }
                                        },
                                      ),
                                      SizedBox(
                                        height: 55,
                                      ),
                                      Builder(
                                        builder: (context) {
                                          if (widget.route != "/home") {
                                            return GestureDetector(
                                              onTap: () =>
                                                  showAlertDialog(context),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2,
                                                height: 55,
                                                margin: EdgeInsets.symmetric(
                                                  horizontal: 10,
                                                ).copyWith(
                                                  bottom: 20,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 20,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color: Colors.redAccent,
                                                ),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.logout,
                                                      color: Colors.white,
                                                      size: 25,
                                                    ),
                                                    SizedBox(width: 15),
                                                    Text(
                                                      "Go to Main Menu",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                          fontFamily: "Arvo"),
                                                    ),
                                                    Spacer(),
                                                    Icon(
                                                      Icons
                                                          .chevron_right_rounded,
                                                      color: Colors.white,
                                                      size: 25,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          } else {
                                            return SizedBox.shrink();
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: SingleChildScrollView(
                                child: SettingsChangers(
                                  player: widget.player,
                                  audioPlayer: widget.audioPlayer,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return Center(
                      child: Container(
                          width: MediaQuery.of(context).size.width / 1.7,
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: SingleChildScrollView(
                                child: SettingsChangers(
                                  player: widget.player,
                                  audioPlayer: widget.audioPlayer,
                                ),
                              ))));
                }
              })
            ])));
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
            Navigator.of(context).pushNamed("/home");
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
        "Go to Main Menu",
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
