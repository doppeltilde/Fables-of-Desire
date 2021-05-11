import 'package:easy_localization/easy_localization.dart';
import 'package:fablesofdesire/global/setttings/text_speed.dart';
import 'package:fablesofdesire/routes/save_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_io/io.dart';

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
            image: AssetImage("assets/images/bgs/mininature_001_19201440.jpg"),
            fit: BoxFit.cover,
          ),
        ),
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
              Center(
                child: new Container(
                  child: SafeArea(
                    child: new SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          LayoutBuilder(
                            builder: (context, constraints) {
                              if (constraints.maxWidth > 1200) {
                                return Card(
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
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
                                          "MUSIC VOLUME",
                                          style: TextStyle(
                                              fontFamily: "Julee",
                                              fontSize: 28),
                                        ),
                                        Spacer(),
                                        Flexible(
                                          child: SliderTheme(
                                            data: SliderTheme.of(context)
                                                .copyWith(
                                              activeTrackColor:
                                                  Colors.lightGreen,
                                              inactiveTrackColor:
                                                  Colors.grey[300],
                                              thumbColor: Colors.green,
                                              thumbShape: RoundSliderThumbShape(
                                                  enabledThumbRadius: 12.0),
                                              overlayShape:
                                                  RoundSliderOverlayShape(
                                                      overlayRadius: 0.0),
                                            ),
                                            child: Slider(
                                              min: 0.0,
                                              max: 1.0,
                                              value: vol!,
                                              onChanged: (volume) {
                                                setState(() {
                                                  if (Platform.isWindows ||
                                                      Platform.isLinux) {
                                                    widget.player
                                                        ?.setVolume(volume);
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
                                          borderRadius:
                                              BorderRadius.circular(30),
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
                                            "MUSIC VOLUME",
                                            style: TextStyle(
                                                fontFamily: "Julee",
                                                fontSize: 25),
                                          ),
                                          Spacer(),
                                          Flexible(
                                            child: SliderTheme(
                                              data: SliderTheme.of(context)
                                                  .copyWith(
                                                activeTrackColor:
                                                    Colors.lightGreen,
                                                inactiveTrackColor:
                                                    Colors.grey[300],
                                                thumbColor: Colors.green,
                                                thumbShape:
                                                    RoundSliderThumbShape(
                                                        enabledThumbRadius:
                                                            12.0),
                                                overlayShape:
                                                    RoundSliderOverlayShape(
                                                        overlayRadius: 0.0),
                                              ),
                                              child: Slider(
                                                min: 0.0,
                                                max: 1.0,
                                                value: vol!,
                                                onChanged: (volume) {
                                                  setState(() {
                                                    if (Platform.isWindows ||
                                                        Platform.isLinux) {
                                                      widget.player
                                                          ?.setVolume(volume);
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
                                          Icons.voice_over_off,
                                          size: 35,
                                        )
                                      : Icon(
                                          Icons.record_voice_over,
                                          size: 35,
                                        ),
                                  SizedBox(width: 15),
                                  Text(
                                    "VOICE VOLUME",
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
                          TextSpeed(),
                          SizedBox(
                            height: 55,
                          ),
                          Builder(
                            builder: (context) {
                              if (widget.route != "/home") {
                                return InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SaveGame(
                                              route: widget.route,
                                            )),
                                  ),
                                  child: Card(
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      height: 55,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.transparent),
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
                                            Icons.chevron_right_rounded,
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
                                  onTap: () => showAlertDialog(context),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2,
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
              ),
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
