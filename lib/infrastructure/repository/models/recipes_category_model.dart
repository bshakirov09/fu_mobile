
class RecipesCategoryModel {
  final int id;
  final String title;

  const RecipesCategoryModel({
    required this.id,
    required this.title,
  });

  factory RecipesCategoryModel.fromJson(Map<String, dynamic> json) {
    return RecipesCategoryModel(
      id: json["id"],
      title: json["title"],
    );
  }

  static List<RecipesCategoryModel> fetchData({required List categoryList}) {
    final List<RecipesCategoryModel> list = [];

    for (int i = 0; i < categoryList.length; i++) {
      list.add(RecipesCategoryModel.fromJson(categoryList[i]));
    }
    return list;
  }
}
