import 'package:flutter/material.dart';

Future<bool> getOnWillPop(context) {
  return messenger(context);
}

messenger(context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Sorry, you cant go back.'),
      action: SnackBarAction(
          label: 'OKAY',
          onPressed: ScaffoldMessenger.of(context).hideCurrentSnackBar),
    ),
  );
}
