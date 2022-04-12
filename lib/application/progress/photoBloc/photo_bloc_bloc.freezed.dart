// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotoBlocEventTearOff {
  const _$PhotoBlocEventTearOff();

  _GetPhotoList getPhotoList() {
    return const _GetPhotoList();
  }

  _GetPhotoFromDate getPhotoFromDate({required String date}) {
    return _GetPhotoFromDate(
      date: date,
    );
  }

  _GetNextPhotoListPage getNextPhotoListPage() {
    return const _GetNextPhotoListPage();
  }

  _AddPhoto addPhoto(
      {required String front, required String side, required String back}) {
    return _AddPhoto(
      front: front,
      side: side,
      back: back,
    );
  }

  _DetailViewPhotoRight detailViewPhotoRight(
      {required String direction, required String currentDate}) {
    return _DetailViewPhotoRight(
      direction: direction,
      currentDate: currentDate,
    );
  }

  _DetailViewPhotoLeft detailViewPhotoLeft(
      {required String direction, required String currentDate}) {
    return _DetailViewPhotoLeft(
      direction: direction,
      currentDate: currentDate,
    );
  }
}

/// @nodoc
const $PhotoBlocEvent = _$PhotoBlocEventTearOff();

/// @nodoc
mixin _$PhotoBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotoList,
    required TResult Function(String date) getPhotoFromDate,
    required TResult Function() getNextPhotoListPage,
    required TResult Function(String front, String side, String back) addPhoto,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoRight,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotoList value) getPhotoList,
    required TResult Function(_GetPhotoFromDate value) getPhotoFromDate,
    required TResult Function(_GetNextPhotoListPage value) getNextPhotoListPage,
    required TResult Function(_AddPhoto value) addPhoto,
    required TResult Function(_DetailViewPhotoRight value) detailViewPhotoRight,
    required TResult Function(_DetailViewPhotoLeft value) detailViewPhotoLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoBlocEventCopyWith<$Res> {
  factory $PhotoBlocEventCopyWith(
          PhotoBlocEvent value, $Res Function(PhotoBlocEvent) then) =
      _$PhotoBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotoBlocEventCopyWithImpl<$Res>
    implements $PhotoBlocEventCopyWith<$Res> {
  _$PhotoBlocEventCopyWithImpl(this._value, this._then);

  final PhotoBlocEvent _value;
  // ignore: unused_field
  final $Res Function(PhotoBlocEvent) _then;
}

/// @nodoc
abstract class _$GetPhotoListCopyWith<$Res> {
  factory _$GetPhotoListCopyWith(
          _GetPhotoList value, $Res Function(_GetPhotoList) then) =
      __$GetPhotoListCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPhotoListCopyWithImpl<$Res>
    extends _$PhotoBlocEventCopyWithImpl<$Res>
    implements _$GetPhotoListCopyWith<$Res> {
  __$GetPhotoListCopyWithImpl(
      _GetPhotoList _value, $Res Function(_GetPhotoList) _then)
      : super(_value, (v) => _then(v as _GetPhotoList));

  @override
  _GetPhotoList get _value => super._value as _GetPhotoList;
}

/// @nodoc

class _$_GetPhotoList extends _GetPhotoList {
  const _$_GetPhotoList() : super._();

  @override
  String toString() {
    return 'PhotoBlocEvent.getPhotoList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetPhotoList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotoList,
    required TResult Function(String date) getPhotoFromDate,
    required TResult Function() getNextPhotoListPage,
    required TResult Function(String front, String side, String back) addPhoto,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoRight,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoLeft,
  }) {
    return getPhotoList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
  }) {
    return getPhotoList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
    required TResult orElse(),
  }) {
    if (getPhotoList != null) {
      return getPhotoList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotoList value) getPhotoList,
    required TResult Function(_GetPhotoFromDate value) getPhotoFromDate,
    required TResult Function(_GetNextPhotoListPage value) getNextPhotoListPage,
    required TResult Function(_AddPhoto value) addPhoto,
    required TResult Function(_DetailViewPhotoRight value) detailViewPhotoRight,
    required TResult Function(_DetailViewPhotoLeft value) detailViewPhotoLeft,
  }) {
    return getPhotoList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
  }) {
    return getPhotoList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
    required TResult orElse(),
  }) {
    if (getPhotoList != null) {
      return getPhotoList(this);
    }
    return orElse();
  }
}

