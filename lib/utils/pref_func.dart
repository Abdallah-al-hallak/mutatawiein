import 'package:shared_preferences/shared_preferences.dart';

getToken() async {
  return await SharedFunc().getShared('token');
}

class SharedFunc {
  setToken(key, value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(key, value);
  }

  getShared(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? "";
  }
}
