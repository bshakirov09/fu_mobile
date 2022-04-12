// Created by Muhammed Tolkinov on 10-December-2021

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitness_uncensored/domain/auth/enums/social_auth_type.dart';
import 'package:fitness_uncensored/domain/core/server_failure.dart';

import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/services/firebase_service/firebase_service.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class SignInRequests {

  Future<Either<String, Map<String, dynamic>>> signIn({
    required String email,
    required String password,
  }) async {

    try {
      final Response response = await getIt.get<Dio>().post(
        APIList.signIn,
        data: {
          "email": email,
          "password": password,
          "device" : FirebaseService.token,
        },
        options: Options(
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        )
      );

      if (response.statusCode == HttpStatus.ok) {
        return right(response.data);
      }
      else {
        return left(ServerFailure.getFailureMessage(
          error: response.data,
          statusCode: response.statusCode
        ));
      }
    } catch(e) {
      throw left(e.toString());
    }
  }

  Future<Either<String, Map<String, dynamic>>> socialSignIn({
    required String token,
    required SocialAuthType socialAuthType,
  }) async {

    try {

      String url = '';

      switch(socialAuthType) {
        case SocialAuthType.facebook:
          url = APIList.facebookAuth;
          break;
        case SocialAuthType.google:
          url = APIList.googleAuth;
          break;
        case SocialAuthType.apple:
          url = APIList.appleAuth;
          break;
      }

      final Response response = await getIt.get<Dio>().post(
        url,
        options: Options(
          validateStatus: (status) => status! <= HttpStatus.internalServerError
        ),
        data: {
          "auth_token": token,
          "device" : FirebaseService.token,
        },
      );

      if (response.statusCode == HttpStatus.created) {
        return right(response.data);
      }
      else {
        return left(ServerFailure.getFailureMessage(
          error: response.data,
          statusCode: response.statusCode
        ));
      }
    } catch(e) {
      throw left(e.toString());
    }
  }

}
