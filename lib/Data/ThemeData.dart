import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkTheme ? Color(0xFF00001a) : Color(0xFFFFFFFF),
      fontFamily: 'Khand',
    );
  }
}
