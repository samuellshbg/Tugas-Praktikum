import 'package:flutter/material.dart';
import '../themes/app_themes.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = AppThemes.themeA;

  ThemeData get currentTheme => _currentTheme;

  void switchTheme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners();
  }
}
