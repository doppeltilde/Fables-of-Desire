import 'package:flutter/material.dart';
import 'dart:ui';

// App ThemeData
class Styles {
  static ThemeData themeData(bool darkMode, BuildContext context) {
    return ThemeData(
      primarySwatch: white,
      primaryColor: darkMode ? Colors.black : Colors.white,
      backgroundColor: darkMode ? Colors.black : Color(0xffF1F5FB),
      indicatorColor: darkMode ? Color(0xff0E1D36) : Color(0xffCBDCF8),
      buttonColor: darkMode ? Color(0xff3B3B3B) : Color(0xffF1F5FB),
      hoverColor: darkMode ? Color(0xff3A3A3B) : Color(0xff4285F4),
      focusColor: darkMode ? Color(0xff0B2512) : Color(0xffA8DAB5),
      bottomAppBarColor: darkMode ? Color(0xFF1c1c1c) : Colors.white,
      disabledColor: Colors.grey,
      highlightColor: darkMode ? Colors.white : Colors.black,
      cardColor: darkMode ? Color(0xFF242424) : Colors.white,
      canvasColor: darkMode ? Colors.black : Colors.grey[50],
      brightness: darkMode ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: darkMode ? ColorScheme.dark() : ColorScheme.light()),
    );
  }
}

final darkTheme = ThemeData(
  primarySwatch: white,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  highlightColor: Colors.white,
  backgroundColor: const Color(0xffF1F5FB),
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.black12,
);

final lightTheme = ThemeData(
  primarySwatch: white,
  primaryColor: Colors.white,
  highlightColor: Colors.black,
  brightness: Brightness.light,
  backgroundColor: const Color(0xffF1F5FB),
  accentColor: Colors.black,
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.white54,
);

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }
}

// Color

final tealColor = Colors.teal;

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);
