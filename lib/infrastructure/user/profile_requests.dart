// Created by Muhammed Tolkinov on 19-December-2021

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:fitness_uncensored/domain/core/server_failure.dart';
import 'package:fitness_uncensored/infrastructure/common/refresh_token_request.dart';
import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/profile_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/services/firebase_service/firebase_service.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class ProfileRequests {
  Future<Either<String, ProfileModel>> getProfile() async {
    try {
      final Response response = await getIt.get<Dio>().get(
        APIList.getProfile,
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader: "Bearer ${UserRepositoryModel.accessToken}"
          },
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        ),
      );

      if (response.statusCode == HttpStatus.ok) {
        return right(ProfileModel.fromJson(response.data));
      }
      else if (response.statusCode == HttpStatus.unauthorized) {
        final bool result = await getIt.get<RefreshTokenRequest>().refresh();

        if (result) {
          return await getProfile();
        }
        else {
          return left('');
        }
      }
      else {
        throw left('Something went wrong');
      }
    } catch (e) {
      throw left(e.toString());
    }
  }

  Future<Either<String, Unit>> update({
    required Map<String, dynamic> userInfo,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().put(
        APIList.updateUserInfo,
        data: userInfo,
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader: "Bearer ${UserRepositoryModel.accessToken}"
          },
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        )
      );

      if (response.statusCode == HttpStatus.ok) {
        return right(unit);
      }
      else if (response.statusCode == HttpStatus.unauthorized) {
        final bool result = await getIt.get<RefreshTokenRequest>().refresh();

        if (result) {
          return await update(userInfo: userInfo);
        }
        else {
          return left('');
        }
      }
      else {
        throw left('Something went wrong');
      }
    } catch (e) {
      throw left(e.toString());
    }
  }

  Future<Either<String, Unit>> logout() async {
    try {
      final Response response = await getIt.get<Dio>().post(
        APIList.logout,
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader: "Bearer ${UserRepositoryModel.accessToken}"
          },
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        ),
        data: {
          "refresh" : UserRepositoryModel.refreshToken,
          "device" : FirebaseService.token,
        }
      );

      if (response.statusCode == HttpStatus.ok) {
        return right(unit);
      }
      else if (response.statusCode == HttpStatus.unauthorized) {
        final bool result = await getIt.get<RefreshTokenRequest>().refresh();

        if (result) {
          return await logout();
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
      throw left(e.toString());
    }
  }
}
