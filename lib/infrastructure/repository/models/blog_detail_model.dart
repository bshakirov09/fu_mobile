
class BlogDetailModel {
  final int id;
  final String title;
  final String description;
  final String podcast;
  final String image;
  final List<dynamic> blogImages;
  final String createdDate;

  const BlogDetailModel({
    required this.id,
    required this.title,
    required this.description,
    required this.podcast,
    required this.image,
    required this.blogImages,
    required this.createdDate,
  });

  factory BlogDetailModel.fromJson(Map<String, dynamic> json) =>
      BlogDetailModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        podcast: json["podcast"],
        image: json["image"],
        blogImages: List<dynamic>.from(json["blog_images"].map((x) => x)),
        createdDate: json["created_dttm"],
      );
}
