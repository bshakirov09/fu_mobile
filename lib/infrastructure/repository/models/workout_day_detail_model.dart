class WorkoutDayDetailModel {
  WorkoutDayDetailModel({
    required this.id,
    required this.week,
    required this.day,
    required this.minDuration,
    required this.description,
    required this.quads,
    required this.isCompleted,
  });

  final int id;
  final int week;
  final int day;
  final String minDuration;
  final String description;
  final bool isCompleted;
  final List<QuadList> quads;

  factory WorkoutDayDetailModel.fromJson(Map<String, dynamic> json) =>
      WorkoutDayDetailModel(
        id: json["id"] ?? 0,
        week: json["week"] ?? 0,
        day: json["day"] ?? 0,
        minDuration: json["min_duration"] ?? "",
        description: json["description"] ?? "",
        isCompleted: json["is_completed"] ?? false,
        quads:
            List<QuadList>.from(json["quads"].map((x) => QuadList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "week": week,
        "day": day,
        "min_duration": minDuration,
        "description": description,
        "is_completed": isCompleted,
        "quads": List<dynamic>.from(quads.map((x) => x.toJson())),
      };
}

class QuadList {
  QuadList({
    required this.id,
    required this.title,
    required this.count,
    required this.userData,
  });

  final int id;
  final String title;
  final String count;
  final double userData;

  factory QuadList.fromJson(Map<String, dynamic> json) => QuadList(
        id: json["id"] ?? 0,
        title: json["title"] ?? "",
        count: json["count"] ?? "",
        userData: json["user_data"] ?? 0.0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "count": count,
        "user_data": userData,
      };
}
