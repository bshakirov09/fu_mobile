class WorkoutMainDetailModel {
  const WorkoutMainDetailModel({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.description,
    required this.dayDuration,
    required this.weekDuration,
    required this.minDuration,
    required this.equipment,
    required this.image,
  });

  final int id;
  final String title;
  final String shortDescription;
  final String description;
  final int dayDuration;
  final int weekDuration;
  final String minDuration;
  final List<String> equipment;
  final String image;

  static const WorkoutMainDetailModel init = WorkoutMainDetailModel(
    id: 0,
    title: "",
    shortDescription: "",
    description: "",
    dayDuration: 0,
    weekDuration: 0,
    minDuration: "",
    equipment: [],
    image: "",
  );

  factory WorkoutMainDetailModel.fromJson(Map<String, dynamic> json) =>
      WorkoutMainDetailModel(
        id: json["id"],
        title: json["title"],
        shortDescription: json["short_description"],
        description: json["description"],
        dayDuration: json["day_duration"],
        weekDuration: json["week_duration"],
        minDuration: json["min_duration"],
        equipment: List<String>.from(json["equipment"].map((x) => x)),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "short_description": shortDescription,
        "description": description,
        "day_duration": dayDuration,
        "week_duration": weekDuration,
        "min_duration": minDuration,
        "equipment": List<dynamic>.from(equipment.map((x) => x)),
        "image": image,
      };
}
