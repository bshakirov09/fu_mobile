// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForgotPasswordEventTearOff {
  const _$ForgotPasswordEventTearOff();

  _RefreshState refreshState() {
    return const _RefreshState();
  }

  _ResendVerificationCode resendVerificationCode() {
    return const _ResendVerificationCode();
  }

  _SendVerificationCode sendVerificationCode({required String email}) {
    return _SendVerificationCode(
      email: email,
    );
  }

  _VerifyCode verifyCode({required String code}) {
    return _VerifyCode(
      code: code,
    );
  }

  _ResetPassword resetPassword(
      {required String password, required String confirmPassword}) {
    return _ResetPassword(
      password: password,
      confirmPassword: confirmPassword,
    );
  }
}

/// @nodoc
const $ForgotPasswordEvent = _$ForgotPasswordEventTearOff();

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshState,
    required TResult Function() resendVerificationCode,
    required TResult Function(String email) sendVerificationCode,
    required TResult Function(String code) verifyCode,
    required TResult Function(String password, String confirmPassword)
        resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function()? resendVerificationCode,
    TResult Function(String email)? sendVerificationCode,
    TResult Function(String code)? verifyCode,
    TResult Function(String password, String confirmPassword)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function()? resendVerificationCode,
    TResult Function(String email)? sendVerificationCode,
    TResult Function(String code)? verifyCode,
    TResult Function(String password, String confirmPassword)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_SendVerificationCode value) sendVerificationCode,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_ResetPassword value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_SendVerificationCode value)? sendVerificationCode,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_ResetPassword value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_SendVerificationCode value)? sendVerificationCode,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  final ForgotPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordEvent) _then;
}

/// @nodoc
abstract class _$RefreshStateCopyWith<$Res> {
  factory _$RefreshStateCopyWith(
          _RefreshState value, $Res Function(_RefreshState) then) =
      __$RefreshStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshStateCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$RefreshStateCopyWith<$Res> {
  __$RefreshStateCopyWithImpl(
      _RefreshState _value, $Res Function(_RefreshState) _then)
      : super(_value, (v) => _then(v as _RefreshState));

  @override
  _RefreshState get _value => super._value as _RefreshState;
}

/// @nodoc

class _$_RefreshState extends _RefreshState {
  const _$_RefreshState() : super._();

  @override
  String toString() {
    return 'ForgotPasswordEvent.refreshState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RefreshState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshState,
    required TResult Function() resendVerificationCode,
    required TResult Function(String email) sendVerificationCode,
    required TResult Function(String code) verifyCode,
    required TResult Function(String password, String confirmPassword)
        resetPassword,
  }) {
    return refreshState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function()? resendVerificationCode,
    TResult Function(String email)? sendVerificationCode,
    TResult Function(String code)? verifyCode,
    TResult Function(String password, String confirmPassword)? resetPassword,
  }) {
    return refreshState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function()? resendVerificationCode,
    TResult Function(String email)? sendVerificationCode,
    TResult Function(String code)? verifyCode,
    TResult Function(String password, String confirmPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (refreshState != null) {
      return refreshState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_SendVerificationCode value) sendVerificationCode,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return refreshState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_SendVerificationCode value)? sendVerificationCode,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_ResetPassword value)? resetPassword,
  }) {
    return refreshState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_SendVerificationCode value)? sendVerificationCode,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (refreshState != null) {
      return refreshState(this);
    }
    return orElse();
  }
}

abstract class _RefreshState extends ForgotPasswordEvent {
  const factory _RefreshState() = _$_RefreshState;
  const _RefreshState._() : super._();
}

/// @nodoc
abstract class _$ResendVerificationCodeCopyWith<$Res> {
  factory _$ResendVerificationCodeCopyWith(_ResendVerificationCode value,
          $Res Function(_ResendVerificationCode) then) =
      __$ResendVerificationCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResendVerificationCodeCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$ResendVerificationCodeCopyWith<$Res> {
  __$ResendVerificationCodeCopyWithImpl(_ResendVerificationCode _value,
      $Res Function(_ResendVerificationCode) _then)
      : super(_value, (v) => _then(v as _ResendVerificationCode));

  @override
  _ResendVerificationCode get _value => super._value as _ResendVerificationCode;
}

/// @nodoc

class _$_ResendVerificationCode extends _ResendVerificationCode {
  const _$_ResendVerificationCode() : super._();

