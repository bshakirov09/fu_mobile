import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:fitness_uncensored/domain/core/server_failure.dart';
import 'package:fitness_uncensored/infrastructure/common/refresh_token_request.dart';
import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/workout_splits_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class GetWorkoutSplitsRequest {
  Future<Either<String, List<WorkoutSplitsModel>>> getData({
    required int id,
    required String title,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().get(
        "${APIList.getWorkoutSplits}?workout=$id",
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader:"Bearer ${UserRepositoryModel.accessToken}"
          },
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        ),
      );
      if (response.statusCode == HttpStatus.ok) {
        return right(WorkoutSplitsModel.fetchData(workoutSplits: response.data));
      }
      else if (response.statusCode == HttpStatus.unauthorized) {
        final bool result = await getIt.get<RefreshTokenRequest>().refresh();

        if (result) {
          return await getData(id: id, title: title);
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
