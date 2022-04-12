// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecipeEventTearOff {
  const _$RecipeEventTearOff();

  _GetRecipeList getRecipeList() {
    return const _GetRecipeList();
  }

  _GetRecipeCategory getRecipeCategory({required int categoryId}) {
    return _GetRecipeCategory(
      categoryId: categoryId,
    );
  }

  _GetRecipeDetail getRecipeDetail({required int subCategoryId}) {
    return _GetRecipeDetail(
      subCategoryId: subCategoryId,
    );
  }
}

/// @nodoc
const $RecipeEvent = _$RecipeEventTearOff();

/// @nodoc
mixin _$RecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipeList,
    required TResult Function(int categoryId) getRecipeCategory,
    required TResult Function(int subCategoryId) getRecipeDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRecipeList,
    TResult Function(int categoryId)? getRecipeCategory,
    TResult Function(int subCategoryId)? getRecipeDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipeList,
    TResult Function(int categoryId)? getRecipeCategory,
    TResult Function(int subCategoryId)? getRecipeDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipeList value) getRecipeList,
    required TResult Function(_GetRecipeCategory value) getRecipeCategory,
    required TResult Function(_GetRecipeDetail value) getRecipeDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetRecipeList value)? getRecipeList,
    TResult Function(_GetRecipeCategory value)? getRecipeCategory,
    TResult Function(_GetRecipeDetail value)? getRecipeDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipeList value)? getRecipeList,
    TResult Function(_GetRecipeCategory value)? getRecipeCategory,
    TResult Function(_GetRecipeDetail value)? getRecipeDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeEventCopyWith<$Res> {
  factory $RecipeEventCopyWith(
          RecipeEvent value, $Res Function(RecipeEvent) then) =
      _$RecipeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecipeEventCopyWithImpl<$Res> implements $RecipeEventCopyWith<$Res> {
  _$RecipeEventCopyWithImpl(this._value, this._then);

  final RecipeEvent _value;
  // ignore: unused_field
  final $Res Function(RecipeEvent) _then;
}

/// @nodoc
abstract class _$GetRecipeListCopyWith<$Res> {
  factory _$GetRecipeListCopyWith(
          _GetRecipeList value, $Res Function(_GetRecipeList) then) =
      __$GetRecipeListCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetRecipeListCopyWithImpl<$Res> extends _$RecipeEventCopyWithImpl<$Res>
    implements _$GetRecipeListCopyWith<$Res> {
  __$GetRecipeListCopyWithImpl(
      _GetRecipeList _value, $Res Function(_GetRecipeList) _then)
      : super(_value, (v) => _then(v as _GetRecipeList));

  @override
  _GetRecipeList get _value => super._value as _GetRecipeList;
}

/// @nodoc

class _$_GetRecipeList extends _GetRecipeList {
  const _$_GetRecipeList() : super._();

  @override
  String toString() {
    return 'RecipeEvent.getRecipeList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetRecipeList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipeList,
    required TResult Function(int categoryId) getRecipeCategory,
    required TResult Function(int subCategoryId) getRecipeDetail,
  }) {
    return getRecipeList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRecipeList,
    TResult Function(int categoryId)? getRecipeCategory,
    TResult Function(int subCategoryId)? getRecipeDetail,
  }) {
    return getRecipeList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipeList,
    TResult Function(int categoryId)? getRecipeCategory,
    TResult Function(int subCategoryId)? getRecipeDetail,
    required TResult orElse(),
  }) {
    if (getRecipeList != null) {
      return getRecipeList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipeList value) getRecipeList,
    required TResult Function(_GetRecipeCategory value) getRecipeCategory,
    required TResult Function(_GetRecipeDetail value) getRecipeDetail,
  }) {
    return getRecipeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetRecipeList value)? getRecipeList,
    TResult Function(_GetRecipeCategory value)? getRecipeCategory,
    TResult Function(_GetRecipeDetail value)? getRecipeDetail,
  }) {
    return getRecipeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipeList value)? getRecipeList,
    TResult Function(_GetRecipeCategory value)? getRecipeCategory,
    TResult Function(_GetRecipeDetail value)? getRecipeDetail,
    required TResult orElse(),
  }) {
    if (getRecipeList != null) {
      return getRecipeList(this);
    }
    return orElse();
  }
}

