// Created by Muhammed Tolkinov on 09-December-2021

import 'package:dartz/dartz.dart';

import 'package:fitness_uncensored/domain/auth/enums/social_auth_type.dart';
import 'package:fitness_uncensored/domain/auth/facades/i_forgot_password_facade.dart';
import 'package:fitness_uncensored/domain/auth/facades/i_sign_in_facade.dart';
import 'package:fitness_uncensored/domain/auth/facades/i_sign_up_facade.dart';
import 'package:fitness_uncensored/infrastructure/auth/sign_up_requests.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/auth_user_model.dart';
import 'package:fitness_uncensored/infrastructure/user/profile_requests.dart';
import 'package:fitness_uncensored/utils/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'forgot_password_requests.dart';
import 'sign_in_requests.dart';

class AuthApi implements ISignInFacade, ISignUpFacade, IForgotPasswordFacade {

  @override
  Future<Either<String, Map<String, dynamic>>> signIn({
    required String email,
    required String password
  }) async {
    try {
      final SignInRequests signInRequest = SignInRequests();
      return await signInRequest.signIn(email: email, password: password);
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> registerUser({
    required AuthUserModel authUserModel,
  }) async {
    try {
      return await getIt.get<SignUpRequests>().registerUser(
        authUserModel: authUserModel
      );
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Map<String, dynamic>>> verifyEmail({
    required String email,
    required String code,
  }) async {
    try {
      return await getIt.get<SignUpRequests>().verifyEmail(
        email: email,
        code: code,
      );
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> fillProfile({
    required Map<String, dynamic> profileInfo,
  }) async {
    try {
      return getIt.get<ProfileRequests>().update(userInfo: profileInfo);
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> resetPassword({
    required String password,
    required String confirmPassword,
    required String verificationKey,
  }) async {
    try {
      return await getIt.get<ForgotPasswordRequests>().resetPassword(
        password: password,
        confirmPassword: confirmPassword,
        verificationKey: verificationKey
      );
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> sendVerificationCode({
    required String email,
  }) async {
    try {
      return await getIt.get<ForgotPasswordRequests>().sendVerificationCode(
        email: email,
      );
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> verifyCode({
    required String email,
    required String code,
  }) async {
    try {
      return await getIt.get<ForgotPasswordRequests>().verifyCode(
        email: email,
        code: code
      );
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Map<String, dynamic>>> appleSignIn() async {
    try {
      final AuthorizationCredentialAppleID credentialApple =
        await SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
        );

      final SignInRequests requests = SignInRequests();
      return await requests.socialSignIn(
        token: credentialApple.authorizationCode,
        socialAuthType: SocialAuthType.apple
      );
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Map<String, dynamic>>> facebookSignIn() async {
    try {
      final SignInRequests requests = SignInRequests();
      return await requests.socialSignIn(
        token: '',
        socialAuthType: SocialAuthType.facebook
      );
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Map<String, dynamic>>> googleSignIn() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? user = await googleSignIn.signIn();

      if (user == null) {
        return left('Can not sign in with Google');
      }
      else {
        final GoogleSignInAuthentication googleAuth = await user.authentication;

        if (googleAuth.accessToken != null) {
          final SignInRequests requests = SignInRequests();
          return await requests.socialSignIn(
            token: googleAuth.accessToken ?? '',
            socialAuthType: SocialAuthType.google,
          );
        }
        else {
          return left('Can not sign in with Google');
        }
      }
    } catch(e) {
      return left(e.toString());
    }
  }
}
