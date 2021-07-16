import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:traningforms/form_user.dart';

class SpHelper {
  SpHelper._();
  static SpHelper spHelper = SpHelper._();
  SharedPreferences sharedPreferences;

  initSharedPrefernces() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  saveUserName(String name) {
    sharedPreferences.setString('name', name);
  }

  getName() {
    sharedPreferences.getString('name');
  }

  saveUser(FormUser formUser) {
    sharedPreferences.setString('formuser', json.encode({...formUser.toMap()}));
  }

  FormUser getUser() {
    String user = sharedPreferences.getString('formuser');
    if (user == null) {
      return null;
    }
    Map userMap = json.decode(user);
    FormUser formUser = FormUser.map(userMap);
    FormUser formuser = formUser;

    return formuser;
  }

  signOut() {
    sharedPreferences.remove('formuser');
  }
}
