class WorkoutSplitsModel {

  final int id;
  final String title;
  final String description;
  final int dayDuration;
  final int? weekDuration;
  final String image;

  const WorkoutSplitsModel({
    required this.id,
    required this.title,
    required this.description,
    required this.dayDuration,
    this.weekDuration,
    required this.image,
  });

  factory WorkoutSplitsModel.fromJson(Map<String, dynamic> json) {
    return WorkoutSplitsModel(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      dayDuration: json["day_duration"],
      weekDuration: json["week_duration"],
      image: json["image"],
    );
  }

  static List<WorkoutSplitsModel> fetchData({required List workoutSplits}) {
    final List<WorkoutSplitsModel> list = [];

    for (int i = 0; i < workoutSplits.length; i++) {
      list.add(WorkoutSplitsModel.fromJson(workoutSplits[i]));
    }
    return list;
  }
}
