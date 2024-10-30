import 'package:flutter/material.dart';
import 'package:financial_tracker/themes/lightMode.dart';
import 'package:financial_tracker/themes/darkMode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themedata => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themedata) {
    _themeData = themedata;

    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
  }
}
