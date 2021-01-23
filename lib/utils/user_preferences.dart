import 'dart:convert';

import 'package:login_signup_example/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static SharedPreferences _preferences;

  static const _keyUsers = 'users';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());
    final idUser = user.id;

    await _preferences.setString(idUser, json);
  }

  static User getUser(String idUser) {
    final json = _preferences.getString(idUser);

    return User.fromJson(jsonDecode(json));
  }

  static Future addUsers(User user) async {
    final idUsers = _preferences.getStringList(_keyUsers) ?? <String>[];
    final newIdUsers = List.of(idUsers)..add(user.id);

    await _preferences.setStringList(_keyUsers, newIdUsers);
  }

  static List<User> getUsers() {
    final idUsers = _preferences.getStringList(_keyUsers);

    if (idUsers == null) {
      return <User>[];
    } else {
      return idUsers.map<User>(getUser).toList();
    }
  }
}
