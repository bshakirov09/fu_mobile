// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'input_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InputFailuresTearOff {
  const _$InputFailuresTearOff();

  _Empty empty(String input) {
    return _Empty(
      input,
    );
  }

  _InvalidEmail invalidEmail(String input) {
    return _InvalidEmail(
      input,
    );
  }

  _ShortPassword shortPassword(String input) {
    return _ShortPassword(
      input,
    );
  }

  _PasswordMostBe passwordMustBe(String input) {
    return _PasswordMostBe(
      input,
    );
  }

  _PasswordDoesNotMuch passwordDoesNotMuch(String input) {
    return _PasswordDoesNotMuch(
      input,
    );
  }
}

/// @nodoc
const $InputFailures = _$InputFailuresTearOff();

/// @nodoc
mixin _$InputFailures {
  String get input => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidEmail,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) passwordDoesNotMuch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? passwordDoesNotMuch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? passwordDoesNotMuch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_PasswordDoesNotMuch value) passwordDoesNotMuch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_PasswordDoesNotMuch value)? passwordDoesNotMuch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_PasswordDoesNotMuch value)? passwordDoesNotMuch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputFailuresCopyWith<InputFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputFailuresCopyWith<$Res> {
  factory $InputFailuresCopyWith(
          InputFailures value, $Res Function(InputFailures) then) =
      _$InputFailuresCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$InputFailuresCopyWithImpl<$Res>
    implements $InputFailuresCopyWith<$Res> {
  _$InputFailuresCopyWithImpl(this._value, this._then);

  final InputFailures _value;
  // ignore: unused_field
  final $Res Function(InputFailures) _then;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_value.copyWith(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> implements $InputFailuresCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$InputFailuresCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_Empty(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Empty extends _Empty {
  const _$_Empty(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.empty(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Empty &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<_Empty> get copyWith =>
      __$EmptyCopyWithImpl<_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidEmail,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) passwordDoesNotMuch,
  }) {
    return empty(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? passwordDoesNotMuch,
  }) {
    return empty?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? passwordDoesNotMuch,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_PasswordDoesNotMuch value) passwordDoesNotMuch,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_PasswordDoesNotMuch value)? passwordDoesNotMuch,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_PasswordDoesNotMuch value)? passwordDoesNotMuch,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends InputFailures {
  const factory _Empty(String input) = _$_Empty;
  const _Empty._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$EmptyCopyWith<_Empty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidEmailCopyWith<$Res>
    implements $InputFailuresCopyWith<$Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail value, $Res Function(_InvalidEmail) then) =
      __$InvalidEmailCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<$Res>
    extends _$InputFailuresCopyWithImpl<$Res>
    implements _$InvalidEmailCopyWith<$Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail _value, $Res Function(_InvalidEmail) _then)
      : super(_value, (v) => _then(v as _InvalidEmail));

  @override
  _InvalidEmail get _value => super._value as _InvalidEmail;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_InvalidEmail(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidEmail extends _InvalidEmail {
  const _$_InvalidEmail(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.invalidEmail(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidEmail &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailCopyWith<_InvalidEmail> get copyWith =>
      __$InvalidEmailCopyWithImpl<_InvalidEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidEmail,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) passwordDoesNotMuch,
  }) {
    return invalidEmail(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? passwordDoesNotMuch,
  }) {
    return invalidEmail?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? passwordDoesNotMuch,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_PasswordDoesNotMuch value) passwordDoesNotMuch,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_PasswordDoesNotMuch value)? passwordDoesNotMuch,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_PasswordDoesNotMuch value)? passwordDoesNotMuch,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail extends InputFailures {
  const factory _InvalidEmail(String input) = _$_InvalidEmail;
  const _InvalidEmail._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$InvalidEmailCopyWith<_InvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShortPasswordCopyWith<$Res>
    implements $InputFailuresCopyWith<$Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword value, $Res Function(_ShortPassword) then) =
      __$ShortPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$ShortPasswordCopyWithImpl<$Res>
    extends _$InputFailuresCopyWithImpl<$Res>
    implements _$ShortPasswordCopyWith<$Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword _value, $Res Function(_ShortPassword) _then)
      : super(_value, (v) => _then(v as _ShortPassword));

  @override
  _ShortPassword get _value => super._value as _ShortPassword;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_ShortPassword(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShortPassword extends _ShortPassword {
  const _$_ShortPassword(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.shortPassword(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShortPassword &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$ShortPasswordCopyWith<_ShortPassword> get copyWith =>
      __$ShortPasswordCopyWithImpl<_ShortPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidEmail,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) passwordDoesNotMuch,
  }) {
    return shortPassword(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? passwordDoesNotMuch,
  }) {
    return shortPassword?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? passwordDoesNotMuch,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_PasswordDoesNotMuch value) passwordDoesNotMuch,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_PasswordDoesNotMuch value)? passwordDoesNotMuch,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_PasswordDoesNotMuch value)? passwordDoesNotMuch,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword extends InputFailures {
  const factory _ShortPassword(String input) = _$_ShortPassword;
  const _ShortPassword._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$ShortPasswordCopyWith<_ShortPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordMostBeCopyWith<$Res>
    implements $InputFailuresCopyWith<$Res> {
  factory _$PasswordMostBeCopyWith(
          _PasswordMostBe value, $Res Function(_PasswordMostBe) then) =
      __$PasswordMostBeCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$PasswordMostBeCopyWithImpl<$Res>
    extends _$InputFailuresCopyWithImpl<$Res>
    implements _$PasswordMostBeCopyWith<$Res> {
  __$PasswordMostBeCopyWithImpl(
      _PasswordMostBe _value, $Res Function(_PasswordMostBe) _then)
      : super(_value, (v) => _then(v as _PasswordMostBe));

  @override
  _PasswordMostBe get _value => super._value as _PasswordMostBe;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_PasswordMostBe(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordMostBe extends _PasswordMostBe {
  const _$_PasswordMostBe(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.passwordMustBe(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordMostBe &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$PasswordMostBeCopyWith<_PasswordMostBe> get copyWith =>
      __$PasswordMostBeCopyWithImpl<_PasswordMostBe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidEmail,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) passwordDoesNotMuch,
  }) {
    return passwordMustBe(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? passwordDoesNotMuch,
  }) {
    return passwordMustBe?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? passwordDoesNotMuch,
    required TResult orElse(),
  }) {
    if (passwordMustBe != null) {
      return passwordMustBe(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_PasswordDoesNotMuch value) passwordDoesNotMuch,
  }) {
    return passwordMustBe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_PasswordDoesNotMuch value)? passwordDoesNotMuch,
  }) {
    return passwordMustBe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_PasswordDoesNotMuch value)? passwordDoesNotMuch,
    required TResult orElse(),
  }) {
    if (passwordMustBe != null) {
      return passwordMustBe(this);
    }
    return orElse();
  }
}

