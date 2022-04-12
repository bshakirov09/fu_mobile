// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'blog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BlogEventTearOff {
  const _$BlogEventTearOff();

  _GetBlogList getBlogList() {
    return const _GetBlogList();
  }

  _GetBlogDetail getBlogDetail({required int blogId}) {
    return _GetBlogDetail(
      blogId: blogId,
    );
  }

  _GetBlogSearch getBlogSearch({required String title}) {
    return _GetBlogSearch(
      title: title,
    );
  }
}

/// @nodoc
const $BlogEvent = _$BlogEventTearOff();

/// @nodoc
mixin _$BlogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBlogList,
    required TResult Function(int blogId) getBlogDetail,
    required TResult Function(String title) getBlogSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getBlogList,
    TResult Function(int blogId)? getBlogDetail,
    TResult Function(String title)? getBlogSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBlogList,
    TResult Function(int blogId)? getBlogDetail,
    TResult Function(String title)? getBlogSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogList value) getBlogList,
    required TResult Function(_GetBlogDetail value) getBlogDetail,
    required TResult Function(_GetBlogSearch value) getBlogSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetBlogList value)? getBlogList,
    TResult Function(_GetBlogDetail value)? getBlogDetail,
    TResult Function(_GetBlogSearch value)? getBlogSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogList value)? getBlogList,
    TResult Function(_GetBlogDetail value)? getBlogDetail,
    TResult Function(_GetBlogSearch value)? getBlogSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogEventCopyWith<$Res> {
  factory $BlogEventCopyWith(BlogEvent value, $Res Function(BlogEvent) then) =
      _$BlogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlogEventCopyWithImpl<$Res> implements $BlogEventCopyWith<$Res> {
  _$BlogEventCopyWithImpl(this._value, this._then);

  final BlogEvent _value;
  // ignore: unused_field
  final $Res Function(BlogEvent) _then;
}

/// @nodoc
abstract class _$GetBlogListCopyWith<$Res> {
  factory _$GetBlogListCopyWith(
          _GetBlogList value, $Res Function(_GetBlogList) then) =
      __$GetBlogListCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetBlogListCopyWithImpl<$Res> extends _$BlogEventCopyWithImpl<$Res>
    implements _$GetBlogListCopyWith<$Res> {
  __$GetBlogListCopyWithImpl(
      _GetBlogList _value, $Res Function(_GetBlogList) _then)
      : super(_value, (v) => _then(v as _GetBlogList));

  @override
  _GetBlogList get _value => super._value as _GetBlogList;
}

/// @nodoc

class _$_GetBlogList extends _GetBlogList {
  const _$_GetBlogList() : super._();

  @override
  String toString() {
    return 'BlogEvent.getBlogList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetBlogList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBlogList,
    required TResult Function(int blogId) getBlogDetail,
    required TResult Function(String title) getBlogSearch,
  }) {
    return getBlogList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getBlogList,
    TResult Function(int blogId)? getBlogDetail,
    TResult Function(String title)? getBlogSearch,
  }) {
    return getBlogList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBlogList,
    TResult Function(int blogId)? getBlogDetail,
    TResult Function(String title)? getBlogSearch,
    required TResult orElse(),
  }) {
    if (getBlogList != null) {
      return getBlogList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogList value) getBlogList,
    required TResult Function(_GetBlogDetail value) getBlogDetail,
    required TResult Function(_GetBlogSearch value) getBlogSearch,
  }) {
    return getBlogList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetBlogList value)? getBlogList,
    TResult Function(_GetBlogDetail value)? getBlogDetail,
    TResult Function(_GetBlogSearch value)? getBlogSearch,
  }) {
    return getBlogList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogList value)? getBlogList,
    TResult Function(_GetBlogDetail value)? getBlogDetail,
    TResult Function(_GetBlogSearch value)? getBlogSearch,
    required TResult orElse(),
  }) {
    if (getBlogList != null) {
      return getBlogList(this);
    }
    return orElse();
  }
}

