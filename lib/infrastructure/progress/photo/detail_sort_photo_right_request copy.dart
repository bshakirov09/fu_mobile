import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitness_uncensored/domain/core/server_failure.dart';

import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/detail_view_photo_right_model%20copy.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class DetailSortPhotoRightRequest {
  Future<Either<String, DetailViewPhotoRightModel>> detailPhoto({
    required String direction,
    required String currentDate,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
            APIList.detailPhoto,
            data: {
              "direction": direction,
              "current_date": currentDate,
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
      if (response.statusCode == HttpStatus.ok) {
        return right(
          DetailViewPhotoRightModel.fromJson(response.data),
        );
      } else {
        return left(ServerFailure.getFailureMessage(
            error: response.data, statusCode: response.statusCode));
      }
    } catch (e) {
      return left(e.toString());
    }
  }
}