abstract class _PasswordMostBe extends InputFailures {
  const factory _PasswordMostBe(String input) = _$_PasswordMostBe;
  const _PasswordMostBe._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$PasswordMostBeCopyWith<_PasswordMostBe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordDoesNotMuchCopyWith<$Res>
    implements $InputFailuresCopyWith<$Res> {
  factory _$PasswordDoesNotMuchCopyWith(_PasswordDoesNotMuch value,
          $Res Function(_PasswordDoesNotMuch) then) =
      __$PasswordDoesNotMuchCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$PasswordDoesNotMuchCopyWithImpl<$Res>
    extends _$InputFailuresCopyWithImpl<$Res>
    implements _$PasswordDoesNotMuchCopyWith<$Res> {
  __$PasswordDoesNotMuchCopyWithImpl(
      _PasswordDoesNotMuch _value, $Res Function(_PasswordDoesNotMuch) _then)
      : super(_value, (v) => _then(v as _PasswordDoesNotMuch));

  @override
  _PasswordDoesNotMuch get _value => super._value as _PasswordDoesNotMuch;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_PasswordDoesNotMuch(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordDoesNotMuch extends _PasswordDoesNotMuch {
  const _$_PasswordDoesNotMuch(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'InputFailures.passwordDoesNotMuch(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordDoesNotMuch &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$PasswordDoesNotMuchCopyWith<_PasswordDoesNotMuch> get copyWith =>
      __$PasswordDoesNotMuchCopyWithImpl<_PasswordDoesNotMuch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) empty,
    required TResult Function(String input) invalidEmail,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) passwordMustBe,
    required TResult Function(String input) passwordDoesNotMuch,
  }) {
    return passwordDoesNotMuch(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? passwordDoesNotMuch,
  }) {
    return passwordDoesNotMuch?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? empty,
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? passwordMustBe,
    TResult Function(String input)? passwordDoesNotMuch,
    required TResult orElse(),
  }) {
    if (passwordDoesNotMuch != null) {
      return passwordDoesNotMuch(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordMostBe value) passwordMustBe,
    required TResult Function(_PasswordDoesNotMuch value) passwordDoesNotMuch,
  }) {
    return passwordDoesNotMuch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_PasswordDoesNotMuch value)? passwordDoesNotMuch,
  }) {
    return passwordDoesNotMuch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordMostBe value)? passwordMustBe,
    TResult Function(_PasswordDoesNotMuch value)? passwordDoesNotMuch,
    required TResult orElse(),
  }) {
    if (passwordDoesNotMuch != null) {
      return passwordDoesNotMuch(this);
    }
    return orElse();
  }
}

abstract class _PasswordDoesNotMuch extends InputFailures {
  const factory _PasswordDoesNotMuch(String input) = _$_PasswordDoesNotMuch;
  const _PasswordDoesNotMuch._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$PasswordDoesNotMuchCopyWith<_PasswordDoesNotMuch> get copyWith =>
      throw _privateConstructorUsedError;
}
