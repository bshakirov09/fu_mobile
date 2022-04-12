class WorkoutListModel {
  WorkoutListModel({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
  });

  final int id;
  final String title;
  final String description;
  final String image;

  static List<WorkoutListModel> fetchData({required List workoutList}) {
    final List<WorkoutListModel> list = [];

    for (int i = 0; i < workoutList.length; i++) {
      list.add(WorkoutListModel.fromJson(workoutList[i]));
    }
    return list;
  }

  factory WorkoutListModel.fromJson(Map<String, dynamic> json) =>
      WorkoutListModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "image": image,
      };
}
