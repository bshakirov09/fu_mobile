import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/recipes/pages.dart';
import 'package:fitness_uncensored/infrastructure/recipes/recipes_api.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/recipes_category_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/recipes_detail_model.dart';
import 'package:fitness_uncensored/infrastructure/repository/models/recipes_list_model.dart';
import 'package:fitness_uncensored/utils/get_it.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';

part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc() : super(const _RecipeState());

  @override
  Stream<RecipeState> mapEventToState(RecipeEvent event) async* {
    yield* event.map(
      getRecipeList: _getRecipesList,
      getRecipeCategory: _getRecipesCategory,
      getRecipeDetail: _getRecipeDetail
    );
  }

  Stream<RecipeState> _getRecipesCategory(_GetRecipeCategory event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      error: '',
      currentPage: RecipesPages.categories,
    );

    final Either<String, List<RecipesCategoryModel>> result =
      await getIt.get<RecipesApi>().getRecipesCategory(
        categoryId: event.categoryId,
        page: 1
      );

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: true,
          error: Left(l).value
        );
      },
      (r) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: false,
          recipeCategoryList: Right(r).value
        );
      }
    );

  }

  Stream<RecipeState> _getRecipesList(_GetRecipeList event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      error: '',
      currentPage: RecipesPages.main,
    );

    final Either<String, RecipesModel> result =
      await getIt.get<RecipesApi>().getRecipesList(page: 1);

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: true,
          error: Left(l).value
        );
      },
      (r) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: false,
          recipesModel: Right(r).value,
        );
      }
    );
  }

  Stream<RecipeState> _getRecipeDetail(_GetRecipeDetail event) async* {
    yield state.copyWith(
      isLoading: true,
      hasError: false,
      currentPage: RecipesPages.detail,
    );

    final Either<String, RecipesDetailModel> result =
      await getIt.get<RecipesApi>().getRecipesDetail(
        categoryId: event.subCategoryId
      );

    yield* result.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: true,
          error: Left(l).value
        );
      },
      (r) async* {
        yield state.copyWith(
          isLoading: false,
          hasError: false,
          recipesDetailModel: Right(r).value,
        );
      }
    );
  }
}
