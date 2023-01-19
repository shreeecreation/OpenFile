import 'package:flutter/material.dart';

import 'appbartheme.dart';

class AppTheme {
  static ThemeData themeData() {
    return ThemeData(brightness: Brightness.light, appBarTheme: appBarThemes(), fontFamily: "latoregular");
  }
}
