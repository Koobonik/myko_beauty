import 'package:shared_preferences/shared_preferences.dart';

const FAVORITE_URL = "favoriteUrl";

class Util {
  static Future<void> setSharedString(String key, value) async {
    if (key != null && value != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(key, value);
    }
  }

  static Future<String> getSharedString(String key) async {
    if (key != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString(key);
    }
    return null;
  }

  static Future<void> setSharedBool(String key, value) async {
    if (key != null && value != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool(key, value);
    }
  }
  static Future<bool> getSharedBool(String key) async {
    if (key != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getBool(key);
    }
    return null;
  }

  static Future<void> setSharedInt(String key, value) async {
    if (key != null && value != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt(key, value);
    }
  }

  static Future<int> getSharedInt(String key) async {
    if (key != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getInt(key);
    }
    return null;
  }

  static Future<void> addSharedCount(String key) async {
    if (key != null) {
      int a = await Util.getSharedInt(key) ?? 0;
      setSharedInt(key, ++a);
    }
  }

  static void delSharedString(String key) async {
    try {
      if (key != null) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.remove(key);
      }
    } on Exception {
      print('delExceptioni');
    }
  }

  static void allDeleteSharedString() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}