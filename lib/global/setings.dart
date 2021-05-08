import 'package:easy_localization/easy_localization.dart';
import 'package:fablesofdesire/global/settings_widget.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {
  final player;
  Settings({Key? key, this.player});

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
              leadingWidth: 25,
              title: InkWell(
                onTap: () => Navigator.pop(context),
                child: Text(
                  "Back",
                  style: TextStyle(
                    fontFamily: "Aleo",
                  ),
                ),
              ),
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
                      tr("game_name"),
                      style: TextStyle(
                          fontSize: 45,
                          fontFamily: "Aleo",
                          color: Colors.white),
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
                            divisions: 4,
                            label: "$vol",
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
                          "CHANGE VOICE",
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
                            divisions: 4,
                            label: "$vol",
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
                          "TEXT SPEED",
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
                            divisions: 4,
                            label: "$vol",
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
                SizedBox(
                  height: 55,
                ),
                ProfileListItem(
                  icon: Icons.face_outlined,
                  text: 'Credits',
                ),
                SizedBox(
                  height: 55,
                ),
                GestureDetector(
                  onTap: () async {
                    const url = 'https://smalldreams.space/privacy-policy/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: ProfileListItem(
                    icon: Icons.privacy_tip_outlined,
                    text: 'Privacy',
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    const url = 'https://smalldreams.space/terms-of-service/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: ProfileListItem(
                    icon: Icons.policy_outlined,
                    text: 'Terms of Service',
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsIngame extends StatefulWidget {
  SettingsIngame({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _SettingsIngameState createState() => _SettingsIngameState();
}

class _SettingsIngameState extends State<SettingsIngame> {
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
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30),
                  Text(
                    tr('game_name'),
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Julee"),
                  ),
                  SizedBox(height: 15),
                  Divider(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width / 2,
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
                      color: Theme.of(context).cardColor,
                    ),
                    child: Row(
                      children: <Widget>[
                        isSwitchedFT!
                            ? Icon(
                                Icons.music_note,
                                size: 25,
                              )
                            : Icon(
                                Icons.music_off,
                                size: 25,
                              ),
                        SizedBox(width: 15),
                        Text(
                          "Music Volume",
                          style: TextStyle(
                            fontFamily: "Aleo",
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Switch.adaptive(
                          value: isSwitchedFT!,
                          onChanged: (bool value) {
                            setState(() {
                              isSwitchedFT!
                                  ? FlameAudio.bgm.pause()
                                  : FlameAudio.bgm.resume();

                              isSwitchedFT = value;
                              saveSwitchState(value);
                              //switch works
                            });
                          },
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width / 2,
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
                      color: Theme.of(context).cardColor,
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_circle_outline,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Game Version",
                          style: TextStyle(
                            fontFamily: "Aleo",
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  // GestureDetector(
                  //   onTap: () async {
                  //     const url = 'https://smalldreams.space/privacy-policy/';
                  //     if (await canLaunch(url)) {
                  //       await launch(url);
                  //     } else {
                  //       throw 'Could not launch $url';
                  //     }
                  //   },
                  //   child: ProfileListItem(
                  //     icon: Icons.privacy_tip_outlined,
                  //     text: 'Privacy',
                  //   ),
                  // ),
                  // GestureDetector(
                  //   onTap: () async {
                  //     const url = 'https://smalldreams.space/terms-of-service/';
                  //     if (await canLaunch(url)) {
                  //       await launch(url);
                  //     } else {
                  //       throw 'Could not launch $url';
                  //     }
                  //   },
                  //   child: ProfileListItem(
                  //     icon: Icons.policy_outlined,
                  //     text: 'Terms of Service',
                  //   ),
                  // ),
                  SizedBox(
                    height: 55,
                  ),
                  GestureDetector(
                    onTap: () => showAlertDialog(context),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
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
          ],
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
            Navigator.of(context).pushReplacementNamed("/home");
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
