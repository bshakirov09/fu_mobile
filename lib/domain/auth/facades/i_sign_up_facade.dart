// Created by Muhammed Tolkinov on 09-December-2021

import 'package:dartz/dartz.dart';

import 'package:fitness_uncensored/infrastructure/repository/models/auth_user_model.dart';

abstract class ISignUpFacade {
  Future<Either<String, Map<String, dynamic>>> verifyEmail({
    required String email,
    required String code,
  });

  Future<Either<String, Unit>> registerUser({
    required AuthUserModel authUserModel,
  });
  Future<Either<String, Unit>> fillProfile({
    required Map<String, dynamic> profileInfo,
  });
}
