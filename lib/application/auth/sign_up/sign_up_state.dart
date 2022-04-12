part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {

  const SignUpState._();

  const factory SignUpState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String error,
    @Default(SignUpOnePage()) Widget currentPage,
    @Default(0) int progressIndicatorIndex,
    @Default(AuthPages.signUpOne) AuthPages currentPageEnum,
    @Default('Sign-up') String appBarText,
    @Default(false) bool isCreatedAccount,
  }) = _SignUpState;

}