abstract class _GetPhotoList extends PhotoBlocEvent {
  const factory _GetPhotoList() = _$_GetPhotoList;
  const _GetPhotoList._() : super._();
}

/// @nodoc
abstract class _$GetPhotoFromDateCopyWith<$Res> {
  factory _$GetPhotoFromDateCopyWith(
          _GetPhotoFromDate value, $Res Function(_GetPhotoFromDate) then) =
      __$GetPhotoFromDateCopyWithImpl<$Res>;
  $Res call({String date});
}

/// @nodoc
class __$GetPhotoFromDateCopyWithImpl<$Res>
    extends _$PhotoBlocEventCopyWithImpl<$Res>
    implements _$GetPhotoFromDateCopyWith<$Res> {
  __$GetPhotoFromDateCopyWithImpl(
      _GetPhotoFromDate _value, $Res Function(_GetPhotoFromDate) _then)
      : super(_value, (v) => _then(v as _GetPhotoFromDate));

  @override
  _GetPhotoFromDate get _value => super._value as _GetPhotoFromDate;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_GetPhotoFromDate(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetPhotoFromDate extends _GetPhotoFromDate {
  const _$_GetPhotoFromDate({required this.date}) : super._();

  @override
  final String date;

  @override
  String toString() {
    return 'PhotoBlocEvent.getPhotoFromDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetPhotoFromDate &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$GetPhotoFromDateCopyWith<_GetPhotoFromDate> get copyWith =>
      __$GetPhotoFromDateCopyWithImpl<_GetPhotoFromDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotoList,
    required TResult Function(String date) getPhotoFromDate,
    required TResult Function() getNextPhotoListPage,
    required TResult Function(String front, String side, String back) addPhoto,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoRight,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoLeft,
  }) {
    return getPhotoFromDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
  }) {
    return getPhotoFromDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
    required TResult orElse(),
  }) {
    if (getPhotoFromDate != null) {
      return getPhotoFromDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotoList value) getPhotoList,
    required TResult Function(_GetPhotoFromDate value) getPhotoFromDate,
    required TResult Function(_GetNextPhotoListPage value) getNextPhotoListPage,
    required TResult Function(_AddPhoto value) addPhoto,
    required TResult Function(_DetailViewPhotoRight value) detailViewPhotoRight,
    required TResult Function(_DetailViewPhotoLeft value) detailViewPhotoLeft,
  }) {
    return getPhotoFromDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
  }) {
    return getPhotoFromDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
    required TResult orElse(),
  }) {
    if (getPhotoFromDate != null) {
      return getPhotoFromDate(this);
    }
    return orElse();
  }
}

abstract class _GetPhotoFromDate extends PhotoBlocEvent {
  const factory _GetPhotoFromDate({required String date}) = _$_GetPhotoFromDate;
  const _GetPhotoFromDate._() : super._();

  String get date;
  @JsonKey(ignore: true)
  _$GetPhotoFromDateCopyWith<_GetPhotoFromDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetNextPhotoListPageCopyWith<$Res> {
  factory _$GetNextPhotoListPageCopyWith(_GetNextPhotoListPage value,
          $Res Function(_GetNextPhotoListPage) then) =
      __$GetNextPhotoListPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetNextPhotoListPageCopyWithImpl<$Res>
    extends _$PhotoBlocEventCopyWithImpl<$Res>
    implements _$GetNextPhotoListPageCopyWith<$Res> {
  __$GetNextPhotoListPageCopyWithImpl(
      _GetNextPhotoListPage _value, $Res Function(_GetNextPhotoListPage) _then)
      : super(_value, (v) => _then(v as _GetNextPhotoListPage));

  @override
  _GetNextPhotoListPage get _value => super._value as _GetNextPhotoListPage;
}

/// @nodoc

class _$_GetNextPhotoListPage extends _GetNextPhotoListPage {
  const _$_GetNextPhotoListPage() : super._();

  @override
  String toString() {
    return 'PhotoBlocEvent.getNextPhotoListPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetNextPhotoListPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotoList,
    required TResult Function(String date) getPhotoFromDate,
    required TResult Function() getNextPhotoListPage,
    required TResult Function(String front, String side, String back) addPhoto,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoRight,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoLeft,
  }) {
    return getNextPhotoListPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
  }) {
    return getNextPhotoListPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
    required TResult orElse(),
  }) {
    if (getNextPhotoListPage != null) {
      return getNextPhotoListPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotoList value) getPhotoList,
    required TResult Function(_GetPhotoFromDate value) getPhotoFromDate,
    required TResult Function(_GetNextPhotoListPage value) getNextPhotoListPage,
    required TResult Function(_AddPhoto value) addPhoto,
    required TResult Function(_DetailViewPhotoRight value) detailViewPhotoRight,
    required TResult Function(_DetailViewPhotoLeft value) detailViewPhotoLeft,
  }) {
    return getNextPhotoListPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
  }) {
    return getNextPhotoListPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
    required TResult orElse(),
  }) {
    if (getNextPhotoListPage != null) {
      return getNextPhotoListPage(this);
    }
    return orElse();
  }
}