abstract class _GetBlogList extends BlogEvent {
  const factory _GetBlogList() = _$_GetBlogList;
  const _GetBlogList._() : super._();
}

/// @nodoc
abstract class _$GetBlogDetailCopyWith<$Res> {
  factory _$GetBlogDetailCopyWith(
          _GetBlogDetail value, $Res Function(_GetBlogDetail) then) =
      __$GetBlogDetailCopyWithImpl<$Res>;
  $Res call({int blogId});
}

/// @nodoc
class __$GetBlogDetailCopyWithImpl<$Res> extends _$BlogEventCopyWithImpl<$Res>
    implements _$GetBlogDetailCopyWith<$Res> {
  __$GetBlogDetailCopyWithImpl(
      _GetBlogDetail _value, $Res Function(_GetBlogDetail) _then)
      : super(_value, (v) => _then(v as _GetBlogDetail));

  @override
  _GetBlogDetail get _value => super._value as _GetBlogDetail;

  @override
  $Res call({
    Object? blogId = freezed,
  }) {
    return _then(_GetBlogDetail(
      blogId: blogId == freezed
          ? _value.blogId
          : blogId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetBlogDetail extends _GetBlogDetail {
  const _$_GetBlogDetail({required this.blogId}) : super._();

  @override
  final int blogId;

  @override
  String toString() {
    return 'BlogEvent.getBlogDetail(blogId: $blogId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetBlogDetail &&
            const DeepCollectionEquality().equals(other.blogId, blogId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(blogId));

  @JsonKey(ignore: true)
  @override
  _$GetBlogDetailCopyWith<_GetBlogDetail> get copyWith =>
      __$GetBlogDetailCopyWithImpl<_GetBlogDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBlogList,
    required TResult Function(int blogId) getBlogDetail,
    required TResult Function(String title) getBlogSearch,
  }) {
    return getBlogDetail(blogId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getBlogList,
    TResult Function(int blogId)? getBlogDetail,
    TResult Function(String title)? getBlogSearch,
  }) {
    return getBlogDetail?.call(blogId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBlogList,
    TResult Function(int blogId)? getBlogDetail,
    TResult Function(String title)? getBlogSearch,
    required TResult orElse(),
  }) {
    if (getBlogDetail != null) {
      return getBlogDetail(blogId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogList value) getBlogList,
    required TResult Function(_GetBlogDetail value) getBlogDetail,
    required TResult Function(_GetBlogSearch value) getBlogSearch,
  }) {
    return getBlogDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetBlogList value)? getBlogList,
    TResult Function(_GetBlogDetail value)? getBlogDetail,
    TResult Function(_GetBlogSearch value)? getBlogSearch,
  }) {
    return getBlogDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogList value)? getBlogList,
    TResult Function(_GetBlogDetail value)? getBlogDetail,
    TResult Function(_GetBlogSearch value)? getBlogSearch,
    required TResult orElse(),
  }) {
    if (getBlogDetail != null) {
      return getBlogDetail(this);
    }
    return orElse();
  }
}

abstract class _GetBlogDetail extends BlogEvent {
  const factory _GetBlogDetail({required int blogId}) = _$_GetBlogDetail;
  const _GetBlogDetail._() : super._();

