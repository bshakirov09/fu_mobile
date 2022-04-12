class BlogListModel {
  final int id;
  final String title;
  final String? image;

  BlogListModel({
    required this.id,
    required this.title,
    required this.image,
  });
  static List<BlogListModel> fetchData({required List blogList}) {
    final List<BlogListModel> list = [];

    for (int i = 0; i < blogList.length; i++) {
      list.add(BlogListModel.fromJson(blogList[i]));
    }
    return list;
  }

  factory BlogListModel.fromJson(Map<String, dynamic> json) => BlogListModel(
        id: json["id"],
        title: json["title"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
      };
}
