
part of 'recipe_bloc.dart';

@freezed
class RecipeState with _$RecipeState {

  const RecipeState._();

  const factory RecipeState({
    @Default(true) bool isLoading,
    @Default(false) bool hasError,
    @Default([]) List<RecipesCategoryModel> recipeCategoryList,
    @Default(null) RecipesModel? recipesModel,
    @Default(null) RecipesDetailModel? recipesDetailModel,
    @Default('') String error,
    @Default(RecipesPages.main) RecipesPages currentPage,
  }) = _RecipeState;
}