  @override
  String toString() {
    return 'ForgotPasswordEvent.resendVerificationCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResendVerificationCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshState,
    required TResult Function() resendVerificationCode,
    required TResult Function(String email) sendVerificationCode,
    required TResult Function(String code) verifyCode,
    required TResult Function(String password, String confirmPassword)
        resetPassword,
  }) {
    return resendVerificationCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function()? resendVerificationCode,
    TResult Function(String email)? sendVerificationCode,
    TResult Function(String code)? verifyCode,
    TResult Function(String password, String confirmPassword)? resetPassword,
  }) {
    return resendVerificationCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function()? resendVerificationCode,
    TResult Function(String email)? sendVerificationCode,
    TResult Function(String code)? verifyCode,
    TResult Function(String password, String confirmPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (resendVerificationCode != null) {
      return resendVerificationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_SendVerificationCode value) sendVerificationCode,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return resendVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_SendVerificationCode value)? sendVerificationCode,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_ResetPassword value)? resetPassword,
  }) {
    return resendVerificationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_SendVerificationCode value)? sendVerificationCode,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resendVerificationCode != null) {
      return resendVerificationCode(this);
    }
    return orElse();
  }
}

abstract class _ResendVerificationCode extends ForgotPasswordEvent {
  const factory _ResendVerificationCode() = _$_ResendVerificationCode;
  const _ResendVerificationCode._() : super._();
}

/// @nodoc
abstract class _$SendVerificationCodeCopyWith<$Res> {
  factory _$SendVerificationCodeCopyWith(_SendVerificationCode value,
          $Res Function(_SendVerificationCode) then) =
      __$SendVerificationCodeCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$SendVerificationCodeCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$SendVerificationCodeCopyWith<$Res> {
  __$SendVerificationCodeCopyWithImpl(
      _SendVerificationCode _value, $Res Function(_SendVerificationCode) _then)
      : super(_value, (v) => _then(v as _SendVerificationCode));

  @override
  _SendVerificationCode get _value => super._value as _SendVerificationCode;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_SendVerificationCode(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendVerificationCode extends _SendVerificationCode {
  const _$_SendVerificationCode({required this.email}) : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.sendVerificationCode(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendVerificationCode &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$SendVerificationCodeCopyWith<_SendVerificationCode> get copyWith =>
      __$SendVerificationCodeCopyWithImpl<_SendVerificationCode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshState,
    required TResult Function() resendVerificationCode,
    required TResult Function(String email) sendVerificationCode,
    required TResult Function(String code) verifyCode,
    required TResult Function(String password, String confirmPassword)
        resetPassword,
  }) {
    return sendVerificationCode(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function()? resendVerificationCode,
    TResult Function(String email)? sendVerificationCode,
    TResult Function(String code)? verifyCode,
    TResult Function(String password, String confirmPassword)? resetPassword,
  }) {
    return sendVerificationCode?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function()? resendVerificationCode,
    TResult Function(String email)? sendVerificationCode,
    TResult Function(String code)? verifyCode,
    TResult Function(String password, String confirmPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (sendVerificationCode != null) {
      return sendVerificationCode(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_SendVerificationCode value) sendVerificationCode,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return sendVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_SendVerificationCode value)? sendVerificationCode,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_ResetPassword value)? resetPassword,
  }) {
    return sendVerificationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_SendVerificationCode value)? sendVerificationCode,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (sendVerificationCode != null) {
      return sendVerificationCode(this);
    }
    return orElse();
  }
}

abstract class _SendVerificationCode extends ForgotPasswordEvent {
  const factory _SendVerificationCode({required String email}) =
      _$_SendVerificationCode;
  const _SendVerificationCode._() : super._();

  String get email;
  @JsonKey(ignore: true)
  _$SendVerificationCodeCopyWith<_SendVerificationCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerifyCodeCopyWith<$Res> {
  factory _$VerifyCodeCopyWith(
          _VerifyCode value, $Res Function(_VerifyCode) then) =
      __$VerifyCodeCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class __$VerifyCodeCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$VerifyCodeCopyWith<$Res> {
  __$VerifyCodeCopyWithImpl(
      _VerifyCode _value, $Res Function(_VerifyCode) _then)
      : super(_value, (v) => _then(v as _VerifyCode));

  @override
  _VerifyCode get _value => super._value as _VerifyCode;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_VerifyCode(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyCode extends _VerifyCode {
  const _$_VerifyCode({required this.code}) : super._();

  @override
  final String code;

  @override
  String toString() {
    return 'ForgotPasswordEvent.verifyCode(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyCode &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$VerifyCodeCopyWith<_VerifyCode> get copyWith =>
      __$VerifyCodeCopyWithImpl<_VerifyCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshState,
    required TResult Function() resendVerificationCode,
    required TResult Function(String email) sendVerificationCode,
    required TResult Function(String code) verifyCode,
    required TResult Function(String password, String confirmPassword)
        resetPassword,
  }) {
    return verifyCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function()? resendVerificationCode,
    TResult Function(String email)? sendVerificationCode,
    TResult Function(String code)? verifyCode,
    TResult Function(String password, String confirmPassword)? resetPassword,
  }) {
    return verifyCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function()? resendVerificationCode,
    TResult Function(String email)? sendVerificationCode,
    TResult Function(String code)? verifyCode,
    TResult Function(String password, String confirmPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_SendVerificationCode value) sendVerificationCode,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return verifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_SendVerificationCode value)? sendVerificationCode,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_ResetPassword value)? resetPassword,
  }) {
    return verifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_SendVerificationCode value)? sendVerificationCode,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(this);
    }
    return orElse();
  }
}

