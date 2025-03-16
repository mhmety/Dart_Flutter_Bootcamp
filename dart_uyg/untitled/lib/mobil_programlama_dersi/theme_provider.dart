import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkMode = false;

  ThemeProvider() {
    loadTheme();
  }

  ThemeData get currentTheme =>
      isDarkMode ? ThemeData.dark() : ThemeData.light();

  void toggleTheme() async {
    isDarkMode = !isDarkMode;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDarkMode);
  }

  void loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    isDarkMode = prefs.getBool('isDarkMode') ?? false;
    notifyListeners();
  }
}