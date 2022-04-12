// Created by Muhammed Tolkinov on 10-December-2021

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../infrastructure/common/refresh_token_request.dart';
import '../infrastructure/workout/workout_api.dart';
import '../infrastructure/blog/blog_api.dart';
import '../infrastructure/user/profile_requests.dart';
import '../infrastructure/auth/forgot_password_requests.dart';
import '../infrastructure/auth/sign_up_requests.dart';
import '../infrastructure/user/user_api.dart';
import '../infrastructure/recipes/recipes_api.dart';
import '../infrastructure/auth/auth_api.dart';
import '../infrastructure/progress/jounal/journal_api.dart';
import '../infrastructure/progress/photo/photo_api.dart';

final GetIt getIt = GetIt.instance;

void setupGetIt() {
  // App APIs
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerLazySingleton<UserApi>(() => UserApi());
  getIt.registerLazySingleton<ProfileRequests>(() => ProfileRequests());
  getIt.registerLazySingleton<AuthApi>(() => AuthApi());
  getIt.registerLazySingleton<ForgotPasswordRequests>(() => ForgotPasswordRequests());
  getIt.registerLazySingleton<SignUpRequests>(() => SignUpRequests());
  getIt.registerLazySingleton<RecipesApi>(() => RecipesApi());
  getIt.registerLazySingleton<BlogApi>(() => BlogApi());
  getIt.registerLazySingleton<WorkoutApi>(() => WorkoutApi());
  getIt.registerLazySingleton<RefreshTokenRequest>(() => RefreshTokenRequest());
  getIt.registerLazySingleton<PhotoApi>(() => PhotoApi());
  getIt.registerLazySingleton<JournalApi>(() => JournalApi());
}