abstract class _GetNextPhotoListPage extends PhotoBlocEvent {
  const factory _GetNextPhotoListPage() = _$_GetNextPhotoListPage;
  const _GetNextPhotoListPage._() : super._();
}

/// @nodoc
abstract class _$AddPhotoCopyWith<$Res> {
  factory _$AddPhotoCopyWith(_AddPhoto value, $Res Function(_AddPhoto) then) =
      __$AddPhotoCopyWithImpl<$Res>;
  $Res call({String front, String side, String back});
}

/// @nodoc
class __$AddPhotoCopyWithImpl<$Res> extends _$PhotoBlocEventCopyWithImpl<$Res>
    implements _$AddPhotoCopyWith<$Res> {
  __$AddPhotoCopyWithImpl(_AddPhoto _value, $Res Function(_AddPhoto) _then)
      : super(_value, (v) => _then(v as _AddPhoto));

  @override
  _AddPhoto get _value => super._value as _AddPhoto;

  @override
  $Res call({
    Object? front = freezed,
    Object? side = freezed,
    Object? back = freezed,
  }) {
    return _then(_AddPhoto(
      front: front == freezed
          ? _value.front
          : front // ignore: cast_nullable_to_non_nullable
              as String,
      side: side == freezed
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
      back: back == freezed
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddPhoto extends _AddPhoto {
  const _$_AddPhoto(
      {required this.front, required this.side, required this.back})
      : super._();

  @override
  final String front;
  @override
  final String side;
  @override
  final String back;

  @override
  String toString() {
    return 'PhotoBlocEvent.addPhoto(front: $front, side: $side, back: $back)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddPhoto &&
            const DeepCollectionEquality().equals(other.front, front) &&
            const DeepCollectionEquality().equals(other.side, side) &&
            const DeepCollectionEquality().equals(other.back, back));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(front),
      const DeepCollectionEquality().hash(side),
      const DeepCollectionEquality().hash(back));

  @JsonKey(ignore: true)
  @override
  _$AddPhotoCopyWith<_AddPhoto> get copyWith =>
      __$AddPhotoCopyWithImpl<_AddPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotoList,
    required TResult Function(String date) getPhotoFromDate,
    required TResult Function() getNextPhotoListPage,
    required TResult Function(String front, String side, String back) addPhoto,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoRight,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoLeft,
  }) {
    return addPhoto(front, side, back);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
  }) {
    return addPhoto?.call(front, side, back);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
    required TResult orElse(),
  }) {
    if (addPhoto != null) {
      return addPhoto(front, side, back);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotoList value) getPhotoList,
    required TResult Function(_GetPhotoFromDate value) getPhotoFromDate,
    required TResult Function(_GetNextPhotoListPage value) getNextPhotoListPage,
    required TResult Function(_AddPhoto value) addPhoto,
    required TResult Function(_DetailViewPhotoRight value) detailViewPhotoRight,
    required TResult Function(_DetailViewPhotoLeft value) detailViewPhotoLeft,
  }) {
    return addPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
  }) {
    return addPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
    required TResult orElse(),
  }) {
    if (addPhoto != null) {
      return addPhoto(this);
    }
    return orElse();
  }
}

