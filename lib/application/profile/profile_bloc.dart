
import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/core/upload_file_types.dart';
import 'package:fitness_uncensored/infrastructure/common/get_or_upload_media_api.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/profile_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/user_repository_model.dart';
import 'package:fitness_uncensored/infrastructure/user/user_api.dart';
import 'package:fitness_uncensored/utils/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const _ProfileState());

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    yield* event.map(
      updateUserInfo: _updateUserInfo,
      getProfile: _getProfile,
      logout: _logout
    );
  }

  Stream<ProfileState> _updateUserInfo(_UpdateUserInfo event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      isUpdatedUserInfo: false,
      error: '',
    );

    if (event.userInfo['profile_image'] != null &&
        event.userInfo['profile_image'] != '') {
      final GetOrUploadMediaApi getOrUploadMedia = GetOrUploadMediaApi();
      final List<int> images = await getOrUploadMedia.uploadMedia(
        uploadFileTypes: UploadFileTypes.profile,
        images: [event.userInfo['profile_image']],
      );

      if (images.isNotEmpty) {
        event.userInfo['profile_image'] = images[0];
      }
    }

    final Either<String, Unit> result =
        await getIt.get<UserApi>().updateUserInfo(userInfo: event.userInfo);

    yield* result.fold((error) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: error,
      );
    }, (r) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        isUpdatedUserInfo: true,
      );
    });
  }


  Stream<ProfileState> _getProfile(_GetProfile event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      isUpdatedUserInfo: false,
      error: '',
    );

    final Either<String, ProfileModel> result =
        await getIt.get<UserApi>().getUserProfile();

    yield* result.fold((error) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: true,
        error: error,
      );
    }, (result) async* {
      yield state.copyWith(
        isLoading: false,
        hasError: false,
        profile: result,
      );
    });
  }

  Stream<ProfileState> _logout(_Logout event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
    );

    final Either<String, Unit> result = await getIt.get<UserApi>().logout();

    yield* result.fold(
      (error) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: true,
          error: error,
        );
      },
      (r) async* {
        getIt.get<UserApi>().clearUserInfoFromLocalDB();
        UserRepositoryModel.authStatus = false;

        yield state.copyWith(isLoading: false);
      },
    );
  }

}
