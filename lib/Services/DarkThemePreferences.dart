import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePreferences {
  static const ThemeStatus = "ThemeStatus";
  setDarkTheme(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(ThemeStatus, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(ThemeStatus) ??
        false; //to activate dark theme we need to put it to true
  }
}
