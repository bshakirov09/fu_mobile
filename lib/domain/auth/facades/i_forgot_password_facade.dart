// Created by Muhammed Tolkinov on 09-December-2021

import 'package:dartz/dartz.dart';

abstract class IForgotPasswordFacade {

  Future<Either<String, Unit>> sendVerificationCode({
    required String email,
  });

  Future<Either<String, String>> verifyCode({
    required String email,
    required String code,
  });

  Future<Either<String, Unit>> resetPassword({
    required String password,
    required String confirmPassword,
    required String verificationKey,
  });
}
