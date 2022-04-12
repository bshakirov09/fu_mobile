// To parse this JSON data, do
//
//     final getWorkoutDayDetailModel = getWorkoutDayDetailModelFromJson(jsonString);

class WorkoutDayDetailModel {
  WorkoutDayDetailModel({
    required this.id,
    required this.week,
    required this.day,
    required this.image,
    required this.quadList,
  });

  final int id;
  final int week;
  final int day;
  final String image;
  final List<QuadList> quadList;

  factory WorkoutDayDetailModel.fromJson(Map<String, dynamic> json) =>
      WorkoutDayDetailModel(
        id: json["id"],
        week: json["week"],
        day: json["day"],
        image: json["image"],
        quadList: List<QuadList>.from(
            json["quad_list"].map((x) => QuadList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "week": week,
        "day": day,
        "image": image,
        "quad_list": List<dynamic>.from(quadList.map((x) => x.toJson())),
      };
}

class QuadList {
  QuadList({
    required this.id,
    required this.title,
    required this.count,
    required this.isCompleted,
    required this.userData,
  });

  final int id;
  final String title;
  final String count;
  final bool isCompleted;
  final double userData;

  factory QuadList.fromJson(Map<String, dynamic> json) => QuadList(
        id: json["id"],
        title: json["title"],
        count: json["count"],
        isCompleted: json["is_completed"],
        userData: json["user_data"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "count": count,
        "is_completed": isCompleted,
        "user_data": userData,
      };
}
