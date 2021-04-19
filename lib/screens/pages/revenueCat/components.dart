import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AppData {
  static final AppData _appData = new AppData._internal();

  bool? isPro;
  String? appUserID = "";
  bool entitlementIsActive = false;

  factory AppData() {
    return _appData;
  }
  AppData._internal();
}

final appData = AppData();

const kColorPrimary = Color(0xff283149);
const kColorPrimaryLight = Color(0xff424B67);
const kColorPrimaryDark = Color(0xff21293E);
const kColorAccent = Colors.blue;
const kColorText = Color(0xffDBEDF3);

var kWelcomeAlertStyle = AlertStyle(
  animationType: AnimationType.grow,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  animationDuration: Duration(milliseconds: 450),
  backgroundColor: kColorPrimaryLight,
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  titleStyle: TextStyle(
    color: kColorText,
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    letterSpacing: 1.5,
  ),
);

TextStyle kSendButtonTextStyle = TextStyle(
  color: kColorText,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

class TopBarAgnosticNoIcon extends StatelessWidget {
  final String? text;

  final TextStyle? style;
  final String? uniqueHeroTag;
  final Widget? child;

  TopBarAgnosticNoIcon({
    this.text,
    this.style,
    this.uniqueHeroTag,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.4,
        title: Text(
          text!,
        ),
      ),
      body: child,
    );
  }
}

// UI Colors
const kColorBar = Colors.black;
const kColorError = Colors.red;
const kColorSuccess = Colors.green;
const kColorNavIcon = Color.fromRGBO(131, 136, 139, 1.0);
const kColorBackground = Color.fromRGBO(30, 28, 33, 1.0);

// Weather Colors
const kWeatherReallyCold = Color.fromRGBO(3, 75, 132, 1);
const kWeatherCold = Color.fromRGBO(0, 39, 96, 1);
const kWeatherCloudy = Color.fromRGBO(51, 0, 58, 1);
const kWeatherSunny = Color.fromRGBO(212, 70, 62, 1);
const kWeatherHot = Color.fromRGBO(181, 0, 58, 1);
const kWeatherReallyHot = Color.fromRGBO(204, 0, 58, 1);

// Text Styles
const kFontSizeSuperSmall = 10.0;
const kFontSizeNormal = 16.0;
const kFontSizeMedium = 18.0;
const kFontSizeLarge = 96.0;

const kDescriptionTextStyle = TextStyle(
  color: kColorText,
  fontWeight: FontWeight.normal,
  fontSize: kFontSizeNormal,
);

const kTitleTextStyle = TextStyle(
  color: kColorText,
  fontWeight: FontWeight.bold,
  fontSize: kFontSizeMedium,
);

// Inputs
const kButtonRadius = 10.0;

const userInputDecoration = InputDecoration(
  fillColor: Colors.black,
  filled: true,
  hintText: 'Enter App User ID',
  hintStyle: TextStyle(color: kColorText),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(kButtonRadius)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 0),
    borderRadius: BorderRadius.all(Radius.circular(kButtonRadius)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(kButtonRadius)),
  ),
);
