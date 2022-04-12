class WorkoutMainListModel {
  WorkoutMainListModel({
    required this.id,
    required this.title,
    required this.workoutTypes,
  });

  final int id;
  final String title;
  final List<WorkoutType> workoutTypes;

  static List<WorkoutMainListModel> fetchData({required List workoutList}) {
    final List<WorkoutMainListModel> list = [];

    for (int i = 0; i < workoutList.length; i++) {
      list.add(WorkoutMainListModel.fromJson(workoutList[i]));
    }
    return list;
  }

  factory WorkoutMainListModel.fromJson(Map<String, dynamic> json) =>
      WorkoutMainListModel(
        id: json["id"] ?? 0,
        title: json["title"] ?? "",
        workoutTypes: List<WorkoutType>.from(
            json["workout_types"].map((x) => WorkoutType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "workout_types":
            List<dynamic>.from(workoutTypes.map((x) => x.toJson())),
      };
}

class WorkoutType {
  WorkoutType({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.dayDuration,
    required this.image,
  });

  final int id;
  final String title;
  final String shortDescription;
  final int dayDuration;
  final String image;

  factory WorkoutType.fromJson(Map<String, dynamic> json) => WorkoutType(
        id: json["id"],
        title: json["title"],
        shortDescription: json["short_description"],
        dayDuration: json["day_duration"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "short_description": shortDescription,
        "day_duration": dayDuration,
        "image": image,
      };
}
