// Created by Muhammed Tolkinov on 12-December-2021

import 'package:dartz/dartz.dart';

import 'package:fitness_uncensored/domain/user/i_user_facade.dart';
import 'package:fitness_uncensored/domain/user/i_user_local_db_facade.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/profile_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

import 'crud_user_hive_repository_api.dart';
import 'profile_requests.dart';

class UserApi implements IUserLocalDBFacade, IUserFacade {

  @override
  Future<void> clearUserInfoFromLocalDB() async {
    try {
      final CRUDUserHiveRepositoryApi request = CRUDUserHiveRepositoryApi();
      request.deleteUserInfo();
    } catch(_) {}
  }

  @override
  Future<Either<String, Unit>> patchUserInfo({
    required Map<String, dynamic> userInfo,
  }) async {
    try {
      final CRUDUserHiveRepositoryApi request = CRUDUserHiveRepositoryApi();
      request.createUserBox(userInfo: userInfo);
      return right(unit);
    }catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> putUserInfo({
    required String key,
    required value,
  }) async {
    try {
      final CRUDUserHiveRepositoryApi request = CRUDUserHiveRepositoryApi();
      request.updateUserInfo(key: key, value: value);
      return right(unit);
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<void> getUserInfoFromHive() async {
    try {
      final CRUDUserHiveRepositoryApi request = CRUDUserHiveRepositoryApi();
      await request.getUserInfo();
    }catch(_) {}
  }

  @override
  Future<Either<String, ProfileModel>> getUserProfile() async {
    try {
      return getIt.get<ProfileRequests>().getProfile();
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> updateUserInfo({
    required Map<String, dynamic> userInfo,
  }) async {
    try {
      return getIt.get<ProfileRequests>().update(userInfo: userInfo);
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> logout() async {
    try {
      return getIt.get<ProfileRequests>().logout();
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> refreshAccessToken({
    required String token,
  }) async {
    try {
      final CRUDUserHiveRepositoryApi request = CRUDUserHiveRepositoryApi();
      return await request.refreshAccessToken(token: token);
    }catch(e) {
      return left(e.toString());
    }
  }

}
