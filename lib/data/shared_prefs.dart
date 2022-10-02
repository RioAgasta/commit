import 'package:shared_preferences/shared_preferences.dart';
import 'dart:core';

class SharedPrefs {
  // Initialize
  static Future<SharedPreferences> getPrefs() async => await SharedPreferences.getInstance();

  // Remove
  static remove(String key) async => (await getPrefs()).remove(key);

  // String
  static Future setString(String key, String value) async => (await getPrefs()).setString(key, value);
  static Future<String?> getString(String key) async => (await getPrefs()).getString(key);

  // Int
  static Future setInt(String key, int value) async => (await getPrefs()).setInt(key, value);
  static Future<int?> getInt(String key) async => (await getPrefs()).getInt(key);

  // Boolean
  static Future setBool(String key, bool value) async => (await getPrefs()).setBool(key, value);
  static Future<bool?> getBool(String key) async => (await getPrefs()).getBool(key);

  // Double
  static Future setDouble(String key, double value) async => (await getPrefs()).setDouble(key, value);
  static Future<double?> getDouble(String key) async => (await getPrefs()).getDouble(key);

  // List
}