import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson_45/practise/models/settings.dart';

class SettingsController with ChangeNotifier {
  Settings settings = Settings(themeMode: ThemeMode.dark);

  void toggleMode(bool isDark) {
    settings.themeMode = isDark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
