// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInEventTearOff {
  const _$SignInEventTearOff();

  _SignIn signIn({required String email, required String password}) {
    return _SignIn(
      email: email,
      password: password,
    );
  }

  _SocialAuth socialAuth({required SocialAuthType socialAuthType}) {
    return _SocialAuth(
      socialAuthType: socialAuthType,
    );
  }
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(SocialAuthType socialAuthType) socialAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(SocialAuthType socialAuthType)? socialAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(SocialAuthType socialAuthType)? socialAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SocialAuth value) socialAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SocialAuth value)? socialAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SocialAuth value)? socialAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class _$SignInCopyWith<$Res> {
  factory _$SignInCopyWith(_SignIn value, $Res Function(_SignIn) then) =
      __$SignInCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$SignInCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$SignInCopyWith<$Res> {
  __$SignInCopyWithImpl(_SignIn _value, $Res Function(_SignIn) _then)
      : super(_value, (v) => _then(v as _SignIn));

  @override
  _SignIn get _value => super._value as _SignIn;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignIn(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignIn extends _SignIn {
  const _$_SignIn({required this.email, required this.password}) : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignIn &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$SignInCopyWith<_SignIn> get copyWith =>
      __$SignInCopyWithImpl<_SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(SocialAuthType socialAuthType) socialAuth,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(SocialAuthType socialAuthType)? socialAuth,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(SocialAuthType socialAuthType)? socialAuth,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SocialAuth value) socialAuth,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SocialAuth value)? socialAuth,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SocialAuth value)? socialAuth,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn extends SignInEvent {
  const factory _SignIn({required String email, required String password}) =
      _$_SignIn;
  const _SignIn._() : super._();

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$SignInCopyWith<_SignIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SocialAuthCopyWith<$Res> {
  factory _$SocialAuthCopyWith(
          _SocialAuth value, $Res Function(_SocialAuth) then) =
      __$SocialAuthCopyWithImpl<$Res>;
  $Res call({SocialAuthType socialAuthType});
}

/// @nodoc
class __$SocialAuthCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$SocialAuthCopyWith<$Res> {
  __$SocialAuthCopyWithImpl(
      _SocialAuth _value, $Res Function(_SocialAuth) _then)
      : super(_value, (v) => _then(v as _SocialAuth));

  @override
  _SocialAuth get _value => super._value as _SocialAuth;

  @override
  $Res call({
    Object? socialAuthType = freezed,
  }) {
    return _then(_SocialAuth(
      socialAuthType: socialAuthType == freezed
          ? _value.socialAuthType
          : socialAuthType // ignore: cast_nullable_to_non_nullable
              as SocialAuthType,
    ));
  }
}

/// @nodoc

class _$_SocialAuth extends _SocialAuth {
  const _$_SocialAuth({required this.socialAuthType}) : super._();

  @override
  final SocialAuthType socialAuthType;

  @override
  String toString() {
    return 'SignInEvent.socialAuth(socialAuthType: $socialAuthType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialAuth &&
            const DeepCollectionEquality()
                .equals(other.socialAuthType, socialAuthType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(socialAuthType));

  @JsonKey(ignore: true)
  @override
  _$SocialAuthCopyWith<_SocialAuth> get copyWith =>
      __$SocialAuthCopyWithImpl<_SocialAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(SocialAuthType socialAuthType) socialAuth,
  }) {
    return socialAuth(socialAuthType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(SocialAuthType socialAuthType)? socialAuth,
  }) {
    return socialAuth?.call(socialAuthType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(SocialAuthType socialAuthType)? socialAuth,
    required TResult orElse(),
  }) {
    if (socialAuth != null) {
      return socialAuth(socialAuthType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SocialAuth value) socialAuth,
  }) {
    return socialAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SocialAuth value)? socialAuth,
  }) {
    return socialAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SocialAuth value)? socialAuth,
    required TResult orElse(),
  }) {
    if (socialAuth != null) {
      return socialAuth(this);
    }
    return orElse();
  }
}

abstract class _SocialAuth extends SignInEvent {
  const factory _SocialAuth({required SocialAuthType socialAuthType}) =
      _$_SocialAuth;
  const _SocialAuth._() : super._();

  SocialAuthType get socialAuthType;
  @JsonKey(ignore: true)
  _$SocialAuthCopyWith<_SocialAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {bool isLoading = false,
      bool hasError = false,
      bool hasSocialAuthError = false,
      bool isLoginSuccess = false,
      String error = '',
      String socialAuthError = ''}) {
    return _SignInState(
      isLoading: isLoading,
      hasError: hasError,
      hasSocialAuthError: hasSocialAuthError,
      isLoginSuccess: isLoginSuccess,
      error: error,
      socialAuthError: socialAuthError,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get hasSocialAuthError => throw _privateConstructorUsedError;
  bool get isLoginSuccess => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get socialAuthError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      bool hasSocialAuthError,
      bool isLoginSuccess,
      String error,
      String socialAuthError});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? hasSocialAuthError = freezed,
    Object? isLoginSuccess = freezed,
    Object? error = freezed,
    Object? socialAuthError = freezed,
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
      hasSocialAuthError: hasSocialAuthError == freezed
          ? _value.hasSocialAuthError
          : hasSocialAuthError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginSuccess: isLoginSuccess == freezed
          ? _value.isLoginSuccess
          : isLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      socialAuthError: socialAuthError == freezed
          ? _value.socialAuthError
          : socialAuthError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      bool hasSocialAuthError,
      bool isLoginSuccess,
      String error,
      String socialAuthError});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? hasSocialAuthError = freezed,
    Object? isLoginSuccess = freezed,
    Object? error = freezed,
    Object? socialAuthError = freezed,
  }) {
    return _then(_SignInState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSocialAuthError: hasSocialAuthError == freezed
          ? _value.hasSocialAuthError
          : hasSocialAuthError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginSuccess: isLoginSuccess == freezed
          ? _value.isLoginSuccess
          : isLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      socialAuthError: socialAuthError == freezed
          ? _value.socialAuthError
          : socialAuthError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInState extends _SignInState {
  const _$_SignInState(
      {this.isLoading = false,
      this.hasError = false,
      this.hasSocialAuthError = false,
      this.isLoginSuccess = false,
      this.error = '',
      this.socialAuthError = ''})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool hasError;
  @JsonKey()
  @override
  final bool hasSocialAuthError;
  @JsonKey()
  @override
  final bool isLoginSuccess;
  @JsonKey()
  @override
  final String error;
  @JsonKey()
  @override
  final String socialAuthError;

  @override
  String toString() {
    return 'SignInState(isLoading: $isLoading, hasError: $hasError, hasSocialAuthError: $hasSocialAuthError, isLoginSuccess: $isLoginSuccess, error: $error, socialAuthError: $socialAuthError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.hasSocialAuthError, hasSocialAuthError) &&
            const DeepCollectionEquality()
                .equals(other.isLoginSuccess, isLoginSuccess) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.socialAuthError, socialAuthError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(hasSocialAuthError),
      const DeepCollectionEquality().hash(isLoginSuccess),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(socialAuthError));

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState extends SignInState {
  const factory _SignInState(
      {bool isLoading,
      bool hasError,
      bool hasSocialAuthError,
      bool isLoginSuccess,
      String error,
      String socialAuthError}) = _$_SignInState;
  const _SignInState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get hasSocialAuthError;
  @override
  bool get isLoginSuccess;
  @override
  String get error;
  @override
  String get socialAuthError;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
