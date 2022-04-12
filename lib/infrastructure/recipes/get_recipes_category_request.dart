// Created by Muhammed Tolkinov on 10-December-2021

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:fitness_uncensored/domain/core/server_failure.dart';
import 'package:fitness_uncensored/infrastructure/common/refresh_token_request.dart';
import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

import '../repository/models/recipes_category_model.dart';

class GetRecipesCategoryRequest {
  Future<Either<String, List<RecipesCategoryModel>>> getData({
    required int categoryId,
    required int page,
  }) async {

    try {
      final Response response = await getIt.get<Dio>().get(
        APIList.getRecipesCategory,
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader : "Bearer ${UserRepositoryModel.accessToken}"
          },
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        )
      );

      if (response.statusCode == HttpStatus.ok) {
        return right(RecipesCategoryModel.fetchData(categoryList: response.data));
      }
      else if (response.statusCode == HttpStatus.unauthorized) {
        final bool result = await getIt.get<RefreshTokenRequest>().refresh();

        if (result) {
          return await getData(page: page, categoryId: categoryId);
        }
        else {
          return left('');
        }
      }
      else {
        return left(ServerFailure.getFailureMessage(
          error: response.data,
          statusCode: response.statusCode,
        ));
      }
    } catch(e) {
      throw left(e.toString());
    }
  }
}
