import 'package:shared_preferences/shared_preferences.dart';

class sharedPrefs {
  static Future<SharedPreferences> prefs() async => await SharedPreferences.getInstance();

  static Future setString(String key, String value) async => (await prefs()).setString(key, value);
  static Future<String?> getString(String key) async => (await prefs()).getString(key);

  static Future setInt(String key, int value) async => (await prefs()).setInt(key, value);
  static Future<int?> getInt(String key) async => (await prefs()).getInt(key);

  static Future setBool(String key, bool value) async => (await prefs()).setBool(key, value);
  static Future<bool?> getBool(String key) async => (await prefs()).getBool(key);
}

// "nama" = "Dzikri"
// "tgllahir" = "23-3-07"
// "umur" = 15
//
// setString("nama", "Dzikri")
// setString("tgllahir", "23-3-07")
//
// String nama = getString("tgllahir");
// nama=  "23-3-07"