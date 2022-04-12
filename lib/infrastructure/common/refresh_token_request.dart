// Created by Muhammed Tolkinov on 25-December-2021

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/application/app_manager/app_manager_cubit.dart';
import 'package:fitness_uncensored/infrastructure/repository/api_list.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/infrastructure/user/user_api.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

class RefreshTokenRequest {

  Future<bool> refresh() async {
    try {
      final Response response = await getIt.get<Dio>().post(
        APIList.refreshToken,
        data: {
          "refresh": UserRepositoryModel.refreshToken,
        },
      );

      if (response.statusCode == HttpStatus.ok) {
        UserRepositoryModel.accessToken = response.data['access'];
        await getIt.get<UserApi>().refreshAccessToken(token: response.data['access']);
        return true;
      }
      else {
        AppManagerCubit.context.read<AppManagerCubit>().logout();
        return false;
      }
    } catch (e) {
      return false;
    }
  }

}
