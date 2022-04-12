// Created by Muhammed Tolkinov on 13-December-2021

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:fitness_uncensored/domain/core/server_failure.dart';
import 'package:fitness_uncensored/infrastructure/common/refresh_token_request.dart';
import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/blog_list_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class GetBlogListRequest {
  Future<Either<String, List<BlogListModel>>> getData({
    required int page,
    required String searchTitle,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().get(
        "${APIList.blog}?search=$searchTitle",
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader : "Bearer ${UserRepositoryModel.accessToken}"
          },
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        ),
      );

      if (response.statusCode == HttpStatus.ok) {
        return right(BlogListModel.fetchData(blogList: response.data));
      }
      else if (response.statusCode == HttpStatus.unauthorized) {
        final bool result = await getIt.get<RefreshTokenRequest>().refresh();

        if (result) {
          return await getData(searchTitle: searchTitle, page: page);
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
