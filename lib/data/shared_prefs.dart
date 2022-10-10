import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static Future<SharedPreferences> getPrefs() async => await SharedPreferences.getInstance();

  static Future setInt(String key, int value) async => (await getPrefs()).setInt(key, value);
  static Future<int?> getInt(String key) async => (await getPrefs()).getInt(key);
}