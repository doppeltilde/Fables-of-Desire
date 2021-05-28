import 'package:fablesofdesire/global/setttings/bgm_volume.dart';
import 'package:fablesofdesire/global/setttings/sfx_volume.dart';
import 'package:fablesofdesire/global/setttings/text_speed.dart';
import 'package:fablesofdesire/global/setttings/voice_volume.dart';
import 'package:flutter/material.dart';

class SettingsChangers extends StatefulWidget {
  final player;

  SettingsChangers({Key? key, this.player});
  @override
  _TextSpeedState createState() => new _TextSpeedState();
}

class _TextSpeedState extends State<SettingsChangers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        BGMVolume(
          player: widget.player,
        ),
        Divider(),
        VoiceVolume(
          player: widget.player,
        ),
        Divider(),
        SFXVolume(
          player: widget.player,
        ),
        Divider(),
        TextSpeed(),
      ],
    );
  }
}
