import 'package:fablesofdesire/global/setttings/bgm_volume.dart';
import 'package:fablesofdesire/global/setttings/sfx_volume.dart';
import 'package:fablesofdesire/global/setttings/text_speed.dart';
import 'package:fablesofdesire/global/setttings/voice_volume.dart';
import 'package:flutter/material.dart';

class SettingsChangers extends StatefulWidget {
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
        BGMVolume(),
        Divider(),
        VoiceVolume(),
        Divider(),
        SFXVolume(),
        Divider(),
        TextSpeed(),
      ],
    );
  }
}
