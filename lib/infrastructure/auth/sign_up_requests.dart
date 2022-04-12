// Created by Muhammed Tolkinov on 15-December-2021

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitness_uncensored/domain/core/server_failure.dart';
import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';

import 'package:fitness_uncensored/infrastructure/repository/models/auth_user_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class SignUpRequests {

  Future<Either<String, Unit>> registerUser({
    required AuthUserModel authUserModel
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
        APIList.registerUser,
        options: Options(
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        ),
        data: authUserModel.toJson(),
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
    } catch(e) {
      throw left(e.toString());
    }
  }

  Future<Either<String, Map<String, dynamic>>> verifyEmail({
    required String email,
    required String code,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
        APIList.confirmRegister,
        options: Options(
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        ),
        data: {
          "email": email,
          "code": int.parse(code)
        },
      );

      if (response.statusCode == HttpStatus.created) {
        return right(response.data);
      }
      else {
        return left(ServerFailure.getFailureMessage(
          error: response.data,
          statusCode: response.statusCode
        ));
      }
    } catch(e) {
      throw left(e.toString());
    }
  }

}
