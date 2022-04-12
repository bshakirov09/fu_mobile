// Created by Muhammed Tolkinov on 09-December-2021

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:fitness_uncensored/domain/core/server_failure.dart';
import 'package:fitness_uncensored/infrastructure/common/refresh_token_request.dart';
import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class ChangePasswordApi {
  Future<Either<String, bool>> changePassword({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
        APIList.changePassword,
        data: {
          "current_password": currentPassword,
          "password": newPassword,
          "confirm_password": confirmPassword,
        },
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader : "Bearer ${UserRepositoryModel.accessToken}"
          },
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        ),
      );

      if (response.statusCode == HttpStatus.created) {
        return right(true);
      }
      else if (response.statusCode == HttpStatus.unauthorized) {
        final bool result = await getIt.get<RefreshTokenRequest>().refresh();

        if (result) {
          return await changePassword(
            confirmPassword: confirmPassword,
            newPassword: newPassword,
            currentPassword: currentPassword,
          );
        }
        else {
          return left('');
        }
      }
      else {
        return left(ServerFailure.getFailureMessage(
          error: response.data,
          statusCode: response.statusCode
        ));
      }
    } catch (e) {
      return left(e.toString());
    }
  }
}
