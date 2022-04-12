import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:fitness_uncensored/domain/core/server_failure.dart';
import 'package:fitness_uncensored/infrastructure/common/refresh_token_request.dart';
import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_day_detail_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class GetWorkoutDayDetailRequest {
  Future<Either<String, WorkoutDayDetailModel>> getData({
    required int id,
    required int week,
    required int day,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().get(
            "${APIList.getWorkoutDayDetail}$id/",
            options: Options(
                headers: {
                  HttpHeaders.authorizationHeader:
                      "Bearer ${UserRepositoryModel.accessToken}"
                },
                validateStatus: (status) =>
                    status! <= HttpStatus.internalServerError),
          );
      if (response.statusCode == HttpStatus.ok) {
        return right(WorkoutDayDetailModel.fromJson(response.data));
      } else if (response.statusCode == HttpStatus.unauthorized) {
        final bool result = await getIt.get<RefreshTokenRequest>().refresh();

        if (result) {
          return await getData(id: id, week: week, day: day);
        } else {
          return left('');
        }
      } else {
        return left(ServerFailure.getFailureMessage(
            error: response.data, statusCode: response.statusCode));
      }
    } catch (e) {
      throw left(e.toString());
    }
  }
}
