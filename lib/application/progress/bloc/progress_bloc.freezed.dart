// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'progress_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProgressEventTearOff {
  const _$ProgressEventTearOff();

  _GetWeight getWeight({required String duration}) {
    return _GetWeight(
      duration: duration,
    );
  }

  _AddCheck addCheck() {
    return const _AddCheck();
  }

  _CreateWeight createWeight({required String weight}) {
    return _CreateWeight(
      weight: weight,
    );
  }

  _UpdateWeight updateWeight({required String id, required String weight}) {
    return _UpdateWeight(
      id: id,
      weight: weight,
    );
  }

  _GetProgressDetail getProgressDetail({required String id}) {
    return _GetProgressDetail(
      id: id,
    );
  }
}

/// @nodoc
const $ProgressEvent = _$ProgressEventTearOff();

/// @nodoc
mixin _$ProgressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String duration) getWeight,
    required TResult Function() addCheck,
    required TResult Function(String weight) createWeight,
    required TResult Function(String id, String weight) updateWeight,
    required TResult Function(String id) getProgressDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String duration)? getWeight,
    TResult Function()? addCheck,
    TResult Function(String weight)? createWeight,
    TResult Function(String id, String weight)? updateWeight,
    TResult Function(String id)? getProgressDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String duration)? getWeight,
    TResult Function()? addCheck,
    TResult Function(String weight)? createWeight,
    TResult Function(String id, String weight)? updateWeight,
    TResult Function(String id)? getProgressDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeight value) getWeight,
    required TResult Function(_AddCheck value) addCheck,
    required TResult Function(_CreateWeight value) createWeight,
    required TResult Function(_UpdateWeight value) updateWeight,
    required TResult Function(_GetProgressDetail value) getProgressDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetWeight value)? getWeight,
    TResult Function(_AddCheck value)? addCheck,
    TResult Function(_CreateWeight value)? createWeight,
    TResult Function(_UpdateWeight value)? updateWeight,
    TResult Function(_GetProgressDetail value)? getProgressDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeight value)? getWeight,
    TResult Function(_AddCheck value)? addCheck,
    TResult Function(_CreateWeight value)? createWeight,
    TResult Function(_UpdateWeight value)? updateWeight,
    TResult Function(_GetProgressDetail value)? getProgressDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressEventCopyWith<$Res> {
  factory $ProgressEventCopyWith(
          ProgressEvent value, $Res Function(ProgressEvent) then) =
      _$ProgressEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProgressEventCopyWithImpl<$Res>
    implements $ProgressEventCopyWith<$Res> {
  _$ProgressEventCopyWithImpl(this._value, this._then);

  final ProgressEvent _value;
  // ignore: unused_field
  final $Res Function(ProgressEvent) _then;
}

/// @nodoc
abstract class _$GetWeightCopyWith<$Res> {
  factory _$GetWeightCopyWith(
          _GetWeight value, $Res Function(_GetWeight) then) =
      __$GetWeightCopyWithImpl<$Res>;
  $Res call({String duration});
}

/// @nodoc
class __$GetWeightCopyWithImpl<$Res> extends _$ProgressEventCopyWithImpl<$Res>
    implements _$GetWeightCopyWith<$Res> {
  __$GetWeightCopyWithImpl(_GetWeight _value, $Res Function(_GetWeight) _then)
      : super(_value, (v) => _then(v as _GetWeight));

  @override
  _GetWeight get _value => super._value as _GetWeight;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_GetWeight(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetWeight extends _GetWeight {
  const _$_GetWeight({required this.duration}) : super._();

  @override
  final String duration;

  @override
  String toString() {
    return 'ProgressEvent.getWeight(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetWeight &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$GetWeightCopyWith<_GetWeight> get copyWith =>
      __$GetWeightCopyWithImpl<_GetWeight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String duration) getWeight,
    required TResult Function() addCheck,
    required TResult Function(String weight) createWeight,
    required TResult Function(String id, String weight) updateWeight,
    required TResult Function(String id) getProgressDetail,
  }) {
    return getWeight(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String duration)? getWeight,
    TResult Function()? addCheck,
    TResult Function(String weight)? createWeight,
    TResult Function(String id, String weight)? updateWeight,
    TResult Function(String id)? getProgressDetail,
  }) {
    return getWeight?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String duration)? getWeight,
    TResult Function()? addCheck,
    TResult Function(String weight)? createWeight,
    TResult Function(String id, String weight)? updateWeight,
    TResult Function(String id)? getProgressDetail,
    required TResult orElse(),
  }) {
    if (getWeight != null) {
      return getWeight(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeight value) getWeight,
    required TResult Function(_AddCheck value) addCheck,
    required TResult Function(_CreateWeight value) createWeight,
    required TResult Function(_UpdateWeight value) updateWeight,
    required TResult Function(_GetProgressDetail value) getProgressDetail,
  }) {
    return getWeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetWeight value)? getWeight,
    TResult Function(_AddCheck value)? addCheck,
    TResult Function(_CreateWeight value)? createWeight,
    TResult Function(_UpdateWeight value)? updateWeight,
    TResult Function(_GetProgressDetail value)? getProgressDetail,
  }) {
    return getWeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeight value)? getWeight,
    TResult Function(_AddCheck value)? addCheck,
    TResult Function(_CreateWeight value)? createWeight,
    TResult Function(_UpdateWeight value)? updateWeight,
    TResult Function(_GetProgressDetail value)? getProgressDetail,
    required TResult orElse(),
  }) {
    if (getWeight != null) {
      return getWeight(this);
    }
    return orElse();
  }
}

