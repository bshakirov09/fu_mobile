// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

  _GetNextPage getNextPage({AuthUserModel? authUserModel}) {
    return _GetNextPage(
      authUserModel: authUserModel,
    );
  }

  _CreateAccount createAccount() {
    return const _CreateAccount();
  }

  _RefreshState refreshState() {
    return const _RefreshState();
  }

  _GetPreviousPage getPreviousPage() {
    return const _GetPreviousPage();
  }

  _VerifyEmail verifyEmail({required String code}) {
    return _VerifyEmail(
      code: code,
    );
  }

  _FillProfile fillProfile({required Map<String, dynamic> userInfo}) {
    return _FillProfile(
      userInfo: userInfo,
    );
  }

  _ChoosePlan choosePlan({required int planIndex}) {
    return _ChoosePlan(
      planIndex: planIndex,
    );
  }

  _ResendVerificationCode resendVerificationCode() {
    return const _ResendVerificationCode();
  }
}

/// @nodoc
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthUserModel? authUserModel) getNextPage,
    required TResult Function() createAccount,
    required TResult Function() refreshState,
    required TResult Function() getPreviousPage,
    required TResult Function(String code) verifyEmail,
    required TResult Function(Map<String, dynamic> userInfo) fillProfile,
    required TResult Function(int planIndex) choosePlan,
    required TResult Function() resendVerificationCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_GetPreviousPage value) getPreviousPage,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_FillProfile value) fillProfile,
    required TResult Function(_ChoosePlan value) choosePlan,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class _$GetNextPageCopyWith<$Res> {
  factory _$GetNextPageCopyWith(
          _GetNextPage value, $Res Function(_GetNextPage) then) =
      __$GetNextPageCopyWithImpl<$Res>;
  $Res call({AuthUserModel? authUserModel});
}

/// @nodoc
class __$GetNextPageCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$GetNextPageCopyWith<$Res> {
  __$GetNextPageCopyWithImpl(
      _GetNextPage _value, $Res Function(_GetNextPage) _then)
      : super(_value, (v) => _then(v as _GetNextPage));

  @override
  _GetNextPage get _value => super._value as _GetNextPage;

  @override
  $Res call({
    Object? authUserModel = freezed,
  }) {
    return _then(_GetNextPage(
      authUserModel: authUserModel == freezed
          ? _value.authUserModel
          : authUserModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel?,
    ));
  }
}

/// @nodoc

class _$_GetNextPage extends _GetNextPage {
  const _$_GetNextPage({this.authUserModel}) : super._();

  @override
  final AuthUserModel? authUserModel;

  @override
  String toString() {
    return 'SignUpEvent.getNextPage(authUserModel: $authUserModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetNextPage &&
            const DeepCollectionEquality()
                .equals(other.authUserModel, authUserModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(authUserModel));

  @JsonKey(ignore: true)
  @override
  _$GetNextPageCopyWith<_GetNextPage> get copyWith =>
      __$GetNextPageCopyWithImpl<_GetNextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthUserModel? authUserModel) getNextPage,
    required TResult Function() createAccount,
    required TResult Function() refreshState,
    required TResult Function() getPreviousPage,
    required TResult Function(String code) verifyEmail,
    required TResult Function(Map<String, dynamic> userInfo) fillProfile,
    required TResult Function(int planIndex) choosePlan,
    required TResult Function() resendVerificationCode,
  }) {
    return getNextPage(authUserModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
  }) {
    return getNextPage?.call(authUserModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (getNextPage != null) {
      return getNextPage(authUserModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_GetPreviousPage value) getPreviousPage,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_FillProfile value) fillProfile,
    required TResult Function(_ChoosePlan value) choosePlan,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
  }) {
    return getNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
  }) {
    return getNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (getNextPage != null) {
      return getNextPage(this);
    }
    return orElse();
  }
}

abstract class _GetNextPage extends SignUpEvent {
  const factory _GetNextPage({AuthUserModel? authUserModel}) = _$_GetNextPage;
  const _GetNextPage._() : super._();