abstract class _VerifyCode extends ForgotPasswordEvent {
  const factory _VerifyCode({required String code}) = _$_VerifyCode;
  const _VerifyCode._() : super._();

  String get code;
  @JsonKey(ignore: true)
  _$VerifyCodeCopyWith<_VerifyCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResetPasswordCopyWith<$Res> {
  factory _$ResetPasswordCopyWith(
          _ResetPassword value, $Res Function(_ResetPassword) then) =
      __$ResetPasswordCopyWithImpl<$Res>;
  $Res call({String password, String confirmPassword});
}

/// @nodoc
class __$ResetPasswordCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$ResetPasswordCopyWith<$Res> {
  __$ResetPasswordCopyWithImpl(
      _ResetPassword _value, $Res Function(_ResetPassword) _then)
      : super(_value, (v) => _then(v as _ResetPassword));

  @override
  _ResetPassword get _value => super._value as _ResetPassword;

  @override
  $Res call({
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_ResetPassword(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPassword extends _ResetPassword {
  const _$_ResetPassword(
      {required this.password, required this.confirmPassword})
      : super._();

  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'ForgotPasswordEvent.resetPassword(password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResetPassword &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  _$ResetPasswordCopyWith<_ResetPassword> get copyWith =>
      __$ResetPasswordCopyWithImpl<_ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshState,
    required TResult Function() resendVerificationCode,
    required TResult Function(String email) sendVerificationCode,
    required TResult Function(String code) verifyCode,
    required TResult Function(String password, String confirmPassword)
        resetPassword,
  }) {
    return resetPassword(password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function()? resendVerificationCode,
    TResult Function(String email)? sendVerificationCode,
    TResult Function(String code)? verifyCode,
    TResult Function(String password, String confirmPassword)? resetPassword,
  }) {
    return resetPassword?.call(password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function()? resendVerificationCode,
    TResult Function(String email)? sendVerificationCode,
    TResult Function(String code)? verifyCode,
    TResult Function(String password, String confirmPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_SendVerificationCode value) sendVerificationCode,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_SendVerificationCode value)? sendVerificationCode,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_ResetPassword value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_SendVerificationCode value)? sendVerificationCode,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword extends ForgotPasswordEvent {
  const factory _ResetPassword(
      {required String password,
      required String confirmPassword}) = _$_ResetPassword;
  const _ResetPassword._() : super._();

  String get password;
  String get confirmPassword;
  @JsonKey(ignore: true)
  _$ResetPasswordCopyWith<_ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ForgotPasswordStateTearOff {
  const _$ForgotPasswordStateTearOff();

  _ForgotPasswordState call(
      {bool isLoading = false,
      bool hasError = false,
      bool isSentVerificationCode = false,
      bool isVerifiedCode = false,
      bool resetPasswordStatus = false,
      String error = '',
      String email = '',
      String verificationKey = '',
      ForgotPasswordPages currentPage =
          ForgotPasswordPages.sendVerificationCode}) {
    return _ForgotPasswordState(
      isLoading: isLoading,
      hasError: hasError,
      isSentVerificationCode: isSentVerificationCode,
      isVerifiedCode: isVerifiedCode,
      resetPasswordStatus: resetPasswordStatus,
      error: error,
      email: email,
      verificationKey: verificationKey,
      currentPage: currentPage,
    );
  }
}

/// @nodoc
const $ForgotPasswordState = _$ForgotPasswordStateTearOff();

/// @nodoc
mixin _$ForgotPasswordState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isSentVerificationCode => throw _privateConstructorUsedError;
  bool get isVerifiedCode => throw _privateConstructorUsedError;
  bool get resetPasswordStatus => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get verificationKey => throw _privateConstructorUsedError;
  ForgotPasswordPages get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isSentVerificationCode,
      bool isVerifiedCode,
      bool resetPasswordStatus,
      String error,
      String email,
      String verificationKey,
      ForgotPasswordPages currentPage});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isSentVerificationCode = freezed,
    Object? isVerifiedCode = freezed,
    Object? resetPasswordStatus = freezed,
    Object? error = freezed,
    Object? email = freezed,
    Object? verificationKey = freezed,
    Object? currentPage = freezed,
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
      isSentVerificationCode: isSentVerificationCode == freezed
          ? _value.isSentVerificationCode
          : isSentVerificationCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifiedCode: isVerifiedCode == freezed
          ? _value.isVerifiedCode
          : isVerifiedCode // ignore: cast_nullable_to_non_nullable
              as bool,
      resetPasswordStatus: resetPasswordStatus == freezed
          ? _value.resetPasswordStatus
          : resetPasswordStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      verificationKey: verificationKey == freezed
          ? _value.verificationKey
          : verificationKey // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordPages,
    ));
  }
}

