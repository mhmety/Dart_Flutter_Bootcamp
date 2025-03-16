import 'package:shared_preferences/shared_preferences.dart';
class SharedPreferencesHelper {
  static const String _usernameKey = 'username';
  static const String _passwordKey = 'password';

  Future<void> setUsername(String username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_usernameKey, username);
  }

  Future<String> getUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_usernameKey) ?? '';
  }

  Future<void> setPassword(String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_passwordKey, password);
  }

  Future<String> getPassword() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_passwordKey) ?? '';
  }
}