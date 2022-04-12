
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fitness_uncensored/utils/get_it.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/infrastructure/user/user_api.dart';

part 'app_manager_state.dart';
part 'app_manager_cubit.freezed.dart';

class AppManagerCubit extends Cubit<AppManagerState> {
  AppManagerCubit() : super(const _AppManagerState());

  static late BuildContext context;

  void logout() {
    
    getIt.get<UserApi>().clearUserInfoFromLocalDB();
    UserRepositoryModel.authStatus = false;

    emit(state.copyWith(logoutUser: true));
  }

  void refresh() => emit(const _AppManagerState());
}
