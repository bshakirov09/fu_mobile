part of 'recipe_bloc.dart';

@freezed
class RecipeEvent with _$RecipeEvent {
  const RecipeEvent._();

  const factory RecipeEvent.getRecipeList() = _GetRecipeList;

  const factory RecipeEvent.getRecipeCategory({
    required int categoryId,
  }) = _GetRecipeCategory;

  const factory RecipeEvent.getRecipeDetail({
    required int subCategoryId,
  }) = _GetRecipeDetail;
}
