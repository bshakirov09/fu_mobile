import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fitness_uncensored/infrastructure/change_password/change_password_api.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc() : super(const _ChangePasswordState());

  @override
  Stream<ChangePasswordState> mapEventToState(
      ChangePasswordEvent event) async* {
    yield* event.map(
      changePassword: _changePassword,
    );
  }

  Stream<ChangePasswordState> _changePassword(_ChangePassword event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      isUpdatedPasswordSucces: false,
      error: '',
    );

    final ChangePasswordApi _changePasswordApi = ChangePasswordApi();

    final Either<String, bool> result = await _changePasswordApi.changePassword(
      currentPassword: event.currentPassword,
      newPassword: event.newPassword,
      confirmPassword: event.confirmPassword,
    );

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: true,
          isUpdatedPasswordSucces: false,
          error: Left(l).value,
        );
      },
      (r) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: false,
          isUpdatedPasswordSucces: true,
          error: '',
        );
      },
    );
  }
}
