
class RecipesModel {
  final List<_ImageModel> images;
  final List<List<RecipeMainCategoryModel>> categories;

  const RecipesModel({
    required this.images,
    required this.categories,
  });

  factory RecipesModel.fromJson({required Map<String, dynamic> json}) {
    return RecipesModel(
      images: _ImageModel.fetchData(images: json['images']),
      categories: RecipeMainCategoryModel.fetchData(
        categories: json['categories']
      ),
    );
  }
}

class RecipeMainCategoryModel {
  final int id;
  final String title;

  const RecipeMainCategoryModel({required this.id, required this.title});

  factory RecipeMainCategoryModel.fromJson({required Map<String, dynamic> json}) {
    return RecipeMainCategoryModel(id: json['id'], title: json['title']);
  }

  static List<List<RecipeMainCategoryModel>> fetchData({
    required List categories
  }) {
    final List<List<RecipeMainCategoryModel>> list = [];
    List<RecipeMainCategoryModel> _tempList = [];

    for (int i = 1; i <= categories.length; i++) {
      _tempList.add(RecipeMainCategoryModel.fromJson(json: categories[i - 1]));

      if (i % 3 == 0 || i == categories.length) {
        list.add(_tempList);
        _tempList = [];
      }
    }
    return list;
  }
}

class _ImageModel {
  final String image;

  const _ImageModel({required this.image});

  factory _ImageModel.fromJson({required Map<String, dynamic> json}) {
    return _ImageModel(image: json['image']);
  }

  static List<_ImageModel> fetchData({required List images}) {
    final List<_ImageModel> list = [];

    for (int i = 0; i < images.length; i++) {
      list.add(_ImageModel.fromJson(json: images[i]));
    }

    return list;
  }
}
