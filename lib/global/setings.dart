import 'package:easy_localization/easy_localization.dart';
import 'package:fablesofdesire/global/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {
  final player;
  final audioPlayer;
  Settings({Key? key, this.player, this.audioPlayer});

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
                LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 1200) {
                      return Card(
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
                                style: TextStyle(
                                    fontFamily: "Julee", fontSize: 28),
                              ),
                              Spacer(),
                              Flexible(
                                child: SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    activeTrackColor: Colors.lightGreen,
                                    inactiveTrackColor: Colors.grey,
                                    thumbColor: Colors.green,
                                    thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 10.0),
                                    overlayShape: RoundSliderOverlayShape(
                                        overlayRadius: 10.0),
                                  ),
                                  child: Slider.adaptive(
                                    min: 0.0,
                                    max: 1.0,
                                    value: vol!,
                                    onChanged: (volume) {
                                      setState(() {
                                        if (Platform.isWindows ||
                                            Platform.isLinux) {
                                          widget.player?.setVolume(volume);
                                        } else {
                                          widget.audioPlayer?.setVolume(volume);
                                        }

                                        vol = volume;
                                        saveVolumeState(volume);
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Card(
                          child: Container(
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
                                  style: TextStyle(
                                      fontFamily: "Julee", fontSize: 28),
                                ),
                                Spacer(),
                                Flexible(
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      activeTrackColor: Colors.lightGreen,
                                      inactiveTrackColor: Colors.grey,
                                      thumbColor: Colors.green,
                                      thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 10.0),
                                      overlayShape: RoundSliderOverlayShape(
                                          overlayRadius: 10.0),
                                    ),
                                    child: Slider.adaptive(
                                      min: 0.0,
                                      max: 1.0,
                                      value: vol!,
                                      onChanged: (volume) {
                                        setState(() {
                                          if (Platform.isWindows ||
                                              Platform.isLinux) {
                                            widget.player?.setVolume(volume);
                                          } else {
                                            widget.audioPlayer
                                                ?.setVolume(volume);
                                          }

                                          vol = volume;
                                          saveVolumeState(volume);
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  },
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
                        Flexible(
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.lightGreen,
                              inactiveTrackColor: Colors.grey,
                              thumbColor: Colors.green,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 10.0),
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
                        Flexible(
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.lightGreen,
                              inactiveTrackColor: Colors.grey,
                              thumbColor: Colors.green,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 10.0),
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
  final player;
  final audioPlayer;
  SettingsIngame({Key? key, this.player, this.audioPlayer});

  @override
  _SettingsIngameState createState() => _SettingsIngameState();
}

class _SettingsIngameState extends State<SettingsIngame> {
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
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 1200) {
                        return Card(
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
                                  style: TextStyle(
                                      fontFamily: "Julee", fontSize: 28),
                                ),
                                Spacer(),
                                Flexible(
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      activeTrackColor: Colors.lightGreen,
                                      inactiveTrackColor: Colors.grey,
                                      thumbColor: Colors.green,
                                      thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 10.0),
                                      overlayShape: RoundSliderOverlayShape(
                                          overlayRadius: 10.0),
                                    ),
                                    child: Slider.adaptive(
                                      min: 0.0,
                                      max: 1.0,
                                      value: vol!,
                                      onChanged: (volume) {
                                        setState(() {
                                          if (Platform.isWindows ||
                                              Platform.isLinux) {
                                            widget.player?.setVolume(volume);
                                          } else {
                                            widget.audioPlayer
                                                ?.setVolume(volume);
                                          }

                                          vol = volume;
                                          saveVolumeState(volume);
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          child: Card(
                            child: Container(
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
                                    style: TextStyle(
                                        fontFamily: "Julee", fontSize: 28),
                                  ),
                                  Spacer(),
                                  Flexible(
                                    child: SliderTheme(
                                      data: SliderTheme.of(context).copyWith(
                                        activeTrackColor: Colors.lightGreen,
                                        inactiveTrackColor: Colors.grey,
                                        thumbColor: Colors.green,
                                        thumbShape: RoundSliderThumbShape(
                                            enabledThumbRadius: 10.0),
                                        overlayShape: RoundSliderOverlayShape(
                                            overlayRadius: 10.0),
                                      ),
                                      child: Slider.adaptive(
                                        min: 0.0,
                                        max: 1.0,
                                        value: vol!,
                                        onChanged: (volume) {
                                          setState(() {
                                            if (Platform.isWindows ||
                                                Platform.isLinux) {
                                              widget.player?.setVolume(volume);
                                            } else {
                                              widget.audioPlayer
                                                  ?.setVolume(volume);
                                            }

                                            vol = volume;
                                            saveVolumeState(volume);
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    },
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
                          Flexible(
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.lightGreen,
                                inactiveTrackColor: Colors.grey,
                                thumbColor: Colors.green,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 10.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 10.0),
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
                          Flexible(
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.lightGreen,
                                inactiveTrackColor: Colors.grey,
                                thumbColor: Colors.green,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 10.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 10.0),
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
                          ),
                        ],
                      ),
                    ),
                  ),
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
