// Created by Muhammed Tolkinov on 12-December-2021

import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/profile_model.dart';

abstract class IUserFacade {
  Future<Either<String, ProfileModel>> getUserProfile();
  Future<Either<String, Unit>> updateUserInfo({
    required Map<String, dynamic> userInfo
  });
  Future<Either<String, Unit>> logout();
}
