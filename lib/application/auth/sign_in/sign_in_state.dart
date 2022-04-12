part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {

  const SignInState._();

  const factory SignInState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool hasSocialAuthError,
    @Default(false) bool isLoginSuccess,
    @Default('') String error,
    @Default('') String socialAuthError,
  }) = _SignInState;

}
