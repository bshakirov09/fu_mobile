
part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {

  const ProfileState._();

  const factory ProfileState({
    @Default(true) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool isUpdatedUserInfo,
    @Default('') String error,
    @Default(null) ProfileModel? profile,
  }) = _ProfileState;

}
