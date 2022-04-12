
part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {

  const ForgotPasswordEvent._();

  const factory ForgotPasswordEvent.refreshState() = _RefreshState;
  const factory ForgotPasswordEvent.resendVerificationCode() = _ResendVerificationCode;

  const factory ForgotPasswordEvent.sendVerificationCode({
    required String email
  }) = _SendVerificationCode;

  const factory ForgotPasswordEvent.verifyCode({
    required String code,
  }) = _VerifyCode;

  const factory ForgotPasswordEvent.resetPassword({
    required String password,
    required String confirmPassword,
  }) = _ResetPassword;

}
