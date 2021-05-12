import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_io/io.dart';

class SFXVolume extends StatefulWidget {
  final player;
  final audioPlayer;
  SFXVolume({Key? key, this.player, this.audioPlayer});
  @override
  _TextSpeedState createState() => new _TextSpeedState();
}

class _TextSpeedState extends State<SFXVolume> {
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
    return Column(children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Card(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              "SFX VOLUME",
              style: TextStyle(fontFamily: "Julee", fontSize: 25),
            ),
          ),
        ),
      ),
      Card(
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
                      Icons.volume_off,
                      size: 35,
                    )
                  : Icon(
                      Icons.volume_up,
                      size: 35,
                    ),
              SizedBox(width: 15),
              Flexible(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.lightGreen,
                    inactiveTrackColor: Colors.grey[300],
                    thumbColor: Colors.green,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                  ),
                  child: Slider(
                    min: 0.0,
                    max: 1.0,
                    value: vol!,
                    onChanged: (volume) {
                      setState(() {
                        if (Platform.isWindows || Platform.isLinux) {
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
      ),
    ]);
  }
}
