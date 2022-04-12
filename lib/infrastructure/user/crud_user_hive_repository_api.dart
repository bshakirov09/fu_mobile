// Created by Muhammed Tolkinov on 12-December-2021

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';

import '../repository/models/user_repository_model.dart';

class CRUDUserHiveRepositoryApi {

  Future<void> getUserInfo() async {
    try {
      await Hive.openBox('user_repo');
      final Box userBox = Hive.box('user_repo');

      final Map<dynamic, dynamic> userInfo = userBox.get(
        'info',
        defaultValue: {}
      );

      UserRepositoryModel.getUserInfo(userInfo: userInfo);
    } catch(e) {
      rethrow;
    }
  }

  Future<void> deleteUserInfo() async {
    try {
      await Hive.deleteBoxFromDisk('user_repo');
    } catch(e) {
      rethrow;
    }
  }

  Future<Either<String, Unit>> createUserBox({
    required Map<String, dynamic> userInfo
  }) async {
    try {

      if (await Hive.boxExists('user_repo')) {
        await Hive.openBox('user_repo');
      }

      final Box userBox = Hive.box('user_repo');
      userBox.put('info', userInfo);
      return right(unit);
    } catch(e) {
      throw left(e.toString());
    }
  }

  Future<Either<String, Unit>> updateUserInfo({
    required String key,
    required var value,
  }) async {
    try {
      if (await Hive.boxExists('user_repo')) {
        await Hive.openBox('user_repo');
      }

      final Box userBox = Hive.box('user_repo');
      final Map<dynamic, dynamic> userInfo = userBox.get(
        'info',
        defaultValue: {}
      );

      userInfo[key] = value;
      userBox.put('info', userInfo);

      return right(unit);
    } catch(e) {
      rethrow;
    }
  }

  Future<Either<String, Unit>> refreshAccessToken({
    required String token,
  }) async {
    try {
      if (await Hive.boxExists('user_repo')) {
        await Hive.openBox('user_repo');
      }

      final Box userBox = Hive.box('user_repo');
      final Map<dynamic, dynamic> userInfo = userBox.get(
        'info',
        defaultValue: {}
      );

      userInfo['tokens']?['access'] = token;
      userBox.put('info', userInfo);

      return right(unit);
    } catch(e) {
      rethrow;
    }
  }

}
