
import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/core/upload_file_types.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/infrastructure/user/user_api.dart';
import 'package:fitness_uncensored/infrastructure/common/get_or_upload_media_api.dart';
import 'package:fitness_uncensored/utils/get_it.dart';
import 'package:fitness_uncensored/infrastructure/auth/auth_api.dart';
import 'package:fitness_uncensored/domain/auth/enums/auth_pages.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/auth_user_model.dart';
import 'package:fitness_uncensored/presentation/pages/auth/sign_up/choose_subscription_plan_page.dart';
import 'package:fitness_uncensored/presentation/pages/auth/sign_up/fill_profile_page.dart';
import 'package:fitness_uncensored/presentation/pages/auth/sign_up/sign_up_one_page.dart';
import 'package:fitness_uncensored/presentation/pages/auth/sign_up/sign_up_two_page.dart';
import 'package:fitness_uncensored/presentation/pages/auth/verify_email/verify_email_page.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const _SignUpState());

  AuthUserModel? authUserModel = const AuthUserModel();

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    yield* event.map(
      getNextPage: _getNextPage,
      createAccount: (event) async* {},
      refreshState: (event) async* {
        authUserModel = const AuthUserModel();
        yield const _SignUpState();
      },
      getPreviousPage: _getPreviousPage,
      verifyEmail: _verifyEmail,
      fillProfile: _fillProfile,
      resendVerificationCode: _resendVerificationCode,
      choosePlan: _choosePlan,
    );
  }

  Stream<SignUpState> _getNextPage(_GetNextPage event) async* {

    if (event.authUserModel != null) {
      authUserModel = authUserModel?.copyWith(
        firstName: event.authUserModel?.firstName,
        lastName: event.authUserModel?.lastName,
        email: event.authUserModel?.email,
        password: event.authUserModel?.password,
        confirmPassword: event.authUserModel?.confirmPassword,
        gender: event.authUserModel?.gender,
      );
    }

    switch(state.currentPageEnum) {
      case AuthPages.signUpOne:
        yield state.copyWith(
          currentPage: const SignUpTwoPage(),
          currentPageEnum: AuthPages.signUpTwo,
          progressIndicatorIndex: 1
        );
        break;
      case AuthPages.signUpTwo:
        yield* _registerUserAndSendVerificationCode();
        break;
      case AuthPages.verifyEmail:
        yield state.copyWith(
          currentPage: const FillProfilePage(),
          currentPageEnum: AuthPages.fillProfile,
          progressIndicatorIndex: 2,
          appBarText: 'personal_information'.tr(),
        );
        break;
      case AuthPages.fillProfile:
        yield state.copyWith(
          currentPage: const ChooseSubscriptionPlanPage(),
          currentPageEnum: AuthPages.chooseSubscribePlan,
          appBarText: 'choose_your_plan'.tr(),
          progressIndicatorIndex: 3
        );
        break;
      case AuthPages.chooseSubscribePlan:
        // TODO: Handle this case.
        break;
    }
  }

  Stream<SignUpState> _getPreviousPage(_GetPreviousPage event) async* {
    switch(state.currentPageEnum) {
      case AuthPages.signUpOne:
        yield state;
        break;
      case AuthPages.signUpTwo:
        yield state.copyWith(
          currentPageEnum: AuthPages.signUpOne,
          progressIndicatorIndex: 0,
          currentPage: const SignUpOnePage()
        );
        break;
      case AuthPages.verifyEmail:
        yield state.copyWith(
          currentPage: const SignUpTwoPage(),
          currentPageEnum: AuthPages.signUpTwo,
          progressIndicatorIndex: 1,
          appBarText: 'sign_up'.tr()
        );
        break;
      case AuthPages.fillProfile:
        yield state.copyWith(
          currentPage: const VerifyEmail(
            verifyType: VerifyType.registrationUser,
          ),
          currentPageEnum: AuthPages.verifyEmail,
          progressIndicatorIndex: 2,
        );
        break;
      case AuthPages.chooseSubscribePlan:
        yield state.copyWith(
          currentPage: const FillProfilePage(),
          currentPageEnum: AuthPages.fillProfile,
          progressIndicatorIndex: 3,
          appBarText: 'personal_information'.tr()
        );
        break;
    }
  }

  Stream<SignUpState> _registerUserAndSendVerificationCode() async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
    );

    final Either<String, Unit> result = await getIt.get<AuthApi>().registerUser(
      authUserModel: authUserModel!
    );

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: true,
          error: Left(l).value,
        );
      },
      (r) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: false,
          currentPage: const VerifyEmail(
            verifyType: VerifyType.registrationUser,
          ),
          currentPageEnum: AuthPages.verifyEmail,
          progressIndicatorIndex: 2,
        );
      }
    );
  }

  Stream<SignUpState> _resendVerificationCode(_ResendVerificationCode event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
    );

    final Either<String, Unit> result = await getIt.get<AuthApi>().registerUser(
      authUserModel: authUserModel!
    );

    yield* result.fold(
       (l) async* {
          yield state.copyWith(
            isLoading: false,
            hasError: true,
            error: Left(l).value,
          );
       },
       (r) async* {
          yield state.copyWith(
            isLoading: false,
            hasError: false,
          );
       }
    );
  }

  Stream<SignUpState> _verifyEmail(_VerifyEmail event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
    );

    final Either<String, Map<String, dynamic>> result =
      await getIt.get<AuthApi>().verifyEmail(
        email: authUserModel?.email ?? '',
        code: event.code
      );

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: true,
          error: Left(l).value,
        );
      },
      (r) async* {
        final Map<String, dynamic> userInfo = Right(r).value;
        UserRepositoryModel.getUserInfo(userInfo: userInfo['info']);
        getIt.get<UserApi>().patchUserInfo(userInfo: userInfo['info']);

        yield state.copyWith(
          isLoading: false,
          hasError: false,
          currentPage: const FillProfilePage(),
          currentPageEnum: AuthPages.fillProfile,
          progressIndicatorIndex: 3,
          appBarText: 'personal_information'.tr(),
        );
      },
    );
  }

  Stream<SignUpState> _fillProfile(_FillProfile event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
    );

    final GetOrUploadMediaApi getOrUploadMedia = GetOrUploadMediaApi();
    final List<int> image = await getOrUploadMedia.uploadMedia(
      uploadFileTypes: UploadFileTypes.profile,
      images: [event.userInfo['profile_image']],
    );

    if (image.isNotEmpty) {
      event.userInfo['profile_image'] = image[0];
    }

    final Either<String, Unit> result = await getIt.get<AuthApi>().fillProfile(
          profileInfo: event.userInfo,
        );

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
            isLoading: false, hasError: true, error: Left(l).value);
      },
      (r) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: false,
          currentPage: const ChooseSubscriptionPlanPage(),
          currentPageEnum: AuthPages.chooseSubscribePlan,
          progressIndicatorIndex: 4,
          appBarText: 'choose_your_plan'.tr(),
        );
      },
    );
  }

  Stream<SignUpState> _choosePlan(_ChoosePlan event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
    );

    final Either<String, Unit> result =
        await getIt.get<AuthApi>().fillProfile(profileInfo: {
      "subscription": event.planIndex,
    });

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: true,
          error: Left(l).value,
        );
      },
      (r) async* {
        UserRepositoryModel.authStatus = true;
        getIt.get<UserApi>().putUserInfo(
          key: 'auth_status',
          value: true
        );

        yield state.copyWith(
          isLoading: false,
          hasError: false,
          isCreatedAccount: true,
        );
      },
    );
  }

}