abstract class _GetWeight extends ProgressEvent {
  const factory _GetWeight({required String duration}) = _$_GetWeight;
  const _GetWeight._() : super._();

  String get duration;
  @JsonKey(ignore: true)
  _$GetWeightCopyWith<_GetWeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddCheckCopyWith<$Res> {
  factory _$AddCheckCopyWith(_AddCheck value, $Res Function(_AddCheck) then) =
      __$AddCheckCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddCheckCopyWithImpl<$Res> extends _$ProgressEventCopyWithImpl<$Res>
    implements _$AddCheckCopyWith<$Res> {
  __$AddCheckCopyWithImpl(_AddCheck _value, $Res Function(_AddCheck) _then)
      : super(_value, (v) => _then(v as _AddCheck));

  @override
  _AddCheck get _value => super._value as _AddCheck;
}

/// @nodoc

class _$_AddCheck extends _AddCheck {
  const _$_AddCheck() : super._();

  @override
  String toString() {
    return 'ProgressEvent.addCheck()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddCheck);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String duration) getWeight,
    required TResult Function() addCheck,
    required TResult Function(String weight) createWeight,
    required TResult Function(String id, String weight) updateWeight,
    required TResult Function(String id) getProgressDetail,
  }) {
    return addCheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String duration)? getWeight,
    TResult Function()? addCheck,
    TResult Function(String weight)? createWeight,
    TResult Function(String id, String weight)? updateWeight,
    TResult Function(String id)? getProgressDetail,
  }) {
    return addCheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String duration)? getWeight,
    TResult Function()? addCheck,
    TResult Function(String weight)? createWeight,
    TResult Function(String id, String weight)? updateWeight,
    TResult Function(String id)? getProgressDetail,
    required TResult orElse(),
  }) {
    if (addCheck != null) {
      return addCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeight value) getWeight,
    required TResult Function(_AddCheck value) addCheck,
    required TResult Function(_CreateWeight value) createWeight,
    required TResult Function(_UpdateWeight value) updateWeight,
    required TResult Function(_GetProgressDetail value) getProgressDetail,
  }) {
    return addCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetWeight value)? getWeight,
    TResult Function(_AddCheck value)? addCheck,
    TResult Function(_CreateWeight value)? createWeight,
    TResult Function(_UpdateWeight value)? updateWeight,
    TResult Function(_GetProgressDetail value)? getProgressDetail,
  }) {
    return addCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeight value)? getWeight,
    TResult Function(_AddCheck value)? addCheck,
    TResult Function(_CreateWeight value)? createWeight,
    TResult Function(_UpdateWeight value)? updateWeight,
    TResult Function(_GetProgressDetail value)? getProgressDetail,
    required TResult orElse(),
  }) {
    if (addCheck != null) {
      return addCheck(this);
    }
    return orElse();
  }
}