abstract class _AddPhoto extends PhotoBlocEvent {
  const factory _AddPhoto(
      {required String front,
      required String side,
      required String back}) = _$_AddPhoto;
  const _AddPhoto._() : super._();

  String get front;
  String get side;
  String get back;
  @JsonKey(ignore: true)
  _$AddPhotoCopyWith<_AddPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DetailViewPhotoRightCopyWith<$Res> {
  factory _$DetailViewPhotoRightCopyWith(_DetailViewPhotoRight value,
          $Res Function(_DetailViewPhotoRight) then) =
      __$DetailViewPhotoRightCopyWithImpl<$Res>;
  $Res call({String direction, String currentDate});
}

/// @nodoc
class __$DetailViewPhotoRightCopyWithImpl<$Res>
    extends _$PhotoBlocEventCopyWithImpl<$Res>
    implements _$DetailViewPhotoRightCopyWith<$Res> {
  __$DetailViewPhotoRightCopyWithImpl(
      _DetailViewPhotoRight _value, $Res Function(_DetailViewPhotoRight) _then)
      : super(_value, (v) => _then(v as _DetailViewPhotoRight));

  @override
  _DetailViewPhotoRight get _value => super._value as _DetailViewPhotoRight;

  @override
  $Res call({
    Object? direction = freezed,
    Object? currentDate = freezed,
  }) {
    return _then(_DetailViewPhotoRight(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      currentDate: currentDate == freezed
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DetailViewPhotoRight extends _DetailViewPhotoRight {
  const _$_DetailViewPhotoRight(
      {required this.direction, required this.currentDate})
      : super._();

  @override
  final String direction;
  @override
  final String currentDate;

  @override
  String toString() {
    return 'PhotoBlocEvent.detailViewPhotoRight(direction: $direction, currentDate: $currentDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailViewPhotoRight &&
            const DeepCollectionEquality().equals(other.direction, direction) &&
            const DeepCollectionEquality()
                .equals(other.currentDate, currentDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(direction),
      const DeepCollectionEquality().hash(currentDate));

  @JsonKey(ignore: true)
  @override
  _$DetailViewPhotoRightCopyWith<_DetailViewPhotoRight> get copyWith =>
      __$DetailViewPhotoRightCopyWithImpl<_DetailViewPhotoRight>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotoList,
    required TResult Function(String date) getPhotoFromDate,
    required TResult Function() getNextPhotoListPage,
    required TResult Function(String front, String side, String back) addPhoto,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoRight,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoLeft,
  }) {
    return detailViewPhotoRight(direction, currentDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
  }) {
    return detailViewPhotoRight?.call(direction, currentDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
    required TResult orElse(),
  }) {
    if (detailViewPhotoRight != null) {
      return detailViewPhotoRight(direction, currentDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotoList value) getPhotoList,
    required TResult Function(_GetPhotoFromDate value) getPhotoFromDate,
    required TResult Function(_GetNextPhotoListPage value) getNextPhotoListPage,
    required TResult Function(_AddPhoto value) addPhoto,
    required TResult Function(_DetailViewPhotoRight value) detailViewPhotoRight,
    required TResult Function(_DetailViewPhotoLeft value) detailViewPhotoLeft,
  }) {
    return detailViewPhotoRight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
  }) {
    return detailViewPhotoRight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
    required TResult orElse(),
  }) {
    if (detailViewPhotoRight != null) {
      return detailViewPhotoRight(this);
    }
    return orElse();
  }
}

abstract class _DetailViewPhotoRight extends PhotoBlocEvent {
  const factory _DetailViewPhotoRight(
      {required String direction,
      required String currentDate}) = _$_DetailViewPhotoRight;
  const _DetailViewPhotoRight._() : super._();

  String get direction;
  String get currentDate;
  @JsonKey(ignore: true)
  _$DetailViewPhotoRightCopyWith<_DetailViewPhotoRight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DetailViewPhotoLeftCopyWith<$Res> {
  factory _$DetailViewPhotoLeftCopyWith(_DetailViewPhotoLeft value,
          $Res Function(_DetailViewPhotoLeft) then) =
      __$DetailViewPhotoLeftCopyWithImpl<$Res>;
  $Res call({String direction, String currentDate});
}

/// @nodoc
class __$DetailViewPhotoLeftCopyWithImpl<$Res>
    extends _$PhotoBlocEventCopyWithImpl<$Res>
    implements _$DetailViewPhotoLeftCopyWith<$Res> {
  __$DetailViewPhotoLeftCopyWithImpl(
      _DetailViewPhotoLeft _value, $Res Function(_DetailViewPhotoLeft) _then)
      : super(_value, (v) => _then(v as _DetailViewPhotoLeft));

  @override
  _DetailViewPhotoLeft get _value => super._value as _DetailViewPhotoLeft;

  @override
  $Res call({
    Object? direction = freezed,
    Object? currentDate = freezed,
  }) {
    return _then(_DetailViewPhotoLeft(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      currentDate: currentDate == freezed
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DetailViewPhotoLeft extends _DetailViewPhotoLeft {
  const _$_DetailViewPhotoLeft(
      {required this.direction, required this.currentDate})
      : super._();

  @override
  final String direction;
  @override
  final String currentDate;

  @override
  String toString() {
    return 'PhotoBlocEvent.detailViewPhotoLeft(direction: $direction, currentDate: $currentDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailViewPhotoLeft &&
            const DeepCollectionEquality().equals(other.direction, direction) &&
            const DeepCollectionEquality()
                .equals(other.currentDate, currentDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(direction),
      const DeepCollectionEquality().hash(currentDate));

  @JsonKey(ignore: true)
  @override
  _$DetailViewPhotoLeftCopyWith<_DetailViewPhotoLeft> get copyWith =>
      __$DetailViewPhotoLeftCopyWithImpl<_DetailViewPhotoLeft>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotoList,
    required TResult Function(String date) getPhotoFromDate,
    required TResult Function() getNextPhotoListPage,
    required TResult Function(String front, String side, String back) addPhoto,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoRight,
    required TResult Function(String direction, String currentDate)
        detailViewPhotoLeft,
  }) {
    return detailViewPhotoLeft(direction, currentDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
  }) {
    return detailViewPhotoLeft?.call(direction, currentDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotoList,
    TResult Function(String date)? getPhotoFromDate,
    TResult Function()? getNextPhotoListPage,
    TResult Function(String front, String side, String back)? addPhoto,
    TResult Function(String direction, String currentDate)?
        detailViewPhotoRight,
    TResult Function(String direction, String currentDate)? detailViewPhotoLeft,
    required TResult orElse(),
  }) {
    if (detailViewPhotoLeft != null) {
      return detailViewPhotoLeft(direction, currentDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotoList value) getPhotoList,
    required TResult Function(_GetPhotoFromDate value) getPhotoFromDate,
    required TResult Function(_GetNextPhotoListPage value) getNextPhotoListPage,
    required TResult Function(_AddPhoto value) addPhoto,
    required TResult Function(_DetailViewPhotoRight value) detailViewPhotoRight,
    required TResult Function(_DetailViewPhotoLeft value) detailViewPhotoLeft,
  }) {
    return detailViewPhotoLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
  }) {
    return detailViewPhotoLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotoList value)? getPhotoList,
    TResult Function(_GetPhotoFromDate value)? getPhotoFromDate,
    TResult Function(_GetNextPhotoListPage value)? getNextPhotoListPage,
    TResult Function(_AddPhoto value)? addPhoto,
    TResult Function(_DetailViewPhotoRight value)? detailViewPhotoRight,
    TResult Function(_DetailViewPhotoLeft value)? detailViewPhotoLeft,
    required TResult orElse(),
  }) {
    if (detailViewPhotoLeft != null) {
      return detailViewPhotoLeft(this);
    }
    return orElse();
  }
}

abstract class _DetailViewPhotoLeft extends PhotoBlocEvent {
  const factory _DetailViewPhotoLeft(
      {required String direction,
      required String currentDate}) = _$_DetailViewPhotoLeft;
  const _DetailViewPhotoLeft._() : super._();

  String get direction;
  String get currentDate;
  @JsonKey(ignore: true)
  _$DetailViewPhotoLeftCopyWith<_DetailViewPhotoLeft> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PhotoBlocStateTearOff {
  const _$PhotoBlocStateTearOff();

  _PhotoBlocState call(
      {bool isLoading = true,
      bool hasError = false,
      String error = '',
      bool update = false,
      bool isUpdateDetailPhotoRight = false,
      bool isUpdateDetailPhotoLeft = false,
      GetListPhotoModel? getListPhotoModel = null,
      GetPhotoFromDateModel? getPhotoFromDateModel = null,
      DetailViewPhotoLeftModel? detailViewPhotoLeftModel = null,
      DetailViewPhotoRightModel? detailViewPhotoRightModel = null,
      ProgressPages currentPage = ProgressPages.listphoto}) {
    return _PhotoBlocState(
      isLoading: isLoading,
      hasError: hasError,
      error: error,
      update: update,
      isUpdateDetailPhotoRight: isUpdateDetailPhotoRight,
      isUpdateDetailPhotoLeft: isUpdateDetailPhotoLeft,
      getListPhotoModel: getListPhotoModel,
      getPhotoFromDateModel: getPhotoFromDateModel,
      detailViewPhotoLeftModel: detailViewPhotoLeftModel,
      detailViewPhotoRightModel: detailViewPhotoRightModel,
      currentPage: currentPage,
    );
  }
}

/// @nodoc
const $PhotoBlocState = _$PhotoBlocStateTearOff();

/// @nodoc
mixin _$PhotoBlocState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get update => throw _privateConstructorUsedError;
  bool get isUpdateDetailPhotoRight => throw _privateConstructorUsedError;
  bool get isUpdateDetailPhotoLeft => throw _privateConstructorUsedError;
  GetListPhotoModel? get getListPhotoModel =>
      throw _privateConstructorUsedError;
  GetPhotoFromDateModel? get getPhotoFromDateModel =>
      throw _privateConstructorUsedError;
  DetailViewPhotoLeftModel? get detailViewPhotoLeftModel =>
      throw _privateConstructorUsedError;
  DetailViewPhotoRightModel? get detailViewPhotoRightModel =>
      throw _privateConstructorUsedError;
  ProgressPages get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoBlocStateCopyWith<PhotoBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoBlocStateCopyWith<$Res> {
  factory $PhotoBlocStateCopyWith(
          PhotoBlocState value, $Res Function(PhotoBlocState) then) =
      _$PhotoBlocStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      String error,
      bool update,
      bool isUpdateDetailPhotoRight,
      bool isUpdateDetailPhotoLeft,
      GetListPhotoModel? getListPhotoModel,
      GetPhotoFromDateModel? getPhotoFromDateModel,
      DetailViewPhotoLeftModel? detailViewPhotoLeftModel,
      DetailViewPhotoRightModel? detailViewPhotoRightModel,
      ProgressPages currentPage});
}

/// @nodoc
class _$PhotoBlocStateCopyWithImpl<$Res>
    implements $PhotoBlocStateCopyWith<$Res> {
  _$PhotoBlocStateCopyWithImpl(this._value, this._then);

  final PhotoBlocState _value;
  // ignore: unused_field
  final $Res Function(PhotoBlocState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? error = freezed,
    Object? update = freezed,
    Object? isUpdateDetailPhotoRight = freezed,
    Object? isUpdateDetailPhotoLeft = freezed,
    Object? getListPhotoModel = freezed,
    Object? getPhotoFromDateModel = freezed,
    Object? detailViewPhotoLeftModel = freezed,
    Object? detailViewPhotoRightModel = freezed,
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
      isUpdateDetailPhotoRight: isUpdateDetailPhotoRight == freezed
          ? _value.isUpdateDetailPhotoRight
          : isUpdateDetailPhotoRight // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateDetailPhotoLeft: isUpdateDetailPhotoLeft == freezed
          ? _value.isUpdateDetailPhotoLeft
          : isUpdateDetailPhotoLeft // ignore: cast_nullable_to_non_nullable
              as bool,
      getListPhotoModel: getListPhotoModel == freezed
          ? _value.getListPhotoModel
          : getListPhotoModel // ignore: cast_nullable_to_non_nullable
              as GetListPhotoModel?,
      getPhotoFromDateModel: getPhotoFromDateModel == freezed
          ? _value.getPhotoFromDateModel
          : getPhotoFromDateModel // ignore: cast_nullable_to_non_nullable
              as GetPhotoFromDateModel?,
      detailViewPhotoLeftModel: detailViewPhotoLeftModel == freezed
          ? _value.detailViewPhotoLeftModel
          : detailViewPhotoLeftModel // ignore: cast_nullable_to_non_nullable
              as DetailViewPhotoLeftModel?,
      detailViewPhotoRightModel: detailViewPhotoRightModel == freezed
          ? _value.detailViewPhotoRightModel
          : detailViewPhotoRightModel // ignore: cast_nullable_to_non_nullable
              as DetailViewPhotoRightModel?,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as ProgressPages,
    ));
  }
}

