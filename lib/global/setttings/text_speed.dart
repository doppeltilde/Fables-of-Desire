import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TextSpeed extends StatefulWidget {
  final player;
  TextSpeed({Key? key, this.player});
  @override
  _TextSpeedState createState() => new _TextSpeedState();
}

class _TextSpeedState extends State<TextSpeed> {
  @override
  void initState() {
    super.initState();
    getSpeed();
  }

  getSpeed() async {
    speed = await getSpeedState();
    setState(() {});
  }

  saveSpeedState(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("speedValue", value);
  }

  getSpeedState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? speed = prefs.getInt('speedValue');

    return speed;
  }

  int? speed = 100;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
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
                Builder(
                  builder: (context) {
                    if (speed == 0) {
                      return Icon(
                        Icons.pause,
                        size: 35,
                      );
                    } else if (speed! <= 50) {
                      return Icon(
                        Icons.fast_forward,
                        size: 35,
                      );
                    } else {
                      return Icon(
                        Icons.play_arrow,
                        size: 35,
                      );
                    }
                  },
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
                      inactiveTrackColor: Colors.grey[300],
                      thumbColor: Colors.green,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                    ),
                    child: Slider(
                      divisions: 6,
                      label: "$speed",
                      min: 0,
                      max: 100,
                      value: speed!.toDouble(),
                      onChanged: (fast) {
                        setState(() async {
                          speed = fast.toInt();
                          saveSpeedState(fast.toInt());
                          //saveVolumeState(volume);
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
                  Builder(
                    builder: (context) {
                      if (speed == 0) {
                        return Icon(
                          Icons.pause,
                          size: 35,
                        );
                      } else if (speed! <= 50) {
                        return Icon(
                          Icons.fast_forward,
                          size: 35,
                        );
                      } else {
                        return Icon(
                          Icons.play_arrow,
                          size: 35,
                        );
                      }
                    },
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
                        inactiveTrackColor: Colors.grey[300],
                        thumbColor: Colors.green,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 0.0),
                      ),
                      child: Slider(
                        divisions: 6,
                        label: "$speed",
                        min: 0,
                        max: 100,
                        value: speed!.toDouble(),
                        onChanged: (fast) {
                          setState(() {
                            speed = fast.toInt();
                            saveSpeedState(fast.toInt());
                            //saveVolumeState(volume);
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
    });
  }
}
