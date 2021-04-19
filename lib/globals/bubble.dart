import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

Widget bubble(time) {
  return Bubble(
      color: Color.fromRGBO(212, 234, 244, 1.0),
      child: Text(
        'Starlink\n' + time,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 14.0, color: Colors.black),
      ));
}
