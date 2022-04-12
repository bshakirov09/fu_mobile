// Created by Muhammed Tolkinov on 14-December-2021

import 'package:dartz/dartz.dart';

abstract class IUserLocalDBFacade {
  Future<void> getUserInfoFromHive();
  Future<Either<String, Unit>> patchUserInfo({
    required Map<String, dynamic> userInfo
  });
  Future<Either<String, Unit>> putUserInfo({
    required String key,
    required var value,
  });
  Future<Either<String, Unit>> refreshAccessToken({
    required String token,
  });
  Future<void> clearUserInfoFromLocalDB();
}
