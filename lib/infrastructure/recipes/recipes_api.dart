import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/recipes/i_recipes_facades.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/recipes_category_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/recipes_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/recipes_list_model.dart';

import 'get_recipe_detail_request.dart';
import 'get_recipes_category_request.dart';
import 'get_repices_list_request.dart';

class RecipesApi implements IRecipesFacade {

  @override
  Future<Either<String, List<RecipesCategoryModel>>> getRecipesCategory({
    required int categoryId,
    required int page,
  }) async {
    try {
      final GetRecipesCategoryRequest request = GetRecipesCategoryRequest();
      return await request.getData(categoryId: categoryId, page: page);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, RecipesModel>> getRecipesList({
    required int page
  }) async {
    try {
      final GetRecipesListRequest request = GetRecipesListRequest();
      return await request.getData(page: page);
    } catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, RecipesDetailModel>> getRecipesDetail({
    required int categoryId
  }) async {
    try {
      final GetRecipeDetailRequest request = GetRecipeDetailRequest();
      return await request.getData(categoryId: categoryId);
    } catch(e) {
      return left(e.toString());
    }
  }
}
