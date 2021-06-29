
import 'package:fablesofdesire/global/audio/global_audio.dart';
import 'package:fablesofdesire/global/globals.dart';
import 'package:fablesofdesire/global/settings/settings_changers.dart';
import 'package:fablesofdesire/routes/save_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_platform/universal_platform.dart';

class Settings extends StatefulWidget {
  final route;
  Settings({Key? key, this.route});

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
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(1), BlendMode.dstATop),
        image: AssetImage("assets/images/bgs/mininature_003_19201440.jpg"),
        fit: BoxFit.cover,
      )),
      child: Builder(
        builder: (context) {
          if (UniversalPlatform.isMacOS ||
              UniversalPlatform.isWindows ||
              UniversalPlatform.isLinux ||
              UniversalPlatform.isWeb) {
            return Scaffold(
              appBar: appbar(context, "SETTINGS") as PreferredSizeWidget?,
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.transparent,
              body: Stack(
                children: <Widget>[
                  Builder(
                    builder: (context) {
                      if (widget.route != "/home") {
                        return Center(
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: SafeArea(
                                child: Row(
                                  children: <Widget>[
                                    Flexible(
                                      child: SingleChildScrollView(
                                        child: SettingsChangers(),
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 15),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: <Widget>[
                                              Builder(
                                                builder: (context) {
                                                  if (widget.route != "/home") {
                                                    return InkWell(
                                                      onTap: () =>
                                                          Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              SaveGame(
                                                            route: widget.route,
                                                          ),
                                                        ),
                                                      ),
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            2,
                                                        height: 55,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 20,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          color: Colors.white
                                                              .withOpacity(0.8),
                                                        ),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Image.asset(
                                                                "assets/images/gui/savehover.png"),
                                                            SizedBox(width: 15),
                                                            Text(
                                                              "SAVE GAME",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "Mali",
                                                                  fontSize: 28),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .arrow_forward,
                                                              color:
                                                                  Colors.black,
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
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  if (widget.route != "/home") {
                                                    return InkWell(
                                                      onTap: () =>
                                                          showAlertDialog(
                                                              context),
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            2,
                                                        height: 55,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 20,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          color: Colors.red,
                                                        ),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Image.asset(
                                                                "assets/images/gui/full.png"),
                                                            SizedBox(width: 15),
                                                            Text(
                                                              "Go to Main Menu",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      "Mali",
                                                                  fontSize: 28),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .arrow_forward,
                                                              color:
                                                                  Colors.white,
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Center(
                            child: Container(
                                width: MediaQuery.of(context).size.width / 1.7,
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: SingleChildScrollView(
                                      child: SettingsChangers(),
                                    ))));
                      }
                    },
                  ),
                  backbutton(context),
                ],
              ),
            );
          } else {
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                centerTitle: true,
                backgroundColor: Colors.green,
                title: Text("SETTINGS"),
              ),
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.transparent,
              body: Stack(
                children: <Widget>[
                  Builder(
                    builder: (context) {
                      if (widget.route != "/home") {
                        return Center(
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: SafeArea(
                                child: Row(
                                  children: <Widget>[
                                    Flexible(
                                      child: SingleChildScrollView(
                                        child: SettingsChangers(),
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 15),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: <Widget>[
                                              Builder(
                                                builder: (context) {
                                                  if (widget.route != "/home") {
                                                    return InkWell(
                                                      onTap: () =>
                                                          Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              SaveGame(
                                                            route: widget.route,
                                                          ),
                                                        ),
                                                      ),
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            2,
                                                        height: 55,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 20,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          color: Colors.white
                                                              .withOpacity(0.7),
                                                        ),
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
                                                                  fontFamily:
                                                                      "Mali",
                                                                  fontSize: 28),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .chevron_right_rounded,
                                                              color:
                                                                  Colors.black,
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
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  if (widget.route != "/home") {
                                                    return InkWell(
                                                      onTap: () =>
                                                          showAlertDialog(
                                                              context),
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            2,
                                                        height: 55,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          horizontal: 20,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          color: Colors.red,
                                                        ),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Icon(
                                                              Icons.restart_alt,
                                                              color:
                                                                  Colors.white,
                                                              size: 35,
                                                            ),
                                                            SizedBox(width: 15),
                                                            Text(
                                                              "Go to Main Menu",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      "Mali",
                                                                  fontSize: 28),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .chevron_right_rounded,
                                                              color:
                                                                  Colors.white,
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Center(
                            child: Container(
                                width: MediaQuery.of(context).size.width / 1.7,
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: SingleChildScrollView(
                                      child: SettingsChangers(),
                                    ))));
                      }
                    },
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  showAlertDialog(BuildContext context) {
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
                fontSize: 22,
                letterSpacing: .4),
          ),
          onPressed: () {
            GlobalAudio.playAudio.stopAudio();
            Navigator.of(context).pushNamed("/home");
          },
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Theme.of(context).primaryColor,
          ),
          child: Text(
            "NO",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Aleo",
                fontSize: 22,
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
            Text("Go to Main Menu",
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