  AuthUserModel? get authUserModel;
  @JsonKey(ignore: true)
  _$GetNextPageCopyWith<_GetNextPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateAccountCopyWith<$Res> {
  factory _$CreateAccountCopyWith(
          _CreateAccount value, $Res Function(_CreateAccount) then) =
      __$CreateAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateAccountCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$CreateAccountCopyWith<$Res> {
  __$CreateAccountCopyWithImpl(
      _CreateAccount _value, $Res Function(_CreateAccount) _then)
      : super(_value, (v) => _then(v as _CreateAccount));

  @override
  _CreateAccount get _value => super._value as _CreateAccount;
}

/// @nodoc

class _$_CreateAccount extends _CreateAccount {
  const _$_CreateAccount() : super._();

  @override
  String toString() {
    return 'SignUpEvent.createAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthUserModel? authUserModel) getNextPage,
    required TResult Function() createAccount,
    required TResult Function() refreshState,
    required TResult Function() getPreviousPage,
    required TResult Function(String code) verifyEmail,
    required TResult Function(Map<String, dynamic> userInfo) fillProfile,
    required TResult Function(int planIndex) choosePlan,
    required TResult Function() resendVerificationCode,
  }) {
    return createAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
  }) {
    return createAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_GetPreviousPage value) getPreviousPage,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_FillProfile value) fillProfile,
    required TResult Function(_ChoosePlan value) choosePlan,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
  }) {
    return createAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
  }) {
    return createAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(this);
    }
    return orElse();
  }
}

abstract class _CreateAccount extends SignUpEvent {
  const factory _CreateAccount() = _$_CreateAccount;
  const _CreateAccount._() : super._();
}

/// @nodoc
abstract class _$RefreshStateCopyWith<$Res> {
  factory _$RefreshStateCopyWith(
          _RefreshState value, $Res Function(_RefreshState) then) =
      __$RefreshStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshStateCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.refreshState()';
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
    required TResult Function(AuthUserModel? authUserModel) getNextPage,
    required TResult Function() createAccount,
    required TResult Function() refreshState,
    required TResult Function() getPreviousPage,
    required TResult Function(String code) verifyEmail,
    required TResult Function(Map<String, dynamic> userInfo) fillProfile,
    required TResult Function(int planIndex) choosePlan,
    required TResult Function() resendVerificationCode,
  }) {
    return refreshState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
  }) {
    return refreshState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
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
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_GetPreviousPage value) getPreviousPage,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_FillProfile value) fillProfile,
    required TResult Function(_ChoosePlan value) choosePlan,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
  }) {
    return refreshState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
  }) {
    return refreshState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (refreshState != null) {
      return refreshState(this);
    }
    return orElse();
  }
}

abstract class _RefreshState extends SignUpEvent {
  const factory _RefreshState() = _$_RefreshState;
  const _RefreshState._() : super._();
}

/// @nodoc
abstract class _$GetPreviousPageCopyWith<$Res> {
  factory _$GetPreviousPageCopyWith(
          _GetPreviousPage value, $Res Function(_GetPreviousPage) then) =
      __$GetPreviousPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPreviousPageCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$GetPreviousPageCopyWith<$Res> {
  __$GetPreviousPageCopyWithImpl(
      _GetPreviousPage _value, $Res Function(_GetPreviousPage) _then)
      : super(_value, (v) => _then(v as _GetPreviousPage));

  @override
  _GetPreviousPage get _value => super._value as _GetPreviousPage;
}

/// @nodoc

class _$_GetPreviousPage extends _GetPreviousPage {
  const _$_GetPreviousPage() : super._();

  @override
  String toString() {
    return 'SignUpEvent.getPreviousPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetPreviousPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthUserModel? authUserModel) getNextPage,
    required TResult Function() createAccount,
    required TResult Function() refreshState,
    required TResult Function() getPreviousPage,
    required TResult Function(String code) verifyEmail,
    required TResult Function(Map<String, dynamic> userInfo) fillProfile,
    required TResult Function(int planIndex) choosePlan,
    required TResult Function() resendVerificationCode,
  }) {
    return getPreviousPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
  }) {
    return getPreviousPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (getPreviousPage != null) {
      return getPreviousPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_GetPreviousPage value) getPreviousPage,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_FillProfile value) fillProfile,
    required TResult Function(_ChoosePlan value) choosePlan,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
  }) {
    return getPreviousPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
  }) {
    return getPreviousPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (getPreviousPage != null) {
      return getPreviousPage(this);
    }
    return orElse();
  }
}

abstract class _GetPreviousPage extends SignUpEvent {
  const factory _GetPreviousPage() = _$_GetPreviousPage;
  const _GetPreviousPage._() : super._();
}

