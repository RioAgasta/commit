import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  Future<SharedPreferences> getPrefs() async => await SharedPreferences.getInstance();

  Future setInt(String key, int value) async => (await getPrefs()).setInt(key, value);
  Future<int?> getInt(String key) async => (await getPrefs()).getInt(key);
}