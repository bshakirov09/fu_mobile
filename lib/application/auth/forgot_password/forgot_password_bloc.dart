import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/auth/enums/forgot_password_pages.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fitness_uncensored/infrastructure/auth/auth_api.dart';
import 'package:fitness_uncensored/utils/get_it.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc() : super(const _ForgotPasswordState());

  @override
  Stream<ForgotPasswordState> mapEventToState(ForgotPasswordEvent event) async* {
    yield* event.map(
      refreshState: (event) async* {
        yield const _ForgotPasswordState();
      },
      sendVerificationCode: (event) async* {
        yield* _sendVerification(email: event.email);
      },
      verifyCode: _verifyCode,
      resetPassword: _resetPassword,
      resendVerificationCode: (event) async* {
        yield* _sendVerification(needResendCode: true);
      }
    );
  }

  Stream<ForgotPasswordState> _sendVerification({
    String email = '',
    bool needResendCode = false
  }) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      isSentVerificationCode: false,
      isVerifiedCode: false,
      currentPage: needResendCode
        ? ForgotPasswordPages.verifyCode
        : ForgotPasswordPages.sendVerificationCode
    );

    final Either<String, Unit> result = await getIt.get<AuthApi>().sendVerificationCode(
      email: needResendCode ? state.email : email
    );

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: true,
          error: Left(l).value,
        );
      },
      (r) async* {
        yield state.copyWith(
          isLoading: false,
          isSentVerificationCode: true,
          email: needResendCode ? state.email : email,
        );
      },
    );
  }

  Stream<ForgotPasswordState> _verifyCode(_VerifyCode event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      isVerifiedCode: false,
      currentPage: ForgotPasswordPages.verifyCode
    );

    final Either<String, String> result = await getIt.get<AuthApi>().verifyCode(
      email: state.email,
      code: event.code,
    );

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: true,
          error: Left(l).value,
        );
      },
      (r) async* {
        yield state.copyWith(
          isLoading: false,
          isVerifiedCode: true,
          verificationKey: Right(r).value,
        );
      },
    );
  }

  Stream<ForgotPasswordState> _resetPassword(_ResetPassword event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      resetPasswordStatus: false,
      currentPage: ForgotPasswordPages.resetPassword
    );

    final Either<String, Unit> result = await getIt.get<AuthApi>().resetPassword(
      password: event.password,
      confirmPassword: event.confirmPassword,
      verificationKey: state.verificationKey,
    );

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: true,
          error: Left(l).value,
        );
      },
      (r) async* {
        yield state.copyWith(
          isLoading: false,
          resetPasswordStatus: true,
        );
      },
    );
  }
}