/// @nodoc
abstract class _$VerifyEmailCopyWith<$Res> {
  factory _$VerifyEmailCopyWith(
          _VerifyEmail value, $Res Function(_VerifyEmail) then) =
      __$VerifyEmailCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class __$VerifyEmailCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$VerifyEmailCopyWith<$Res> {
  __$VerifyEmailCopyWithImpl(
      _VerifyEmail _value, $Res Function(_VerifyEmail) _then)
      : super(_value, (v) => _then(v as _VerifyEmail));

  @override
  _VerifyEmail get _value => super._value as _VerifyEmail;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_VerifyEmail(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyEmail extends _VerifyEmail {
  const _$_VerifyEmail({required this.code}) : super._();

  @override
  final String code;

  @override
  String toString() {
    return 'SignUpEvent.verifyEmail(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyEmail &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$VerifyEmailCopyWith<_VerifyEmail> get copyWith =>
      __$VerifyEmailCopyWithImpl<_VerifyEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthUserModel? authUserModel) getNextPage,
    required TResult Function() createAccount,
    required TResult Function() refreshState,
    required TResult Function() getPreviousPage,
    required TResult Function(String code) verifyEmail,
    required TResult Function(Map<String, dynamic> userInfo) fillProfile,
    required TResult Function(int planIndex) choosePlan,
    required TResult Function() resendVerificationCode,
  }) {
    return verifyEmail(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
  }) {
    return verifyEmail?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_GetPreviousPage value) getPreviousPage,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_FillProfile value) fillProfile,
    required TResult Function(_ChoosePlan value) choosePlan,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
  }) {
    return verifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class _VerifyEmail extends SignUpEvent {
  const factory _VerifyEmail({required String code}) = _$_VerifyEmail;
  const _VerifyEmail._() : super._();

  String get code;
  @JsonKey(ignore: true)
  _$VerifyEmailCopyWith<_VerifyEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FillProfileCopyWith<$Res> {
  factory _$FillProfileCopyWith(
          _FillProfile value, $Res Function(_FillProfile) then) =
      __$FillProfileCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> userInfo});
}

/// @nodoc
class __$FillProfileCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$FillProfileCopyWith<$Res> {
  __$FillProfileCopyWithImpl(
      _FillProfile _value, $Res Function(_FillProfile) _then)
      : super(_value, (v) => _then(v as _FillProfile));

  @override
  _FillProfile get _value => super._value as _FillProfile;

  @override
  $Res call({
    Object? userInfo = freezed,
  }) {
    return _then(_FillProfile(
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_FillProfile extends _FillProfile {
  const _$_FillProfile({required this.userInfo}) : super._();

  @override
  final Map<String, dynamic> userInfo;

  @override
  String toString() {
    return 'SignUpEvent.fillProfile(userInfo: $userInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FillProfile &&
            const DeepCollectionEquality().equals(other.userInfo, userInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userInfo));

  @JsonKey(ignore: true)
  @override
  _$FillProfileCopyWith<_FillProfile> get copyWith =>
      __$FillProfileCopyWithImpl<_FillProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthUserModel? authUserModel) getNextPage,
    required TResult Function() createAccount,
    required TResult Function() refreshState,
    required TResult Function() getPreviousPage,
    required TResult Function(String code) verifyEmail,
    required TResult Function(Map<String, dynamic> userInfo) fillProfile,
    required TResult Function(int planIndex) choosePlan,
    required TResult Function() resendVerificationCode,
  }) {
    return fillProfile(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
  }) {
    return fillProfile?.call(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (fillProfile != null) {
      return fillProfile(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_GetPreviousPage value) getPreviousPage,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_FillProfile value) fillProfile,
    required TResult Function(_ChoosePlan value) choosePlan,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
  }) {
    return fillProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
  }) {
    return fillProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (fillProfile != null) {
      return fillProfile(this);
    }
    return orElse();
  }
}

abstract class _FillProfile extends SignUpEvent {
  const factory _FillProfile({required Map<String, dynamic> userInfo}) =
      _$_FillProfile;
  const _FillProfile._() : super._();

  Map<String, dynamic> get userInfo;
  @JsonKey(ignore: true)
  _$FillProfileCopyWith<_FillProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChoosePlanCopyWith<$Res> {
  factory _$ChoosePlanCopyWith(
          _ChoosePlan value, $Res Function(_ChoosePlan) then) =
      __$ChoosePlanCopyWithImpl<$Res>;
  $Res call({int planIndex});
}

/// @nodoc
class __$ChoosePlanCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$ChoosePlanCopyWith<$Res> {
  __$ChoosePlanCopyWithImpl(
      _ChoosePlan _value, $Res Function(_ChoosePlan) _then)
      : super(_value, (v) => _then(v as _ChoosePlan));

  @override
  _ChoosePlan get _value => super._value as _ChoosePlan;

