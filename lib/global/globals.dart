// Gestures

import 'package:fablesofdesire/global/setings.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_platform/universal_platform.dart';

Widget appbar(context, name) {
  return AppBar(
    toolbarOpacity: 1,
    elevation: 0,
    centerTitle: true,
    title: Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).cardColor,
      ),
      child: Text(
        name,
        style: TextStyle(fontFamily: "Aleo", color: Colors.black),
      ),
    ),
    backgroundColor: Colors.transparent,
    automaticallyImplyLeading: false,
  );
}

Widget backbutton(context) {
  return Align(
    alignment: FractionalOffset.bottomLeft,
    child: Row(children: [
      Padding(
        padding: EdgeInsets.only(bottom: 20, left: 10),
        child: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).cardColor,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_outlined,
                    size: 35,
                    color: Colors.black,
                  ),
                  Text(
                    "RETURN",
                    style: TextStyle(fontFamily: "Aleo", fontSize: 24),
                  ),
                ],
              )),
        ),
      ),
    ]),
  );
}

Widget deletebutton(context, saveSlot) {
  return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.redAccent,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          )),
      onPressed: () async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.remove(saveSlot);
        saveSlot = null;
      },
      child: Text(
        "DELETE SAVE",
        style: TextStyle(fontFamily: "Aleo", color: Colors.white, fontSize: 18),
      ));
}

class AllowMultipleGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);
  }
}

class Buttons extends StatelessWidget {
  final route;
  final nextRoute;

  Buttons({Key? key, this.route, this.nextRoute});
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      if (UniversalPlatform.isMacOS ||
          UniversalPlatform.isWindows ||
          UniversalPlatform.isLinux ||
          UniversalPlatform.isWeb) {
        return SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              skipClip(context, nextRoute),
              SizedBox(
                width: 7,
              ),
              SettingsClip(route: route),
            ],
          ),
        );
      } else {
        return SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              skipClip(context, nextRoute),
              SizedBox(
                width: 7,
              ),
              SettingsClip(route: route),
            ],
          ),
        );
      }
    });
  }
}

class SettingsClip extends StatelessWidget {
  final route;

  SettingsClip({Key? key, this.route});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return InkWell(
          onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Settings(
                          route: route,
                        )),
              ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/images/gui/more.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ));
    });
  }
}

