part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const ChangePasswordState._();

  const factory ChangePasswordState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool isUpdatedPasswordSucces,
    @Default('') String error,
  }) = _ChangePasswordState;
}
