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

  int speed = 50;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: Colors.transparent,
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).cardColor,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            "TEXT SPEED",
            style: TextStyle(fontFamily: "Julee", fontSize: 25),
          ),
        ),
      ),
      Container(
        height: 55,
        padding: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).cardColor,
        ),
        child: Row(
          children: <Widget>[
            Builder(
              builder: (context) {
                if (speed == 0) {
                  return Icon(
                    Icons.pause,
                    size: 35,
                  );
                } else if (speed <= 50) {
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
            SizedBox(
              width: 10,
            ),
            Text(
              "Faster",
              style: TextStyle(fontFamily: "Aleo", fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
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
                  divisions: 10,
                  label: "$speed ms",
                  min: 0,
                  max: 100,
                  value: speed.toDouble(),
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
            SizedBox(
              width: 10,
            ),
            Text(
              "Slower",
              style: TextStyle(fontFamily: "Aleo", fontSize: 16),
            ),
          ],
        ),
      ),
    ]);
  }
}
