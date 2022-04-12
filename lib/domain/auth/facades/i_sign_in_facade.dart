// Created by Muhammed Tolkinov on 09-December-2021

import 'package:dartz/dartz.dart';

abstract class ISignInFacade {
  Future<Either<String, Map<String, dynamic>>> signIn({
    required String email,
    required String password
  });

  Future<Either<String, Map<String, dynamic>>> googleSignIn();

  Future<Either<String, Map<String, dynamic>>> facebookSignIn();

  Future<Either<String, Map<String, dynamic>>> appleSignIn();
}
