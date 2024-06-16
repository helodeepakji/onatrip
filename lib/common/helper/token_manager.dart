import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

import 'local_storage_key_manager.dart';

class TokenManager {
  final SharedPreferences sharedPreferences;

  TokenManager({required this.sharedPreferences});

  Future<bool> saveAccessToken({required String token}) async {
    try {
      log("Access Token Saved", name: "Save Token");
      return await sharedPreferences.setString(LocalStorageKeys.accessToken.asString, token);
    } catch (error) {
      log(error.toString(), name: "Save Token Error");
      return false;
    }
  }

  String? getAccessToken() {
    try {
      final token = sharedPreferences.getString(LocalStorageKeys.accessToken.asString);
      if (token != null) {
        log(token, name: "Access Token");
        return token;
      } else {
        throw "Access Token Not Found!";
      }
    } catch (e) {
      log(e.toString(), name: "Get Token Error");
      return null;
    }
  }

  Future<bool> saveUserRole({required String userRole}) async {
    try {
      log(userRole.toString(), name: "Role Saved");
      return await sharedPreferences.setString(LocalStorageKeys.userRole.asString, userRole);
    } catch (e) {
      log(e.toString(), name: "Save Role Error");
      return false;
    }
  }

  String? getUserRole() {
    try {
      final role = sharedPreferences.getString(LocalStorageKeys.userRole.asString);
      if (role != null) {
        log(role, name: "User Role");
        return role;
      } else {
        throw "User Role Not Found!";
      }
    } catch (e) {
      log(e.toString(), name: "Get Role Error");
      return null;
    }
  }

  Future<bool> clearUserData() async {
    try {
      log("User Data Cleared", name: "Cleared Data");
      return await sharedPreferences.clear();
    } catch (error) {
      log(error.toString());
      return false;
    }
  }

  // Future<String?> getAccessToken() async {
  //   try {
  //     final token = sharedPreferences.getString(LocalStorageKeys.accessToken.asString);
  //     if (token != null) {
  //       final DateTime expiryTime = getTokenExpiryTime(token);
  //       if (expiryTime.isAfter(DateTime.now())) {
  //         log(token, name: "Valid Access token");
  //         return token;
  //       } else {
  //         final refreshTok = await getRefreshToken();
  //         if (refreshTok != null) {
  //           final newToken = await refreshToken(refreshTok);
  //           await saveAccessToken(token: newToken);
  //           log(newToken);
  //           return newToken;
  //         } else {
  //           throw "Auth error: Please try relogin";
  //         }
  //       }
  //     }
  //     return null;
  //   } catch (error) {
  //     log(error.toString());
  //     return null;
  //   }
  // }
}