  @override
  $Res call({
    Object? planIndex = freezed,
  }) {
    return _then(_ChoosePlan(
      planIndex: planIndex == freezed
          ? _value.planIndex
          : planIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChoosePlan extends _ChoosePlan {
  const _$_ChoosePlan({required this.planIndex}) : super._();

  @override
  final int planIndex;

  @override
  String toString() {
    return 'SignUpEvent.choosePlan(planIndex: $planIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChoosePlan &&
            const DeepCollectionEquality().equals(other.planIndex, planIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(planIndex));

  @JsonKey(ignore: true)
  @override
  _$ChoosePlanCopyWith<_ChoosePlan> get copyWith =>
      __$ChoosePlanCopyWithImpl<_ChoosePlan>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthUserModel? authUserModel) getNextPage,
    required TResult Function() createAccount,
    required TResult Function() refreshState,
    required TResult Function() getPreviousPage,
    required TResult Function(String code) verifyEmail,
    required TResult Function(Map<String, dynamic> userInfo) fillProfile,
    required TResult Function(int planIndex) choosePlan,
    required TResult Function() resendVerificationCode,
  }) {
    return choosePlan(planIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
  }) {
    return choosePlan?.call(planIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (choosePlan != null) {
      return choosePlan(planIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_GetPreviousPage value) getPreviousPage,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_FillProfile value) fillProfile,
    required TResult Function(_ChoosePlan value) choosePlan,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
  }) {
    return choosePlan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
  }) {
    return choosePlan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (choosePlan != null) {
      return choosePlan(this);
    }
    return orElse();
  }
}

abstract class _ChoosePlan extends SignUpEvent {
  const factory _ChoosePlan({required int planIndex}) = _$_ChoosePlan;
  const _ChoosePlan._() : super._();

  int get planIndex;
  @JsonKey(ignore: true)
  _$ChoosePlanCopyWith<_ChoosePlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResendVerificationCodeCopyWith<$Res> {
  factory _$ResendVerificationCodeCopyWith(_ResendVerificationCode value,
          $Res Function(_ResendVerificationCode) then) =
      __$ResendVerificationCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResendVerificationCodeCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.resendVerificationCode()';
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
    required TResult Function(AuthUserModel? authUserModel) getNextPage,
    required TResult Function() createAccount,
    required TResult Function() refreshState,
    required TResult Function() getPreviousPage,
    required TResult Function(String code) verifyEmail,
    required TResult Function(Map<String, dynamic> userInfo) fillProfile,
    required TResult Function(int planIndex) choosePlan,
    required TResult Function() resendVerificationCode,
  }) {
    return resendVerificationCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
  }) {
    return resendVerificationCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUserModel? authUserModel)? getNextPage,
    TResult Function()? createAccount,
    TResult Function()? refreshState,
    TResult Function()? getPreviousPage,
    TResult Function(String code)? verifyEmail,
    TResult Function(Map<String, dynamic> userInfo)? fillProfile,
    TResult Function(int planIndex)? choosePlan,
    TResult Function()? resendVerificationCode,
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
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_RefreshState value) refreshState,
    required TResult Function(_GetPreviousPage value) getPreviousPage,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_FillProfile value) fillProfile,
    required TResult Function(_ChoosePlan value) choosePlan,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
  }) {
    return resendVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
  }) {
    return resendVerificationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_RefreshState value)? refreshState,
    TResult Function(_GetPreviousPage value)? getPreviousPage,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_FillProfile value)? fillProfile,
    TResult Function(_ChoosePlan value)? choosePlan,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    required TResult orElse(),
  }) {
    if (resendVerificationCode != null) {
      return resendVerificationCode(this);
    }
    return orElse();
  }
}

abstract class _ResendVerificationCode extends SignUpEvent {
  const factory _ResendVerificationCode() = _$_ResendVerificationCode;
  const _ResendVerificationCode._() : super._();
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  _SignUpState call(
      {bool isLoading = false,
      bool hasError = false,
      String error = '',
      Widget currentPage = const SignUpOnePage(),
      int progressIndicatorIndex = 0,
      AuthPages currentPageEnum = AuthPages.signUpOne,
      String appBarText = 'Sign-up',
      bool isCreatedAccount = false}) {
    return _SignUpState(
      isLoading: isLoading,
      hasError: hasError,
      error: error,
      currentPage: currentPage,
      progressIndicatorIndex: progressIndicatorIndex,
      currentPageEnum: currentPageEnum,
      appBarText: appBarText,
      isCreatedAccount: isCreatedAccount,
    );
  }
}

