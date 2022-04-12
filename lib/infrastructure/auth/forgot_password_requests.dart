// Created by Muhammed Tolkinov on 19-December-2021

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:fitness_uncensored/domain/auth/facades/i_forgot_password_facade.dart';
import 'package:fitness_uncensored/domain/core/server_failure.dart';
import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class ForgotPasswordRequests implements IForgotPasswordFacade {

  @override
  Future<Either<String, Unit>> resetPassword({
    required String password,
    required String confirmPassword,
    required String verificationKey,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
        APIList.resetPassword,
        options: Options(
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        ),
        data: {
          "password" : password,
          "confirm_password" : confirmPassword,
          "verification_key" : verificationKey,
        }
      );

      if (response.statusCode == HttpStatus.created) {
        return right(unit);
      }
      else {
        return left(ServerFailure.getFailureMessage(
          error: response.data,
          statusCode: response.statusCode
        ));
      }
    } catch (e) {
      throw left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> sendVerificationCode({
    required String email,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
        APIList.sendVerificationCode,
        options: Options(
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        ),
        data: {
          "email" : email,
        }
      );

      if (response.statusCode == HttpStatus.ok) {
        return right(unit);
      }
      else {
        return left(ServerFailure.getFailureMessage(
          error: response.data,
          statusCode: response.statusCode
        ));
      }
    } catch (e) {
      throw left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> verifyCode({
    required String email,
    required String code
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
        APIList.verifyCode,
        options: Options(
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        ),
        data: {
        "email" : email,
        "code" : code,
        }
      );

      if (response.statusCode == HttpStatus.created) {
        return right(response.data['verification_key']);
      }
      else {
        return left(ServerFailure.getFailureMessage(
          error: response.data,
          statusCode: response.statusCode
        ));
      }
    } catch (e) {
      throw left(e.toString());
    }
  }

}