abstract class _GetRecipeList extends RecipeEvent {
  const factory _GetRecipeList() = _$_GetRecipeList;
  const _GetRecipeList._() : super._();
}

/// @nodoc
abstract class _$GetRecipeCategoryCopyWith<$Res> {
  factory _$GetRecipeCategoryCopyWith(
          _GetRecipeCategory value, $Res Function(_GetRecipeCategory) then) =
      __$GetRecipeCategoryCopyWithImpl<$Res>;
  $Res call({int categoryId});
}

/// @nodoc
class __$GetRecipeCategoryCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res>
    implements _$GetRecipeCategoryCopyWith<$Res> {
  __$GetRecipeCategoryCopyWithImpl(
      _GetRecipeCategory _value, $Res Function(_GetRecipeCategory) _then)
      : super(_value, (v) => _then(v as _GetRecipeCategory));

  @override
  _GetRecipeCategory get _value => super._value as _GetRecipeCategory;

  @override
  $Res call({
    Object? categoryId = freezed,
  }) {
    return _then(_GetRecipeCategory(
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetRecipeCategory extends _GetRecipeCategory {
  const _$_GetRecipeCategory({required this.categoryId}) : super._();

  @override
  final int categoryId;

  @override
  String toString() {
    return 'RecipeEvent.getRecipeCategory(categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetRecipeCategory &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categoryId));

  @JsonKey(ignore: true)
  @override
  _$GetRecipeCategoryCopyWith<_GetRecipeCategory> get copyWith =>
      __$GetRecipeCategoryCopyWithImpl<_GetRecipeCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipeList,
    required TResult Function(int categoryId) getRecipeCategory,
    required TResult Function(int subCategoryId) getRecipeDetail,
  }) {
    return getRecipeCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRecipeList,
    TResult Function(int categoryId)? getRecipeCategory,
    TResult Function(int subCategoryId)? getRecipeDetail,
  }) {
    return getRecipeCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipeList,
    TResult Function(int categoryId)? getRecipeCategory,
    TResult Function(int subCategoryId)? getRecipeDetail,
    required TResult orElse(),
  }) {
    if (getRecipeCategory != null) {
      return getRecipeCategory(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipeList value) getRecipeList,
    required TResult Function(_GetRecipeCategory value) getRecipeCategory,
    required TResult Function(_GetRecipeDetail value) getRecipeDetail,
  }) {
    return getRecipeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetRecipeList value)? getRecipeList,
    TResult Function(_GetRecipeCategory value)? getRecipeCategory,
    TResult Function(_GetRecipeDetail value)? getRecipeDetail,
  }) {
    return getRecipeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipeList value)? getRecipeList,
    TResult Function(_GetRecipeCategory value)? getRecipeCategory,
    TResult Function(_GetRecipeDetail value)? getRecipeDetail,
    required TResult orElse(),
  }) {
    if (getRecipeCategory != null) {
      return getRecipeCategory(this);
    }
    return orElse();
  }
}

abstract class _GetRecipeCategory extends RecipeEvent {
  const factory _GetRecipeCategory({required int categoryId}) =
      _$_GetRecipeCategory;
  const _GetRecipeCategory._() : super._();

