import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences _prefs;
  static initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setToken(String token) async {
    _prefs.setString('x-auth-token', token);
  }

  static String get getToken => _prefs.getString('x-auth_token') ?? '';
}

/*   
example
  static Future<void> setEmail(String email) async {
    _prefs.setString("email", email);
  } */ 