  int get blogId;
  @JsonKey(ignore: true)
  _$GetBlogDetailCopyWith<_GetBlogDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetBlogSearchCopyWith<$Res> {
  factory _$GetBlogSearchCopyWith(
          _GetBlogSearch value, $Res Function(_GetBlogSearch) then) =
      __$GetBlogSearchCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$GetBlogSearchCopyWithImpl<$Res> extends _$BlogEventCopyWithImpl<$Res>
    implements _$GetBlogSearchCopyWith<$Res> {
  __$GetBlogSearchCopyWithImpl(
      _GetBlogSearch _value, $Res Function(_GetBlogSearch) _then)
      : super(_value, (v) => _then(v as _GetBlogSearch));

  @override
  _GetBlogSearch get _value => super._value as _GetBlogSearch;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_GetBlogSearch(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetBlogSearch extends _GetBlogSearch {
  const _$_GetBlogSearch({required this.title}) : super._();

  @override
  final String title;

  @override
  String toString() {
    return 'BlogEvent.getBlogSearch(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetBlogSearch &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$GetBlogSearchCopyWith<_GetBlogSearch> get copyWith =>
      __$GetBlogSearchCopyWithImpl<_GetBlogSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBlogList,
    required TResult Function(int blogId) getBlogDetail,
    required TResult Function(String title) getBlogSearch,
  }) {
    return getBlogSearch(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getBlogList,
    TResult Function(int blogId)? getBlogDetail,
    TResult Function(String title)? getBlogSearch,
  }) {
    return getBlogSearch?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBlogList,
    TResult Function(int blogId)? getBlogDetail,
    TResult Function(String title)? getBlogSearch,
    required TResult orElse(),
  }) {
    if (getBlogSearch != null) {
      return getBlogSearch(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBlogList value) getBlogList,
    required TResult Function(_GetBlogDetail value) getBlogDetail,
    required TResult Function(_GetBlogSearch value) getBlogSearch,
  }) {
    return getBlogSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetBlogList value)? getBlogList,
    TResult Function(_GetBlogDetail value)? getBlogDetail,
    TResult Function(_GetBlogSearch value)? getBlogSearch,
  }) {
    return getBlogSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBlogList value)? getBlogList,
    TResult Function(_GetBlogDetail value)? getBlogDetail,
    TResult Function(_GetBlogSearch value)? getBlogSearch,
    required TResult orElse(),
  }) {
    if (getBlogSearch != null) {
      return getBlogSearch(this);
    }
    return orElse();
  }
}

abstract class _GetBlogSearch extends BlogEvent {
  const factory _GetBlogSearch({required String title}) = _$_GetBlogSearch;
  const _GetBlogSearch._() : super._();

  String get title;
  @JsonKey(ignore: true)
  _$GetBlogSearchCopyWith<_GetBlogSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BlogStateTearOff {
  const _$BlogStateTearOff();

  _BlogState call(
      {bool isLoading = true,
      bool hasError = false,
      String error = '',
      List<BlogListModel> blogListModel = const [],
      List<BlogListModel> blogSearch = const [],
      BlogDetailModel? blogDetailModel = null,
      BlogPages currentPage = BlogPages.main}) {
    return _BlogState(
      isLoading: isLoading,
      hasError: hasError,
      error: error,
      blogListModel: blogListModel,
      blogSearch: blogSearch,
      blogDetailModel: blogDetailModel,
      currentPage: currentPage,
    );
  }
}

/// @nodoc
const $BlogState = _$BlogStateTearOff();

/// @nodoc
mixin _$BlogState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<BlogListModel> get blogListModel => throw _privateConstructorUsedError;
  List<BlogListModel> get blogSearch => throw _privateConstructorUsedError;
  BlogDetailModel? get blogDetailModel => throw _privateConstructorUsedError;
  BlogPages get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogStateCopyWith<BlogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogStateCopyWith<$Res> {
  factory $BlogStateCopyWith(BlogState value, $Res Function(BlogState) then) =
      _$BlogStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      String error,
      List<BlogListModel> blogListModel,
      List<BlogListModel> blogSearch,
      BlogDetailModel? blogDetailModel,
      BlogPages currentPage});
}

/// @nodoc
class _$BlogStateCopyWithImpl<$Res> implements $BlogStateCopyWith<$Res> {
  _$BlogStateCopyWithImpl(this._value, this._then);

  final BlogState _value;
  // ignore: unused_field
  final $Res Function(BlogState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? error = freezed,
    Object? blogListModel = freezed,
    Object? blogSearch = freezed,
    Object? blogDetailModel = freezed,
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
      blogListModel: blogListModel == freezed
          ? _value.blogListModel
          : blogListModel // ignore: cast_nullable_to_non_nullable
              as List<BlogListModel>,
      blogSearch: blogSearch == freezed
          ? _value.blogSearch
          : blogSearch // ignore: cast_nullable_to_non_nullable
              as List<BlogListModel>,
      blogDetailModel: blogDetailModel == freezed
          ? _value.blogDetailModel
          : blogDetailModel // ignore: cast_nullable_to_non_nullable
              as BlogDetailModel?,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as BlogPages,
    ));
  }
}

