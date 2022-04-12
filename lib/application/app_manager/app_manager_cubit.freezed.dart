// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppManagerStateTearOff {
  const _$AppManagerStateTearOff();

  _AppManagerState call({bool logoutUser = false}) {
    return _AppManagerState(
      logoutUser: logoutUser,
    );
  }
}

/// @nodoc
const $AppManagerState = _$AppManagerStateTearOff();

/// @nodoc
mixin _$AppManagerState {
  bool get logoutUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppManagerStateCopyWith<AppManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppManagerStateCopyWith<$Res> {
  factory $AppManagerStateCopyWith(
          AppManagerState value, $Res Function(AppManagerState) then) =
      _$AppManagerStateCopyWithImpl<$Res>;
  $Res call({bool logoutUser});
}

/// @nodoc
class _$AppManagerStateCopyWithImpl<$Res>
    implements $AppManagerStateCopyWith<$Res> {
  _$AppManagerStateCopyWithImpl(this._value, this._then);

  final AppManagerState _value;
  // ignore: unused_field
  final $Res Function(AppManagerState) _then;

  @override
  $Res call({
    Object? logoutUser = freezed,
  }) {
    return _then(_value.copyWith(
      logoutUser: logoutUser == freezed
          ? _value.logoutUser
          : logoutUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AppManagerStateCopyWith<$Res>
    implements $AppManagerStateCopyWith<$Res> {
  factory _$AppManagerStateCopyWith(
          _AppManagerState value, $Res Function(_AppManagerState) then) =
      __$AppManagerStateCopyWithImpl<$Res>;
  @override
  $Res call({bool logoutUser});
}

/// @nodoc
class __$AppManagerStateCopyWithImpl<$Res>
    extends _$AppManagerStateCopyWithImpl<$Res>
    implements _$AppManagerStateCopyWith<$Res> {
  __$AppManagerStateCopyWithImpl(
      _AppManagerState _value, $Res Function(_AppManagerState) _then)
      : super(_value, (v) => _then(v as _AppManagerState));

  @override
  _AppManagerState get _value => super._value as _AppManagerState;

  @override
  $Res call({
    Object? logoutUser = freezed,
  }) {
    return _then(_AppManagerState(
      logoutUser: logoutUser == freezed
          ? _value.logoutUser
          : logoutUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppManagerState extends _AppManagerState {
  const _$_AppManagerState({this.logoutUser = false}) : super._();

  @JsonKey()
  @override
  final bool logoutUser;

  @override
  String toString() {
    return 'AppManagerState(logoutUser: $logoutUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppManagerState &&
            const DeepCollectionEquality()
                .equals(other.logoutUser, logoutUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(logoutUser));

  @JsonKey(ignore: true)
  @override
  _$AppManagerStateCopyWith<_AppManagerState> get copyWith =>
      __$AppManagerStateCopyWithImpl<_AppManagerState>(this, _$identity);
}

abstract class _AppManagerState extends AppManagerState {
  const factory _AppManagerState({bool logoutUser}) = _$_AppManagerState;
  const _AppManagerState._() : super._();

  @override
  bool get logoutUser;
  @override
  @JsonKey(ignore: true)
  _$AppManagerStateCopyWith<_AppManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}
