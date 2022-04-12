part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const ChangePasswordEvent._();

  const factory ChangePasswordEvent.changePassword({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) = _ChangePassword;
}