/// @nodoc
abstract class _$BlogStateCopyWith<$Res> implements $BlogStateCopyWith<$Res> {
  factory _$BlogStateCopyWith(
          _BlogState value, $Res Function(_BlogState) then) =
      __$BlogStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      String error,
      List<BlogListModel> blogListModel,
      List<BlogListModel> blogSearch,
      BlogDetailModel? blogDetailModel,
      BlogPages currentPage});
}

/// @nodoc
class __$BlogStateCopyWithImpl<$Res> extends _$BlogStateCopyWithImpl<$Res>
    implements _$BlogStateCopyWith<$Res> {
  __$BlogStateCopyWithImpl(_BlogState _value, $Res Function(_BlogState) _then)
      : super(_value, (v) => _then(v as _BlogState));

  @override
  _BlogState get _value => super._value as _BlogState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? error = freezed,
    Object? blogListModel = freezed,
    Object? blogSearch = freezed,
    Object? blogDetailModel = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_BlogState(
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
      blogListModel: blogListModel == freezed
          ? _value.blogListModel
          : blogListModel // ignore: cast_nullable_to_non_nullable
              as List<BlogListModel>,
      blogSearch: blogSearch == freezed
          ? _value.blogSearch
          : blogSearch // ignore: cast_nullable_to_non_nullable
              as List<BlogListModel>,
      blogDetailModel: blogDetailModel == freezed
          ? _value.blogDetailModel
          : blogDetailModel // ignore: cast_nullable_to_non_nullable
              as BlogDetailModel?,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as BlogPages,
    ));
  }
}

/// @nodoc

class _$_BlogState extends _BlogState {
  const _$_BlogState(
      {this.isLoading = true,
      this.hasError = false,
      this.error = '',
      this.blogListModel = const [],
      this.blogSearch = const [],
      this.blogDetailModel = null,
      this.currentPage = BlogPages.main})
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
  final List<BlogListModel> blogListModel;
  @JsonKey()
  @override
  final List<BlogListModel> blogSearch;
  @JsonKey()
  @override
  final BlogDetailModel? blogDetailModel;
  @JsonKey()
  @override
  final BlogPages currentPage;

  @override
  String toString() {
    return 'BlogState(isLoading: $isLoading, hasError: $hasError, error: $error, blogListModel: $blogListModel, blogSearch: $blogSearch, blogDetailModel: $blogDetailModel, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BlogState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.blogListModel, blogListModel) &&
            const DeepCollectionEquality()
                .equals(other.blogSearch, blogSearch) &&
            const DeepCollectionEquality()
                .equals(other.blogDetailModel, blogDetailModel) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(blogListModel),
      const DeepCollectionEquality().hash(blogSearch),
      const DeepCollectionEquality().hash(blogDetailModel),
      const DeepCollectionEquality().hash(currentPage));

  @JsonKey(ignore: true)
  @override
  _$BlogStateCopyWith<_BlogState> get copyWith =>
      __$BlogStateCopyWithImpl<_BlogState>(this, _$identity);
}

abstract class _BlogState extends BlogState {
  const factory _BlogState(
      {bool isLoading,
      bool hasError,
      String error,
      List<BlogListModel> blogListModel,
      List<BlogListModel> blogSearch,
      BlogDetailModel? blogDetailModel,
      BlogPages currentPage}) = _$_BlogState;
  const _BlogState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get error;
  @override
  List<BlogListModel> get blogListModel;
  @override
  List<BlogListModel> get blogSearch;
  @override
  BlogDetailModel? get blogDetailModel;
  @override
  BlogPages get currentPage;
  @override
  @JsonKey(ignore: true)
  _$BlogStateCopyWith<_BlogState> get copyWith =>
      throw _privateConstructorUsedError;
}
