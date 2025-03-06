import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _instance;

  /// Returns the SharedPreferences instance, initializing it if necessary.
  static Future<void> Init() async {
    _instance = await SharedPreferences.getInstance();
  }
  static setBool(String key,bool value){
    _instance.setBool(key, value);
  }

  static getBool(String key){
    _instance.getBool(key)??false;
  }
}