
import 'package:dartz/dartz.dart';

import '../../infrastructure/repository/models/recipes_category_model.dart';
import '../../infrastructure/repository/models/recipes_detail_model.dart';
import '../../infrastructure/repository/models/recipes_list_model.dart';

abstract class IRecipesFacade {
  Future<Either<String, List<RecipesCategoryModel>>> getRecipesCategory({
    required int categoryId,
    required int page,
  });

  Future<Either<String, RecipesModel>> getRecipesList({
    required int page,
  });

  Future<Either<String, RecipesDetailModel>> getRecipesDetail({
    required int categoryId,
  });

}
