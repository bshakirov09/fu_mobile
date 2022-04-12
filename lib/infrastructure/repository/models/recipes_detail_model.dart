
class RecipesDetailModel {
  final List<String> veganIngredients;
  final List<String> ordinaryIngredients;

  const RecipesDetailModel({
    required this.veganIngredients,
    required this.ordinaryIngredients
  });

  factory RecipesDetailModel.fromJson({required Map<String, dynamic> json}) {
    return RecipesDetailModel(
      veganIngredients: json['vegetarian_ingredients'].cast<String>(),
      ordinaryIngredients: json['ingredients'].cast<String>(),
    );
  }
}
