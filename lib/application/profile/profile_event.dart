part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {

  const ProfileEvent._();

  const factory ProfileEvent.updateUserInfo({
    required Map<String, dynamic> userInfo,
  }) = _UpdateUserInfo;

  const factory ProfileEvent.getProfile() = _GetProfile;
  const factory ProfileEvent.logout() = _Logout;
}