/// @nodoc
abstract class _$ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value,
          $Res Function(_ForgotPasswordState) then) =
      __$ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isSentVerificationCode,
      bool isVerifiedCode,
      bool resetPasswordStatus,
      String error,
      String email,
      String verificationKey,
      ForgotPasswordPages currentPage});
}

/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(
      _ForgotPasswordState _value, $Res Function(_ForgotPasswordState) _then)
      : super(_value, (v) => _then(v as _ForgotPasswordState));

  @override
  _ForgotPasswordState get _value => super._value as _ForgotPasswordState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isSentVerificationCode = freezed,
    Object? isVerifiedCode = freezed,
    Object? resetPasswordStatus = freezed,
    Object? error = freezed,
    Object? email = freezed,
    Object? verificationKey = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_ForgotPasswordState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSentVerificationCode: isSentVerificationCode == freezed
          ? _value.isSentVerificationCode
          : isSentVerificationCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifiedCode: isVerifiedCode == freezed
          ? _value.isVerifiedCode
          : isVerifiedCode // ignore: cast_nullable_to_non_nullable
              as bool,
      resetPasswordStatus: resetPasswordStatus == freezed
          ? _value.resetPasswordStatus
          : resetPasswordStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      verificationKey: verificationKey == freezed
          ? _value.verificationKey
          : verificationKey // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordPages,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordState extends _ForgotPasswordState {
  const _$_ForgotPasswordState(
      {this.isLoading = false,
      this.hasError = false,
      this.isSentVerificationCode = false,
      this.isVerifiedCode = false,
      this.resetPasswordStatus = false,
      this.error = '',
      this.email = '',
      this.verificationKey = '',
      this.currentPage = ForgotPasswordPages.sendVerificationCode})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool hasError;
  @JsonKey()
  @override
  final bool isSentVerificationCode;
  @JsonKey()
  @override
  final bool isVerifiedCode;
  @JsonKey()
  @override
  final bool resetPasswordStatus;
  @JsonKey()
  @override
  final String error;
  @JsonKey()
  @override
  final String email;
  @JsonKey()
  @override
  final String verificationKey;
  @JsonKey()
  @override
  final ForgotPasswordPages currentPage;

  @override
  String toString() {
    return 'ForgotPasswordState(isLoading: $isLoading, hasError: $hasError, isSentVerificationCode: $isSentVerificationCode, isVerifiedCode: $isVerifiedCode, resetPasswordStatus: $resetPasswordStatus, error: $error, email: $email, verificationKey: $verificationKey, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPasswordState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.isSentVerificationCode, isSentVerificationCode) &&
            const DeepCollectionEquality()
                .equals(other.isVerifiedCode, isVerifiedCode) &&
            const DeepCollectionEquality()
                .equals(other.resetPasswordStatus, resetPasswordStatus) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.verificationKey, verificationKey) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(isSentVerificationCode),
      const DeepCollectionEquality().hash(isVerifiedCode),
      const DeepCollectionEquality().hash(resetPasswordStatus),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(verificationKey),
      const DeepCollectionEquality().hash(currentPage));

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(
          this, _$identity);
}

abstract class _ForgotPasswordState extends ForgotPasswordState {
  const factory _ForgotPasswordState(
      {bool isLoading,
      bool hasError,
      bool isSentVerificationCode,
      bool isVerifiedCode,
      bool resetPasswordStatus,
      String error,
      String email,
      String verificationKey,
      ForgotPasswordPages currentPage}) = _$_ForgotPasswordState;
  const _ForgotPasswordState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isSentVerificationCode;
  @override
  bool get isVerifiedCode;
  @override
  bool get resetPasswordStatus;
  @override
  String get error;
  @override
  String get email;
  @override
  String get verificationKey;
  @override
  ForgotPasswordPages get currentPage;
  @override
  @JsonKey(ignore: true)
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