  int get categoryId;
  @JsonKey(ignore: true)
  _$GetRecipeCategoryCopyWith<_GetRecipeCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetRecipeDetailCopyWith<$Res> {
  factory _$GetRecipeDetailCopyWith(
          _GetRecipeDetail value, $Res Function(_GetRecipeDetail) then) =
      __$GetRecipeDetailCopyWithImpl<$Res>;
  $Res call({int subCategoryId});
}

/// @nodoc
class __$GetRecipeDetailCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res>
    implements _$GetRecipeDetailCopyWith<$Res> {
  __$GetRecipeDetailCopyWithImpl(
      _GetRecipeDetail _value, $Res Function(_GetRecipeDetail) _then)
      : super(_value, (v) => _then(v as _GetRecipeDetail));

  @override
  _GetRecipeDetail get _value => super._value as _GetRecipeDetail;

  @override
  $Res call({
    Object? subCategoryId = freezed,
  }) {
    return _then(_GetRecipeDetail(
      subCategoryId: subCategoryId == freezed
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetRecipeDetail extends _GetRecipeDetail {
  const _$_GetRecipeDetail({required this.subCategoryId}) : super._();

  @override
  final int subCategoryId;

  @override
  String toString() {
    return 'RecipeEvent.getRecipeDetail(subCategoryId: $subCategoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetRecipeDetail &&
            const DeepCollectionEquality()
                .equals(other.subCategoryId, subCategoryId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(subCategoryId));

  @JsonKey(ignore: true)
  @override
  _$GetRecipeDetailCopyWith<_GetRecipeDetail> get copyWith =>
      __$GetRecipeDetailCopyWithImpl<_GetRecipeDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipeList,
    required TResult Function(int categoryId) getRecipeCategory,
    required TResult Function(int subCategoryId) getRecipeDetail,
  }) {
    return getRecipeDetail(subCategoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRecipeList,
    TResult Function(int categoryId)? getRecipeCategory,
    TResult Function(int subCategoryId)? getRecipeDetail,
  }) {
    return getRecipeDetail?.call(subCategoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipeList,
    TResult Function(int categoryId)? getRecipeCategory,
    TResult Function(int subCategoryId)? getRecipeDetail,
    required TResult orElse(),
  }) {
    if (getRecipeDetail != null) {
      return getRecipeDetail(subCategoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecipeList value) getRecipeList,
    required TResult Function(_GetRecipeCategory value) getRecipeCategory,
    required TResult Function(_GetRecipeDetail value) getRecipeDetail,
  }) {
    return getRecipeDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetRecipeList value)? getRecipeList,
    TResult Function(_GetRecipeCategory value)? getRecipeCategory,
    TResult Function(_GetRecipeDetail value)? getRecipeDetail,
  }) {
    return getRecipeDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecipeList value)? getRecipeList,
    TResult Function(_GetRecipeCategory value)? getRecipeCategory,
    TResult Function(_GetRecipeDetail value)? getRecipeDetail,
    required TResult orElse(),
  }) {
    if (getRecipeDetail != null) {
      return getRecipeDetail(this);
    }
    return orElse();
  }
}

abstract class _GetRecipeDetail extends RecipeEvent {
  const factory _GetRecipeDetail({required int subCategoryId}) =
      _$_GetRecipeDetail;
  const _GetRecipeDetail._() : super._();

  int get subCategoryId;
  @JsonKey(ignore: true)
  _$GetRecipeDetailCopyWith<_GetRecipeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RecipeStateTearOff {
  const _$RecipeStateTearOff();

  _RecipeState call(
      {bool isLoading = true,
      bool hasError = false,
      List<RecipesCategoryModel> recipeCategoryList = const [],
      RecipesModel? recipesModel = null,
      RecipesDetailModel? recipesDetailModel = null,
      String error = '',
      RecipesPages currentPage = RecipesPages.main}) {
    return _RecipeState(
      isLoading: isLoading,
      hasError: hasError,
      recipeCategoryList: recipeCategoryList,
      recipesModel: recipesModel,
      recipesDetailModel: recipesDetailModel,
      error: error,
      currentPage: currentPage,
    );
  }
}

/// @nodoc
const $RecipeState = _$RecipeStateTearOff();

/// @nodoc
mixin _$RecipeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<RecipesCategoryModel> get recipeCategoryList =>
      throw _privateConstructorUsedError;
  RecipesModel? get recipesModel => throw _privateConstructorUsedError;
  RecipesDetailModel? get recipesDetailModel =>
      throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  RecipesPages get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeStateCopyWith<RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      List<RecipesCategoryModel> recipeCategoryList,
      RecipesModel? recipesModel,
      RecipesDetailModel? recipesDetailModel,
      String error,
      RecipesPages currentPage});
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res> implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  final RecipeState _value;
  // ignore: unused_field
  final $Res Function(RecipeState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? recipeCategoryList = freezed,
    Object? recipesModel = freezed,
    Object? recipesDetailModel = freezed,
    Object? error = freezed,
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
      recipeCategoryList: recipeCategoryList == freezed
          ? _value.recipeCategoryList
          : recipeCategoryList // ignore: cast_nullable_to_non_nullable
              as List<RecipesCategoryModel>,
      recipesModel: recipesModel == freezed
          ? _value.recipesModel
          : recipesModel // ignore: cast_nullable_to_non_nullable
              as RecipesModel?,
      recipesDetailModel: recipesDetailModel == freezed
          ? _value.recipesDetailModel
          : recipesDetailModel // ignore: cast_nullable_to_non_nullable
              as RecipesDetailModel?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as RecipesPages,
    ));
  }
}

