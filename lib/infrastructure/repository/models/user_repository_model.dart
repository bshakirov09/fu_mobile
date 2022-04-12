
// Created by Muhammed Tolkinov on 12-December-2021

class UserRepositoryModel {
  static String fullName = '';
  static String gender = '';
  static String accessToken = '';
  static String refreshToken = '';
  static bool authStatus = false;

  static void getUserInfo({required Map<dynamic, dynamic> userInfo}) {
    fullName = userInfo['full_name'] ?? '';
    gender = userInfo['gender'] ?? '';
    accessToken = userInfo['tokens']?['access'] ?? '';
    refreshToken = userInfo['tokens']?['refresh'] ?? '';
    authStatus = userInfo['auth_status'] ?? false;
  }
}
