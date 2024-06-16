const kUserDataKeyName = "UserData";

enum LocalStorageKeys {
  accessToken,
  userRole,
}

extension LocalStorageKeysExtension on LocalStorageKeys {
  String get asString {
    switch (this) {
      case LocalStorageKeys.accessToken:
        return "accessToken";
      case LocalStorageKeys.userRole:
        return "userRole";
      default:
        return "";
    }
  }
}
