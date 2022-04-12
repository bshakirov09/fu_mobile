
import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/infrastructure/user/user_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fitness_uncensored/utils/get_it.dart';
import 'package:fitness_uncensored/infrastructure/auth/auth_api.dart';
import 'package:fitness_uncensored/domain/auth/enums/social_auth_type.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const _SignInState());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    yield* event.map(
      signIn: _singIn,
      socialAuth: _socialAuth
    );
  }


  Stream<SignInState> _singIn(_SignIn event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      hasSocialAuthError: false,
      isLoginSuccess: false,
      error: ''
    );

    final Either<String, Map<String, dynamic>> result =
      await getIt.get<AuthApi>().signIn(
        email: event.email,
        password: event.password
      );

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: true,
          isLoginSuccess: false,
          error: Left(l).value,
        );
      },
      (r) async* {
        final Map<String, dynamic> userInfo = Right(r).value;
        userInfo['info']['auth_status'] = true;
        UserRepositoryModel.getUserInfo(userInfo: userInfo['info']);
        getIt.get<UserApi>().patchUserInfo(userInfo: userInfo['info']);

        yield state.copyWith(
          isLoading: false,
          hasError: false,
          isLoginSuccess: true,
          error: '',
        );
      }
    );
  }

  Stream<SignInState> _socialAuth(_SocialAuth event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      hasSocialAuthError: false,
      error: ''
    );

    late Either<String, Map<String, dynamic>> result;
    switch(event.socialAuthType) {
      case SocialAuthType.facebook:
        // TODO: Handle this case.
        break;
      case SocialAuthType.google:
        result = await getIt.get<AuthApi>().googleSignIn();
        break;
      case SocialAuthType.apple:
        result = await getIt.get<AuthApi>().appleSignIn();
        break;
    }

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          hasSocialAuthError: true,
          socialAuthError: Left(l).value,
        );
      },
      (r) async* {
        final Map<String, dynamic> userInfo = {};
        userInfo['info'] = Right(r).value;
        userInfo['info']['auth_status'] = true;
        UserRepositoryModel.getUserInfo(userInfo: userInfo['info']);
        getIt.get<UserApi>().patchUserInfo(userInfo: userInfo['info']);

        yield state.copyWith(
          isLoading: false,
          hasError: false,
          isLoginSuccess: true,
          error: '',
        );
      }
    );
  }
}
