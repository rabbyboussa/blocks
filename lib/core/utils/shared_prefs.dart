import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences? _prefs;

  factory SharedPrefs() => SharedPrefs._internal();

  SharedPrefs._internal();

  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  bool? get authenticated => _prefs?.getBool('authenticated');
}