abstract class _AddCheck extends ProgressEvent {
  const factory _AddCheck() = _$_AddCheck;
  const _AddCheck._() : super._();
}

/// @nodoc
abstract class _$CreateWeightCopyWith<$Res> {
  factory _$CreateWeightCopyWith(
          _CreateWeight value, $Res Function(_CreateWeight) then) =
      __$CreateWeightCopyWithImpl<$Res>;
  $Res call({String weight});
}

/// @nodoc
class __$CreateWeightCopyWithImpl<$Res>
    extends _$ProgressEventCopyWithImpl<$Res>
    implements _$CreateWeightCopyWith<$Res> {
  __$CreateWeightCopyWithImpl(
      _CreateWeight _value, $Res Function(_CreateWeight) _then)
      : super(_value, (v) => _then(v as _CreateWeight));

  @override
  _CreateWeight get _value => super._value as _CreateWeight;

  @override
  $Res call({
    Object? weight = freezed,
  }) {
    return _then(_CreateWeight(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateWeight extends _CreateWeight {
  const _$_CreateWeight({required this.weight}) : super._();

  @override
  final String weight;

  @override
  String toString() {
    return 'ProgressEvent.createWeight(weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateWeight &&
            const DeepCollectionEquality().equals(other.weight, weight));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(weight));

  @JsonKey(ignore: true)
  @override
  _$CreateWeightCopyWith<_CreateWeight> get copyWith =>
      __$CreateWeightCopyWithImpl<_CreateWeight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String duration) getWeight,
    required TResult Function() addCheck,
    required TResult Function(String weight) createWeight,
    required TResult Function(String id, String weight) updateWeight,
    required TResult Function(String id) getProgressDetail,
  }) {
    return createWeight(weight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String duration)? getWeight,
    TResult Function()? addCheck,
    TResult Function(String weight)? createWeight,
    TResult Function(String id, String weight)? updateWeight,
    TResult Function(String id)? getProgressDetail,
  }) {
    return createWeight?.call(weight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String duration)? getWeight,
    TResult Function()? addCheck,
    TResult Function(String weight)? createWeight,
    TResult Function(String id, String weight)? updateWeight,
    TResult Function(String id)? getProgressDetail,
    required TResult orElse(),
  }) {
    if (createWeight != null) {
      return createWeight(weight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeight value) getWeight,
    required TResult Function(_AddCheck value) addCheck,
    required TResult Function(_CreateWeight value) createWeight,
    required TResult Function(_UpdateWeight value) updateWeight,
    required TResult Function(_GetProgressDetail value) getProgressDetail,
  }) {
    return createWeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetWeight value)? getWeight,
    TResult Function(_AddCheck value)? addCheck,
    TResult Function(_CreateWeight value)? createWeight,
    TResult Function(_UpdateWeight value)? updateWeight,
    TResult Function(_GetProgressDetail value)? getProgressDetail,
  }) {
    return createWeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeight value)? getWeight,
    TResult Function(_AddCheck value)? addCheck,
    TResult Function(_CreateWeight value)? createWeight,
    TResult Function(_UpdateWeight value)? updateWeight,
    TResult Function(_GetProgressDetail value)? getProgressDetail,
    required TResult orElse(),
  }) {
    if (createWeight != null) {
      return createWeight(this);
    }
    return orElse();
  }
}

abstract class _CreateWeight extends ProgressEvent {
  const factory _CreateWeight({required String weight}) = _$_CreateWeight;
  const _CreateWeight._() : super._();

