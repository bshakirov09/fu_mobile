// Created by Muhammed Tolkinov on 10-December-2021

import 'package:flutter/material.dart';

import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/infrastructure/user/user_api.dart';
import 'package:fitness_uncensored/presentation/pages/auth/sign_in/sign_in_page.dart';
import 'package:fitness_uncensored/presentation/pages/main/main_page.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

import '../components/error_component.dart';
import '../components/app_loading_component.dart';
import '../styles/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait([
        getIt.get<UserApi>().getUserInfoFromHive(),
      ]),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (UserRepositoryModel.authStatus) {
            return const MainPage();
          }
          else {
            return const SignInPage();
          }
        }
        else if (snapshot.hasError) {
          return Material(
            color: AppColors.white,
            child: ErrorComponent(
              errorMessage: snapshot.error.toString()
            )
          );
        }
        else {
          return const Material(
            color: AppColors.white,
            child: AppLoadingComponent(),
          );
        }
      }
    );
  }
}
