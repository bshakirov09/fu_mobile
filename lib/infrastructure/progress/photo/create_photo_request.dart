// Created by Muhammed Tolkinov on 10-December-2021

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitness_uncensored/domain/core/server_failure.dart';

import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class CreatePhotoRequest {
  Future<Either<String, Map<dynamic, dynamic>>> createPhoto({
    required int front,
    required int side,
    required int back,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
            APIList.createPhoto,
            data: {
              "front": front,
              "back": back,
              "side": side,
            },
            options: Options(
              headers: {
                HttpHeaders.authorizationHeader:
                    "Bearer ${UserRepositoryModel.accessToken}"
              },
              validateStatus: (status) =>
                  status! <= HttpStatus.internalServerError,
            ),
          );

      if (response.statusCode == HttpStatus.created) {
        return right(response.data);
      } else {
        return left(ServerFailure.getFailureMessage(
            error: response.data, statusCode: response.statusCode));
      }
    } catch (e) {
      return left(e.toString());
    }
  }
}
