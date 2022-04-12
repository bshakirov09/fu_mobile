
part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {

  const SignInEvent._();

  const factory SignInEvent.signIn({
    required String email,
    required String password,
  }) = _SignIn;

  const factory SignInEvent.socialAuth({
    required SocialAuthType socialAuthType,
  }) = _SocialAuth;

}
