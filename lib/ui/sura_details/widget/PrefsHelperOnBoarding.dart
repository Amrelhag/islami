import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage{

  static late SharedPreferences preferences;
    static init()async{
     preferences= await SharedPreferences.getInstance();
  }

  Future <bool> setString (String key , String value) async {
     return await preferences.setString(key, value);
  }
Future <bool> setInt (String key , int value) async {
     return await preferences.setInt(key, value);
  }
Future <bool> setBool (String key , bool value) async {
     return await preferences.setBool(key, value);
  }
  bool? getBool (String key ) {
     return
       preferences.getBool(key);
  }
int? getInt (String key ) {
     return
       preferences.getInt(key);
  }
String? getString (String key ) {
     return
       preferences.getString(key);
  }

}