/// @nodoc
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  Widget get currentPage => throw _privateConstructorUsedError;
  int get progressIndicatorIndex => throw _privateConstructorUsedError;
  AuthPages get currentPageEnum => throw _privateConstructorUsedError;
  String get appBarText => throw _privateConstructorUsedError;
  bool get isCreatedAccount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      String error,
      Widget currentPage,
      int progressIndicatorIndex,
      AuthPages currentPageEnum,
      String appBarText,
      bool isCreatedAccount});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? error = freezed,
    Object? currentPage = freezed,
    Object? progressIndicatorIndex = freezed,
    Object? currentPageEnum = freezed,
    Object? appBarText = freezed,
    Object? isCreatedAccount = freezed,
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
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as Widget,
      progressIndicatorIndex: progressIndicatorIndex == freezed
          ? _value.progressIndicatorIndex
          : progressIndicatorIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentPageEnum: currentPageEnum == freezed
          ? _value.currentPageEnum
          : currentPageEnum // ignore: cast_nullable_to_non_nullable
              as AuthPages,
      appBarText: appBarText == freezed
          ? _value.appBarText
          : appBarText // ignore: cast_nullable_to_non_nullable
              as String,
      isCreatedAccount: isCreatedAccount == freezed
          ? _value.isCreatedAccount
          : isCreatedAccount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      String error,
      Widget currentPage,
      int progressIndicatorIndex,
      AuthPages currentPageEnum,
      String appBarText,
      bool isCreatedAccount});
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? error = freezed,
    Object? currentPage = freezed,
    Object? progressIndicatorIndex = freezed,
    Object? currentPageEnum = freezed,
    Object? appBarText = freezed,
    Object? isCreatedAccount = freezed,
  }) {
    return _then(_SignUpState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as Widget,
      progressIndicatorIndex: progressIndicatorIndex == freezed
          ? _value.progressIndicatorIndex
          : progressIndicatorIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentPageEnum: currentPageEnum == freezed
          ? _value.currentPageEnum
          : currentPageEnum // ignore: cast_nullable_to_non_nullable
              as AuthPages,
      appBarText: appBarText == freezed
          ? _value.appBarText
          : appBarText // ignore: cast_nullable_to_non_nullable
              as String,
      isCreatedAccount: isCreatedAccount == freezed
          ? _value.isCreatedAccount
          : isCreatedAccount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignUpState extends _SignUpState {
  const _$_SignUpState(
      {this.isLoading = false,
      this.hasError = false,
      this.error = '',
      this.currentPage = const SignUpOnePage(),
      this.progressIndicatorIndex = 0,
      this.currentPageEnum = AuthPages.signUpOne,
      this.appBarText = 'Sign-up',
      this.isCreatedAccount = false})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool hasError;
  @JsonKey()
  @override
  final String error;
  @JsonKey()
  @override
  final Widget currentPage;
  @JsonKey()
  @override
  final int progressIndicatorIndex;
  @JsonKey()
  @override
  final AuthPages currentPageEnum;
  @JsonKey()
  @override
  final String appBarText;
  @JsonKey()
  @override
  final bool isCreatedAccount;

  @override
  String toString() {
    return 'SignUpState(isLoading: $isLoading, hasError: $hasError, error: $error, currentPage: $currentPage, progressIndicatorIndex: $progressIndicatorIndex, currentPageEnum: $currentPageEnum, appBarText: $appBarText, isCreatedAccount: $isCreatedAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality()
                .equals(other.progressIndicatorIndex, progressIndicatorIndex) &&
            const DeepCollectionEquality()
                .equals(other.currentPageEnum, currentPageEnum) &&
            const DeepCollectionEquality()
                .equals(other.appBarText, appBarText) &&
            const DeepCollectionEquality()
                .equals(other.isCreatedAccount, isCreatedAccount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(progressIndicatorIndex),
      const DeepCollectionEquality().hash(currentPageEnum),
      const DeepCollectionEquality().hash(appBarText),
      const DeepCollectionEquality().hash(isCreatedAccount));

  @JsonKey(ignore: true)
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState extends SignUpState {
  const factory _SignUpState(
      {bool isLoading,
      bool hasError,
      String error,
      Widget currentPage,
      int progressIndicatorIndex,
      AuthPages currentPageEnum,
      String appBarText,
      bool isCreatedAccount}) = _$_SignUpState;
  const _SignUpState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get error;
  @override
  Widget get currentPage;
  @override
  int get progressIndicatorIndex;
  @override
  AuthPages get currentPageEnum;
  @override
  String get appBarText;
  @override
  bool get isCreatedAccount;
  @override
  @JsonKey(ignore: true)
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
