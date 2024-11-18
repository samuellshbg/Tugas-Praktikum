import 'package:flutter/material.dart';

class AppThemes {
  static final themeA = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.black)),
  );

  static final themeB = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.lightGreen[50],
    textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.black)),
  );

  static final themeC = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.purple,
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)),
  );
}