  String get weight;
  @JsonKey(ignore: true)
  _$CreateWeightCopyWith<_CreateWeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateWeightCopyWith<$Res> {
  factory _$UpdateWeightCopyWith(
          _UpdateWeight value, $Res Function(_UpdateWeight) then) =
      __$UpdateWeightCopyWithImpl<$Res>;
  $Res call({String id, String weight});
}

/// @nodoc
class __$UpdateWeightCopyWithImpl<$Res>
    extends _$ProgressEventCopyWithImpl<$Res>
    implements _$UpdateWeightCopyWith<$Res> {
  __$UpdateWeightCopyWithImpl(
      _UpdateWeight _value, $Res Function(_UpdateWeight) _then)
      : super(_value, (v) => _then(v as _UpdateWeight));

  @override
  _UpdateWeight get _value => super._value as _UpdateWeight;

  @override
  $Res call({
    Object? id = freezed,
    Object? weight = freezed,
  }) {
    return _then(_UpdateWeight(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateWeight extends _UpdateWeight {
  const _$_UpdateWeight({required this.id, required this.weight}) : super._();

  @override
  final String id;
  @override
  final String weight;

  @override
  String toString() {
    return 'ProgressEvent.updateWeight(id: $id, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateWeight &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.weight, weight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(weight));

  @JsonKey(ignore: true)
  @override
  _$UpdateWeightCopyWith<_UpdateWeight> get copyWith =>
      __$UpdateWeightCopyWithImpl<_UpdateWeight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String duration) getWeight,
    required TResult Function() addCheck,
    required TResult Function(String weight) createWeight,
    required TResult Function(String id, String weight) updateWeight,
    required TResult Function(String id) getProgressDetail,
  }) {
    return updateWeight(id, weight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String duration)? getWeight,
    TResult Function()? addCheck,
    TResult Function(String weight)? createWeight,
    TResult Function(String id, String weight)? updateWeight,
    TResult Function(String id)? getProgressDetail,
  }) {
    return updateWeight?.call(id, weight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String duration)? getWeight,
    TResult Function()? addCheck,
    TResult Function(String weight)? createWeight,
    TResult Function(String id, String weight)? updateWeight,
    TResult Function(String id)? getProgressDetail,
    required TResult orElse(),
  }) {
    if (updateWeight != null) {
      return updateWeight(id, weight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeight value) getWeight,
    required TResult Function(_AddCheck value) addCheck,
    required TResult Function(_CreateWeight value) createWeight,
    required TResult Function(_UpdateWeight value) updateWeight,
    required TResult Function(_GetProgressDetail value) getProgressDetail,
  }) {
    return updateWeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetWeight value)? getWeight,
    TResult Function(_AddCheck value)? addCheck,
    TResult Function(_CreateWeight value)? createWeight,
    TResult Function(_UpdateWeight value)? updateWeight,
    TResult Function(_GetProgressDetail value)? getProgressDetail,
  }) {
    return updateWeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeight value)? getWeight,
    TResult Function(_AddCheck value)? addCheck,
    TResult Function(_CreateWeight value)? createWeight,
    TResult Function(_UpdateWeight value)? updateWeight,
    TResult Function(_GetProgressDetail value)? getProgressDetail,
    required TResult orElse(),
  }) {
    if (updateWeight != null) {
      return updateWeight(this);
    }
    return orElse();
  }
}

abstract class _UpdateWeight extends ProgressEvent {
  const factory _UpdateWeight({required String id, required String weight}) =
      _$_UpdateWeight;
  const _UpdateWeight._() : super._();

