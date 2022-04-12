import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitness_uncensored/domain/core/server_failure.dart';
import 'package:fitness_uncensored/infrastructure/common/refresh_token_request.dart';

import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/add_check_weight_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class AddWeightRequest {
  Future<Either<String, AddCheckWeightModel?>> getData() async {
    try {
      final Response response = await getIt.get<Dio>().get(
            APIList.addWeightCheck,
            options: Options(
                headers: {
                  HttpHeaders.authorizationHeader:
                      "Bearer ${UserRepositoryModel.accessToken}"
                },
                validateStatus: (status) =>
                    status! <= HttpStatus.internalServerError),
          );

      if (response.statusCode == HttpStatus.ok) {
        Map<String, dynamic>? data = response.data;
        if (data==null || data.isEmpty) {
          return right(null);
        } else {
          return right(AddCheckWeightModel.fromJson(response.data));
        }
      } else if (response.statusCode == HttpStatus.unauthorized) {
        final bool result = await getIt.get<RefreshTokenRequest>().refresh();

        if (result) {
          return await getData();
        } else {
          return left('');
        }
      } else {
        return left(ServerFailure.getFailureMessage(
            error: response.data, statusCode: response.statusCode));
      }
    } catch (e) {
      return left(e.toString());
    }
  }
}
