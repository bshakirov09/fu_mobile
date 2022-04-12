part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {

  const SignUpEvent._();

  const factory SignUpEvent.getNextPage({
    AuthUserModel? authUserModel
  }) = _GetNextPage;
  const factory SignUpEvent.createAccount() = _CreateAccount;
  const factory SignUpEvent.refreshState() = _RefreshState;
  const factory SignUpEvent.getPreviousPage() = _GetPreviousPage;
  const factory SignUpEvent.verifyEmail({required String code}) = _VerifyEmail;
  const factory SignUpEvent.fillProfile({
    required Map<String, dynamic> userInfo,
  }) = _FillProfile;
  const factory SignUpEvent.choosePlan({required int planIndex}) = _ChoosePlan;
  const factory SignUpEvent.resendVerificationCode() = _ResendVerificationCode;
}
