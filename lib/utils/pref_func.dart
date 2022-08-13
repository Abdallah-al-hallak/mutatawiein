import 'package:shared_preferences/shared_preferences.dart';

class SharedFunc {
  setToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('', '');
  }
}
