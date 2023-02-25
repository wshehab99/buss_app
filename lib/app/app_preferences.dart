import 'package:buss_app/app/app_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;
  AppPreferences(this._sharedPreferences);
  Future<bool> setUserType(String value) {
    return _sharedPreferences.setString(AppConstants.userTypeKey, value);
  }

  String getUserType() {
    return _sharedPreferences.getString(AppConstants.userTypeKey) ??
        AppConstants.empty;
  }
}