dynamic skipClip(context, nextRoute) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: () => showAlertDialog(context, nextRoute),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.all(1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "assets/images/gui/icon_ground_scroll_05.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

showAlertDialog(BuildContext context, nextRoute) {
  // set up the buttons

  Widget continueButton = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white, onPrimary: Theme.of(context).primaryColor),
        child: Text(
          "YES",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Mali",
              fontSize: 18,
              letterSpacing: .4),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(nextRoute);
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

  // set up the AlertDialog
  Dialog alert = Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.all(10),
      child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.green),
          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(
            children: <Widget>[
              Text("Skip Chapter",
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
              // Positioned(
              //     top: -100,
              //     child: Image.asset("https://i.imgur.com/2yaf2wb.png",
              //         width: 150, height: 150))
            ],
          )));
  // AlertDialog alert = AlertDialog(
  //   backgroundColor: Colors.amber,
  //   title: Text(
  //     "CHAPTER SKIP!",
  //     textAlign: TextAlign.center,
  //     style: TextStyle(
  //         fontFamily: "Aleo",
  //         fontSize: 30,
  //         letterSpacing: .2,
  //         color: Colors.black),
  //   ),
  //   content: Text(
  //     "Are you sure about that?",
  //     textAlign: TextAlign.center,
  //     style: TextStyle(
  //         fontFamily: "Aleo",
  //         fontSize: 20,
  //         letterSpacing: .4,
  //         color: Colors.black),
  //   ),
  //   actions: [
  //     continueButton,
  //   ],
  // );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class AppDrawer extends StatefulWidget {
  final player;
  AppDrawer({Key? key, this.player});
  @override
  _AppDrawerState createState() => new _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool? isSwitchedFT = true;
  bool? isNoti = true;
  @override
  void initState() {
    super.initState();
    getSwitchValues();
    getNotiValues();
  }

  getSwitchValues() async {
    isSwitchedFT = await getSwitchState();
    setState(() {});
  }

  Future<bool> saveSwitchState(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("switchState", value);
    return prefs.setBool("switchState", value);
  }

  Future<bool?> getSwitchState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isSwitchedFT = prefs.getBool("switchState");
    print(isSwitchedFT);

    return isSwitchedFT;
  }

  getNotiValues() async {
    isNoti = await getNotiState();
    setState(() {});
  }

  Future<bool> saveNotiState(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("notiState", value);
    return prefs.setBool("notiState", value);
  }

  Future<bool?> getNotiState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isNoti = prefs.getBool("notiState");
    print(isNoti);

    return isNoti;
  }

  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);

    return new Drawer(
        child: Container(
      width: MediaQuery.of(context).size.width / 4,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new DrawerHeader(
              child: Center(
                  child: Text(
                "Fables of Desire",
                style: TextStyle(fontSize: 30, fontFamily: "Aleo"),
              )),
            ),
            Container(
              height: 55,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).cardColor,
              ),
              child: Row(
                children: <Widget>[
                  widget.player?.general.volume == 0
                      ? Icon(
                          Icons.music_off,
                          size: 25,
                        )
                      : Icon(
                          Icons.music_note,
                          size: 25,
                        ),
                  SizedBox(width: 15),
                  Text(
                    "Change Audio",
                  ),
                  Spacer(),
                ],
              ),
            ),
            Slider.adaptive(
              min: 0.0,
              max: 1.0,
              value: widget.player?.general.volume ?? 0.5,
              onChanged: (volume) {
                widget.player?.setVolume(volume);
                this.setState(() {});
              },
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => showAlertDialog(context),
              child: Container(
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
                  borderRadius: BorderRadius.circular(30),
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
                      Icons.chevron_right_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons

    Widget continueButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.black, onPrimary: Theme.of(context).primaryColor),
          child: Text(
            "YES",
            style:
                TextStyle(fontFamily: "Aleo", fontSize: 18, letterSpacing: .4),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/home");
          },
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.black, onPrimary: Theme.of(context).primaryColor),
          child: Text(
            "NO",
            style:
                TextStyle(fontFamily: "Aleo", fontSize: 18, letterSpacing: .4),
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

class AppDrawerMain extends StatefulWidget {
  final player;
  AppDrawerMain({Key? key, this.player});
  @override
  _AppDrawerState2 createState() => new _AppDrawerState2();
}

class _AppDrawerState2 extends State<AppDrawerMain> {
  @override
  void initState() {
    super.initState();
    getVolume();
  }

  double? vol = 0.5;
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
    return new SizedBox(
        child: Drawer(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.lightGreen,
            Colors.green,
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new DrawerHeader(
                child: Center(
                  child: Text(
                    "Fables of Desire",
                    style: TextStyle(
                        fontSize: 45, fontFamily: "Aleo", color: Colors.white),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 55,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.transparent),
                  child: Row(
                    children: <Widget>[
                      vol == 0
                          ? Icon(
                              Icons.music_off,
                              size: 35,
                            )
                          : Icon(
                              Icons.music_note,
                              size: 35,
                            ),
                      SizedBox(width: 15),
                      Text(
                        "CHANGE AUDIO",
                        style: TextStyle(fontFamily: "Julee", fontSize: 28),
                      ),
                      Spacer(),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.lightGreen,
                          inactiveTrackColor: Colors.grey,
                          thumbColor: Colors.green,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 10.0),
                        ),
                        child: Slider.adaptive(
                          min: 0.0,
                          max: 1.0,
                          value: vol!,
                          onChanged: (volume) {
                            setState(() {
                              widget.player?.setVolume(volume);
                              vol = volume;
                              saveVolumeState(volume);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 55,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.transparent),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.face_outlined,
                      size: 35,
                    ),
                    SizedBox(width: 15),
                    Text(
                      "CREDITS",
                      style: TextStyle(fontFamily: "Julee", fontSize: 28),
                    ),
                    Spacer(),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.green,
                        inactiveTrackColor: Colors.red,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 10.0),
                      ),
                      child: Slider.adaptive(
                        min: 0.0,
                        max: 1.0,
                        value: widget.player?.general.volume ?? 0.5,
                        onChanged: (volume) {
                          setState(() {
                            widget.player?.setVolume(volume);
                            vol = volume;
                            saveVolumeState(volume);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    ));
  }
}