/// @nodoc
abstract class _$PhotoBlocStateCopyWith<$Res>
    implements $PhotoBlocStateCopyWith<$Res> {
  factory _$PhotoBlocStateCopyWith(
          _PhotoBlocState value, $Res Function(_PhotoBlocState) then) =
      __$PhotoBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      String error,
      bool update,
      bool isUpdateDetailPhotoRight,
      bool isUpdateDetailPhotoLeft,
      GetListPhotoModel? getListPhotoModel,
      GetPhotoFromDateModel? getPhotoFromDateModel,
      DetailViewPhotoLeftModel? detailViewPhotoLeftModel,
      DetailViewPhotoRightModel? detailViewPhotoRightModel,
      ProgressPages currentPage});
}

/// @nodoc
class __$PhotoBlocStateCopyWithImpl<$Res>
    extends _$PhotoBlocStateCopyWithImpl<$Res>
    implements _$PhotoBlocStateCopyWith<$Res> {
  __$PhotoBlocStateCopyWithImpl(
      _PhotoBlocState _value, $Res Function(_PhotoBlocState) _then)
      : super(_value, (v) => _then(v as _PhotoBlocState));

  @override
  _PhotoBlocState get _value => super._value as _PhotoBlocState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? error = freezed,
    Object? update = freezed,
    Object? isUpdateDetailPhotoRight = freezed,
    Object? isUpdateDetailPhotoLeft = freezed,
    Object? getListPhotoModel = freezed,
    Object? getPhotoFromDateModel = freezed,
    Object? detailViewPhotoLeftModel = freezed,
    Object? detailViewPhotoRightModel = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_PhotoBlocState(
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
      isUpdateDetailPhotoRight: isUpdateDetailPhotoRight == freezed
          ? _value.isUpdateDetailPhotoRight
          : isUpdateDetailPhotoRight // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateDetailPhotoLeft: isUpdateDetailPhotoLeft == freezed
          ? _value.isUpdateDetailPhotoLeft
          : isUpdateDetailPhotoLeft // ignore: cast_nullable_to_non_nullable
              as bool,
      getListPhotoModel: getListPhotoModel == freezed
          ? _value.getListPhotoModel
          : getListPhotoModel // ignore: cast_nullable_to_non_nullable
              as GetListPhotoModel?,
      getPhotoFromDateModel: getPhotoFromDateModel == freezed
          ? _value.getPhotoFromDateModel
          : getPhotoFromDateModel // ignore: cast_nullable_to_non_nullable
              as GetPhotoFromDateModel?,
      detailViewPhotoLeftModel: detailViewPhotoLeftModel == freezed
          ? _value.detailViewPhotoLeftModel
          : detailViewPhotoLeftModel // ignore: cast_nullable_to_non_nullable
              as DetailViewPhotoLeftModel?,
      detailViewPhotoRightModel: detailViewPhotoRightModel == freezed
          ? _value.detailViewPhotoRightModel
          : detailViewPhotoRightModel // ignore: cast_nullable_to_non_nullable
              as DetailViewPhotoRightModel?,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as ProgressPages,
    ));
  }
}