  String get id;
  String get weight;
  @JsonKey(ignore: true)
  _$UpdateWeightCopyWith<_UpdateWeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetProgressDetailCopyWith<$Res> {
  factory _$GetProgressDetailCopyWith(
          _GetProgressDetail value, $Res Function(_GetProgressDetail) then) =
      __$GetProgressDetailCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$GetProgressDetailCopyWithImpl<$Res>
    extends _$ProgressEventCopyWithImpl<$Res>
    implements _$GetProgressDetailCopyWith<$Res> {
  __$GetProgressDetailCopyWithImpl(
      _GetProgressDetail _value, $Res Function(_GetProgressDetail) _then)
      : super(_value, (v) => _then(v as _GetProgressDetail));

  @override
  _GetProgressDetail get _value => super._value as _GetProgressDetail;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_GetProgressDetail(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetProgressDetail extends _GetProgressDetail {
  const _$_GetProgressDetail({required this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'ProgressEvent.getProgressDetail(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetProgressDetail &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$GetProgressDetailCopyWith<_GetProgressDetail> get copyWith =>
      __$GetProgressDetailCopyWithImpl<_GetProgressDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String duration) getWeight,
    required TResult Function() addCheck,
    required TResult Function(String weight) createWeight,
    required TResult Function(String id, String weight) updateWeight,
    required TResult Function(String id) getProgressDetail,
  }) {
    return getProgressDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String duration)? getWeight,
    TResult Function()? addCheck,
    TResult Function(String weight)? createWeight,
    TResult Function(String id, String weight)? updateWeight,
    TResult Function(String id)? getProgressDetail,
  }) {
    return getProgressDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String duration)? getWeight,
    TResult Function()? addCheck,
    TResult Function(String weight)? createWeight,
    TResult Function(String id, String weight)? updateWeight,
    TResult Function(String id)? getProgressDetail,
    required TResult orElse(),
  }) {
    if (getProgressDetail != null) {
      return getProgressDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeight value) getWeight,
    required TResult Function(_AddCheck value) addCheck,
    required TResult Function(_CreateWeight value) createWeight,
    required TResult Function(_UpdateWeight value) updateWeight,
    required TResult Function(_GetProgressDetail value) getProgressDetail,
  }) {
    return getProgressDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetWeight value)? getWeight,
    TResult Function(_AddCheck value)? addCheck,
    TResult Function(_CreateWeight value)? createWeight,
    TResult Function(_UpdateWeight value)? updateWeight,
    TResult Function(_GetProgressDetail value)? getProgressDetail,
  }) {
    return getProgressDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeight value)? getWeight,
    TResult Function(_AddCheck value)? addCheck,
    TResult Function(_CreateWeight value)? createWeight,
    TResult Function(_UpdateWeight value)? updateWeight,
    TResult Function(_GetProgressDetail value)? getProgressDetail,
    required TResult orElse(),
  }) {
    if (getProgressDetail != null) {
      return getProgressDetail(this);
    }
    return orElse();
  }
}

abstract class _GetProgressDetail extends ProgressEvent {
  const factory _GetProgressDetail({required String id}) = _$_GetProgressDetail;
  const _GetProgressDetail._() : super._();

  String get id;
  @JsonKey(ignore: true)
  _$GetProgressDetailCopyWith<_GetProgressDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProgressStateTearOff {
  const _$ProgressStateTearOff();

  _ProgressState call(
      {bool isLoading = true,
      bool hasError = false,
      String error = '',
      bool update = false,
      Map<dynamic, dynamic> weight = const {},
      AddCheckWeightModel? addCheckWeightModel = null,
      GetProgressDetailModel? getProgressDetailModel = null,
      ProgressPages currentPage = ProgressPages.listweight}) {
    return _ProgressState(
      isLoading: isLoading,
      hasError: hasError,
      error: error,
      update: update,
      weight: weight,
      addCheckWeightModel: addCheckWeightModel,
      getProgressDetailModel: getProgressDetailModel,
      currentPage: currentPage,
    );
  }
}

/// @nodoc
const $ProgressState = _$ProgressStateTearOff();

/// @nodoc
mixin _$ProgressState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get update => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get weight => throw _privateConstructorUsedError;
  AddCheckWeightModel? get addCheckWeightModel =>
      throw _privateConstructorUsedError;
  GetProgressDetailModel? get getProgressDetailModel =>
      throw _privateConstructorUsedError;
  ProgressPages get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgressStateCopyWith<ProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressStateCopyWith<$Res> {
  factory $ProgressStateCopyWith(
          ProgressState value, $Res Function(ProgressState) then) =
      _$ProgressStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      String error,
      bool update,
      Map<dynamic, dynamic> weight,
      AddCheckWeightModel? addCheckWeightModel,
      GetProgressDetailModel? getProgressDetailModel,
      ProgressPages currentPage});
}

/// @nodoc
class _$ProgressStateCopyWithImpl<$Res>
    implements $ProgressStateCopyWith<$Res> {
  _$ProgressStateCopyWithImpl(this._value, this._then);

  final ProgressState _value;
  // ignore: unused_field
  final $Res Function(ProgressState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? error = freezed,
    Object? update = freezed,
    Object? weight = freezed,
    Object? addCheckWeightModel = freezed,
    Object? getProgressDetailModel = freezed,
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
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      update: update == freezed
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      addCheckWeightModel: addCheckWeightModel == freezed
          ? _value.addCheckWeightModel
          : addCheckWeightModel // ignore: cast_nullable_to_non_nullable
              as AddCheckWeightModel?,
      getProgressDetailModel: getProgressDetailModel == freezed
          ? _value.getProgressDetailModel
          : getProgressDetailModel // ignore: cast_nullable_to_non_nullable
              as GetProgressDetailModel?,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as ProgressPages,
    ));
  }
}

