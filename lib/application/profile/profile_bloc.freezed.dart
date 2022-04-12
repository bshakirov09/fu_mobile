// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _UpdateUserInfo updateUserInfo({required Map<String, dynamic> userInfo}) {
    return _UpdateUserInfo(
      userInfo: userInfo,
    );
  }

  _GetProfile getProfile() {
    return const _GetProfile();
  }

  _Logout logout() {
    return const _Logout();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> userInfo) updateUserInfo,
    required TResult Function() getProfile,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, dynamic> userInfo)? updateUserInfo,
    TResult Function()? getProfile,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> userInfo)? updateUserInfo,
    TResult Function()? getProfile,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$UpdateUserInfoCopyWith<$Res> {
  factory _$UpdateUserInfoCopyWith(
          _UpdateUserInfo value, $Res Function(_UpdateUserInfo) then) =
      __$UpdateUserInfoCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> userInfo});
}

/// @nodoc
class __$UpdateUserInfoCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$UpdateUserInfoCopyWith<$Res> {
  __$UpdateUserInfoCopyWithImpl(
      _UpdateUserInfo _value, $Res Function(_UpdateUserInfo) _then)
      : super(_value, (v) => _then(v as _UpdateUserInfo));

  @override
  _UpdateUserInfo get _value => super._value as _UpdateUserInfo;

  @override
  $Res call({
    Object? userInfo = freezed,
  }) {
    return _then(_UpdateUserInfo(
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_UpdateUserInfo extends _UpdateUserInfo {
  const _$_UpdateUserInfo({required this.userInfo}) : super._();

  @override
  final Map<String, dynamic> userInfo;

  @override
  String toString() {
    return 'ProfileEvent.updateUserInfo(userInfo: $userInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserInfo &&
            const DeepCollectionEquality().equals(other.userInfo, userInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userInfo));

  @JsonKey(ignore: true)
  @override
  _$UpdateUserInfoCopyWith<_UpdateUserInfo> get copyWith =>
      __$UpdateUserInfoCopyWithImpl<_UpdateUserInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> userInfo) updateUserInfo,
    required TResult Function() getProfile,
    required TResult Function() logout,
  }) {
    return updateUserInfo(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, dynamic> userInfo)? updateUserInfo,
    TResult Function()? getProfile,
    TResult Function()? logout,
  }) {
    return updateUserInfo?.call(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> userInfo)? updateUserInfo,
    TResult Function()? getProfile,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_Logout value) logout,
  }) {
    return updateUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_Logout value)? logout,
  }) {
    return updateUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserInfo extends ProfileEvent {
  const factory _UpdateUserInfo({required Map<String, dynamic> userInfo}) =
      _$_UpdateUserInfo;
  const _UpdateUserInfo._() : super._();

  Map<String, dynamic> get userInfo;
  @JsonKey(ignore: true)
  _$UpdateUserInfoCopyWith<_UpdateUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetProfileCopyWith<$Res> {
  factory _$GetProfileCopyWith(
          _GetProfile value, $Res Function(_GetProfile) then) =
      __$GetProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProfileCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$GetProfileCopyWith<$Res> {
  __$GetProfileCopyWithImpl(
      _GetProfile _value, $Res Function(_GetProfile) _then)
      : super(_value, (v) => _then(v as _GetProfile));

  @override
  _GetProfile get _value => super._value as _GetProfile;
}

/// @nodoc

class _$_GetProfile extends _GetProfile {
  const _$_GetProfile() : super._();

  @override
  String toString() {
    return 'ProfileEvent.getProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> userInfo) updateUserInfo,
    required TResult Function() getProfile,
    required TResult Function() logout,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, dynamic> userInfo)? updateUserInfo,
    TResult Function()? getProfile,
    TResult Function()? logout,
  }) {
    return getProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> userInfo)? updateUserInfo,
    TResult Function()? getProfile,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_Logout value) logout,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_Logout value)? logout,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetProfile extends ProfileEvent {
  const factory _GetProfile() = _$_GetProfile;
  const _GetProfile._() : super._();
}

/// @nodoc
abstract class _$LogoutCopyWith<$Res> {
  factory _$LogoutCopyWith(_Logout value, $Res Function(_Logout) then) =
      __$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$LogoutCopyWith<$Res> {
  __$LogoutCopyWithImpl(_Logout _value, $Res Function(_Logout) _then)
      : super(_value, (v) => _then(v as _Logout));

  @override
  _Logout get _value => super._value as _Logout;
}

/// @nodoc

class _$_Logout extends _Logout {
  const _$_Logout() : super._();

  @override
  String toString() {
    return 'ProfileEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> userInfo) updateUserInfo,
    required TResult Function() getProfile,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, dynamic> userInfo)? updateUserInfo,
    TResult Function()? getProfile,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> userInfo)? updateUserInfo,
    TResult Function()? getProfile,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserInfo value) updateUserInfo,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserInfo value)? updateUserInfo,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout extends ProfileEvent {
  const factory _Logout() = _$_Logout;
  const _Logout._() : super._();
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileState call(
      {bool isLoading = true,
      bool hasError = false,
      bool isUpdatedUserInfo = false,
      String error = '',
      ProfileModel? profile = null}) {
    return _ProfileState(
      isLoading: isLoading,
      hasError: hasError,
      isUpdatedUserInfo: isUpdatedUserInfo,
      error: error,
      profile: profile,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isUpdatedUserInfo => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  ProfileModel? get profile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isUpdatedUserInfo,
      String error,
      ProfileModel? profile});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isUpdatedUserInfo = freezed,
    Object? error = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdatedUserInfo: isUpdatedUserInfo == freezed
          ? _value.isUpdatedUserInfo
          : isUpdatedUserInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
    ));
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isUpdatedUserInfo,
      String error,
      ProfileModel? profile});
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isUpdatedUserInfo = freezed,
    Object? error = freezed,
    Object? profile = freezed,
  }) {
    return _then(_ProfileState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdatedUserInfo: isUpdatedUserInfo == freezed
          ? _value.isUpdatedUserInfo
          : isUpdatedUserInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
    ));
  }
}

/// @nodoc

class _$_ProfileState extends _ProfileState {
  const _$_ProfileState(
      {this.isLoading = true,
      this.hasError = false,
      this.isUpdatedUserInfo = false,
      this.error = '',
      this.profile = null})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool hasError;
  @JsonKey()
  @override
  final bool isUpdatedUserInfo;
  @JsonKey()
  @override
  final String error;
  @JsonKey()
  @override
  final ProfileModel? profile;

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, hasError: $hasError, isUpdatedUserInfo: $isUpdatedUserInfo, error: $error, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.isUpdatedUserInfo, isUpdatedUserInfo) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.profile, profile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(isUpdatedUserInfo),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(profile));

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState extends ProfileState {
  const factory _ProfileState(
      {bool isLoading,
      bool hasError,
      bool isUpdatedUserInfo,
      String error,
      ProfileModel? profile}) = _$_ProfileState;
  const _ProfileState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isUpdatedUserInfo;
  @override
  String get error;
  @override
  ProfileModel? get profile;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