/// @nodoc

class _$_PhotoBlocState extends _PhotoBlocState {
  const _$_PhotoBlocState(
      {this.isLoading = true,
      this.hasError = false,
      this.error = '',
      this.update = false,
      this.isUpdateDetailPhotoRight = false,
      this.isUpdateDetailPhotoLeft = false,
      this.getListPhotoModel = null,
      this.getPhotoFromDateModel = null,
      this.detailViewPhotoLeftModel = null,
      this.detailViewPhotoRightModel = null,
      this.currentPage = ProgressPages.listphoto})
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
  final bool isUpdateDetailPhotoRight;
  @JsonKey()
  @override
  final bool isUpdateDetailPhotoLeft;
  @JsonKey()
  @override
  final GetListPhotoModel? getListPhotoModel;
  @JsonKey()
  @override
  final GetPhotoFromDateModel? getPhotoFromDateModel;
  @JsonKey()
  @override
  final DetailViewPhotoLeftModel? detailViewPhotoLeftModel;
  @JsonKey()
  @override
  final DetailViewPhotoRightModel? detailViewPhotoRightModel;
  @JsonKey()
  @override
  final ProgressPages currentPage;

  @override
  String toString() {
    return 'PhotoBlocState(isLoading: $isLoading, hasError: $hasError, error: $error, update: $update, isUpdateDetailPhotoRight: $isUpdateDetailPhotoRight, isUpdateDetailPhotoLeft: $isUpdateDetailPhotoLeft, getListPhotoModel: $getListPhotoModel, getPhotoFromDateModel: $getPhotoFromDateModel, detailViewPhotoLeftModel: $detailViewPhotoLeftModel, detailViewPhotoRightModel: $detailViewPhotoRightModel, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhotoBlocState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.update, update) &&
            const DeepCollectionEquality().equals(
                other.isUpdateDetailPhotoRight, isUpdateDetailPhotoRight) &&
            const DeepCollectionEquality().equals(
                other.isUpdateDetailPhotoLeft, isUpdateDetailPhotoLeft) &&
            const DeepCollectionEquality()
                .equals(other.getListPhotoModel, getListPhotoModel) &&
            const DeepCollectionEquality()
                .equals(other.getPhotoFromDateModel, getPhotoFromDateModel) &&
            const DeepCollectionEquality().equals(
                other.detailViewPhotoLeftModel, detailViewPhotoLeftModel) &&
            const DeepCollectionEquality().equals(
                other.detailViewPhotoRightModel, detailViewPhotoRightModel) &&
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
      const DeepCollectionEquality().hash(isUpdateDetailPhotoRight),
      const DeepCollectionEquality().hash(isUpdateDetailPhotoLeft),
      const DeepCollectionEquality().hash(getListPhotoModel),
      const DeepCollectionEquality().hash(getPhotoFromDateModel),
      const DeepCollectionEquality().hash(detailViewPhotoLeftModel),
      const DeepCollectionEquality().hash(detailViewPhotoRightModel),
      const DeepCollectionEquality().hash(currentPage));