/// @nodoc
abstract class _$RecipeStateCopyWith<$Res>
    implements $RecipeStateCopyWith<$Res> {
  factory _$RecipeStateCopyWith(
          _RecipeState value, $Res Function(_RecipeState) then) =
      __$RecipeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      List<RecipesCategoryModel> recipeCategoryList,
      RecipesModel? recipesModel,
      RecipesDetailModel? recipesDetailModel,
      String error,
      RecipesPages currentPage});
}

/// @nodoc
class __$RecipeStateCopyWithImpl<$Res> extends _$RecipeStateCopyWithImpl<$Res>
    implements _$RecipeStateCopyWith<$Res> {
  __$RecipeStateCopyWithImpl(
      _RecipeState _value, $Res Function(_RecipeState) _then)
      : super(_value, (v) => _then(v as _RecipeState));

  @override
  _RecipeState get _value => super._value as _RecipeState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? recipeCategoryList = freezed,
    Object? recipesModel = freezed,
    Object? recipesDetailModel = freezed,
    Object? error = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_RecipeState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      recipeCategoryList: recipeCategoryList == freezed
          ? _value.recipeCategoryList
          : recipeCategoryList // ignore: cast_nullable_to_non_nullable
              as List<RecipesCategoryModel>,
      recipesModel: recipesModel == freezed
          ? _value.recipesModel
          : recipesModel // ignore: cast_nullable_to_non_nullable
              as RecipesModel?,
      recipesDetailModel: recipesDetailModel == freezed
          ? _value.recipesDetailModel
          : recipesDetailModel // ignore: cast_nullable_to_non_nullable
              as RecipesDetailModel?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as RecipesPages,
    ));
  }
}

/// @nodoc

class _$_RecipeState extends _RecipeState {
  const _$_RecipeState(
      {this.isLoading = true,
      this.hasError = false,
      this.recipeCategoryList = const [],
      this.recipesModel = null,
      this.recipesDetailModel = null,
      this.error = '',
      this.currentPage = RecipesPages.main})
      : super._();

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool hasError;
  @JsonKey()
  @override
  final List<RecipesCategoryModel> recipeCategoryList;
  @JsonKey()
  @override
  final RecipesModel? recipesModel;
  @JsonKey()
  @override
  final RecipesDetailModel? recipesDetailModel;
  @JsonKey()
  @override
  final String error;
  @JsonKey()
  @override
  final RecipesPages currentPage;

  @override
  String toString() {
    return 'RecipeState(isLoading: $isLoading, hasError: $hasError, recipeCategoryList: $recipeCategoryList, recipesModel: $recipesModel, recipesDetailModel: $recipesDetailModel, error: $error, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecipeState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.recipeCategoryList, recipeCategoryList) &&
            const DeepCollectionEquality()
                .equals(other.recipesModel, recipesModel) &&
            const DeepCollectionEquality()
                .equals(other.recipesDetailModel, recipesDetailModel) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(recipeCategoryList),
      const DeepCollectionEquality().hash(recipesModel),
      const DeepCollectionEquality().hash(recipesDetailModel),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(currentPage));

  @JsonKey(ignore: true)
  @override
  _$RecipeStateCopyWith<_RecipeState> get copyWith =>
      __$RecipeStateCopyWithImpl<_RecipeState>(this, _$identity);
}

abstract class _RecipeState extends RecipeState {
  const factory _RecipeState(
      {bool isLoading,
      bool hasError,
      List<RecipesCategoryModel> recipeCategoryList,
      RecipesModel? recipesModel,
      RecipesDetailModel? recipesDetailModel,
      String error,
      RecipesPages currentPage}) = _$_RecipeState;
  const _RecipeState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<RecipesCategoryModel> get recipeCategoryList;
  @override
  RecipesModel? get recipesModel;
  @override
  RecipesDetailModel? get recipesDetailModel;
  @override
  String get error;
  @override
  RecipesPages get currentPage;
  @override
  @JsonKey(ignore: true)
  _$RecipeStateCopyWith<_RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}
