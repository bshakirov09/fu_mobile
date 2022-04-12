// Created by Muhammed Tolkinov on 10-December-2021

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitness_uncensored/domain/core/server_failure.dart';

import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/progress_journal_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class AddJournalRequest {
  Future<Either<String, Unit>> addJournal({
    required ProgressJournalDetailModel progressJournalDetailModel,
  }) async {
    try {
      final Response response = await getIt.get<Dio>().post(
            APIList.addJournal,
            data: progressJournalDetailModel.toJson(),
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
        return right(response.data);
      } else {
        return left(ServerFailure.getFailureMessage(
            error: response.data, statusCode: response.statusCode));
      }
    } catch (e) {
      throw left(e.toString());
    }
  }
}