  @JsonKey(ignore: true)
  @override
  _$PhotoBlocStateCopyWith<_PhotoBlocState> get copyWith =>
      __$PhotoBlocStateCopyWithImpl<_PhotoBlocState>(this, _$identity);
}

abstract class _PhotoBlocState extends PhotoBlocState {
  const factory _PhotoBlocState(
      {bool isLoading,
      bool hasError,
      String error,
      bool update,
      bool isUpdateDetailPhotoRight,
      bool isUpdateDetailPhotoLeft,
      GetListPhotoModel? getListPhotoModel,
      GetPhotoFromDateModel? getPhotoFromDateModel,
      DetailViewPhotoLeftModel? detailViewPhotoLeftModel,
      DetailViewPhotoRightModel? detailViewPhotoRightModel,
      ProgressPages currentPage}) = _$_PhotoBlocState;
  const _PhotoBlocState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get error;
  @override
  bool get update;
  @override
  bool get isUpdateDetailPhotoRight;
  @override
  bool get isUpdateDetailPhotoLeft;
  @override
  GetListPhotoModel? get getListPhotoModel;
  @override
  GetPhotoFromDateModel? get getPhotoFromDateModel;
  @override
  DetailViewPhotoLeftModel? get detailViewPhotoLeftModel;
  @override
  DetailViewPhotoRightModel? get detailViewPhotoRightModel;
  @override
  ProgressPages get currentPage;
  @override
  @JsonKey(ignore: true)
  _$PhotoBlocStateCopyWith<_PhotoBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
