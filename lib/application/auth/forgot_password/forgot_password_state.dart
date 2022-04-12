part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {

  const ForgotPasswordState._();

  const factory ForgotPasswordState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool isSentVerificationCode,
    @Default(false) bool isVerifiedCode,
    @Default(false) bool resetPasswordStatus,
    @Default('') String error,
    @Default('') String email,
    @Default('') String verificationKey,
    @Default(ForgotPasswordPages.sendVerificationCode) ForgotPasswordPages currentPage,
  }) = _ForgotPasswordState;

}