/// @nodoc
abstract class _$ProgressStateCopyWith<$Res>
    implements $ProgressStateCopyWith<$Res> {
  factory _$ProgressStateCopyWith(
          _ProgressState value, $Res Function(_ProgressState) then) =
      __$ProgressStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      String error,
      bool update,
      Map<dynamic, dynamic> weight,
      AddCheckWeightModel? addCheckWeightModel,
      GetProgressDetailModel? getProgressDetailModel,
      ProgressPages currentPage});
}

/// @nodoc
class __$ProgressStateCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res>
    implements _$ProgressStateCopyWith<$Res> {
  __$ProgressStateCopyWithImpl(
      _ProgressState _value, $Res Function(_ProgressState) _then)
      : super(_value, (v) => _then(v as _ProgressState));

  @override
  _ProgressState get _value => super._value as _ProgressState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? error = freezed,
    Object? update = freezed,
    Object? weight = freezed,
    Object? addCheckWeightModel = freezed,
    Object? getProgressDetailModel = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_ProgressState(
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
      update: update == freezed
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      addCheckWeightModel: addCheckWeightModel == freezed
          ? _value.addCheckWeightModel
          : addCheckWeightModel // ignore: cast_nullable_to_non_nullable
              as AddCheckWeightModel?,
      getProgressDetailModel: getProgressDetailModel == freezed
          ? _value.getProgressDetailModel
          : getProgressDetailModel // ignore: cast_nullable_to_non_nullable
              as GetProgressDetailModel?,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as ProgressPages,
    ));
  }
}

/// @nodoc

class _$_ProgressState extends _ProgressState {
  const _$_ProgressState(
      {this.isLoading = true,
      this.hasError = false,
      this.error = '',
      this.update = false,
      this.weight = const {},
      this.addCheckWeightModel = null,
      this.getProgressDetailModel = null,
      this.currentPage = ProgressPages.listweight})
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
  final bool update;
  @JsonKey()
  @override
  final Map<dynamic, dynamic> weight;
  @JsonKey()
  @override
  final AddCheckWeightModel? addCheckWeightModel;
  @JsonKey()
  @override
  final GetProgressDetailModel? getProgressDetailModel;
  @JsonKey()
  @override
  final ProgressPages currentPage;

  @override
  String toString() {
    return 'ProgressState(isLoading: $isLoading, hasError: $hasError, error: $error, update: $update, weight: $weight, addCheckWeightModel: $addCheckWeightModel, getProgressDetailModel: $getProgressDetailModel, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProgressState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.update, update) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality()
                .equals(other.addCheckWeightModel, addCheckWeightModel) &&
            const DeepCollectionEquality()
                .equals(other.getProgressDetailModel, getProgressDetailModel) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(update),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(addCheckWeightModel),
      const DeepCollectionEquality().hash(getProgressDetailModel),
      const DeepCollectionEquality().hash(currentPage));

  @JsonKey(ignore: true)
  @override
  _$ProgressStateCopyWith<_ProgressState> get copyWith =>
      __$ProgressStateCopyWithImpl<_ProgressState>(this, _$identity);
}

abstract class _ProgressState extends ProgressState {
  const factory _ProgressState(
      {bool isLoading,
      bool hasError,
      String error,
      bool update,
      Map<dynamic, dynamic> weight,
      AddCheckWeightModel? addCheckWeightModel,
      GetProgressDetailModel? getProgressDetailModel,
      ProgressPages currentPage}) = _$_ProgressState;
  const _ProgressState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get error;
  @override
  bool get update;
  @override
  Map<dynamic, dynamic> get weight;
  @override
  AddCheckWeightModel? get addCheckWeightModel;
  @override
  GetProgressDetailModel? get getProgressDetailModel;
  @override
  ProgressPages get currentPage;
  @override
  @JsonKey(ignore: true)
  _$ProgressStateCopyWith<_ProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}
