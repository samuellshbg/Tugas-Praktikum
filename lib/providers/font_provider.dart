import 'package:flutter/material.dart';

class FontProvider with ChangeNotifier {
  String _currentFont = 'Roboto';

  String get currentFont => _currentFont;

  void switchFont(String font) {
    _currentFont = font;
    notifyListeners();
  }
}
