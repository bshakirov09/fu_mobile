class WorkoutSplitsRoadmapModel {
  final Map<String, List<WorkoutSplitsRoadmapItemModel>> items;

  const WorkoutSplitsRoadmapModel({required this.items});

  static Map<String, List<WorkoutSplitsRoadmapItemModel>> fetchData(
      {required Map<String, dynamic> json}) {
    final Map<String, List<WorkoutSplitsRoadmapItemModel>> list = {};

    for (var key in json.keys) {
      list[key] = WorkoutSplitsRoadmapItemModel.fetchData(json: json[key]);
    }

    return list;
  }
}

class WorkoutSplitsRoadmapItemModel {
  final int id;
  final int day;
  final String title;
  final bool isCompleted;
  final int quadsCount;
  final String image;

  const WorkoutSplitsRoadmapItemModel({
    required this.id,
    required this.day,
    required this.title,
    required this.isCompleted,
    required this.quadsCount,
    required this.image,
  });

  factory WorkoutSplitsRoadmapItemModel.fromJson(Map<String, dynamic> json) {
    return WorkoutSplitsRoadmapItemModel(
      id: json["id"],
      day: json["day"],
      title: json["title"],
      isCompleted: json["is_completed"] ?? false,
      quadsCount: json["quads_count"],
      image: json["image"],
    );
  }

  static List<WorkoutSplitsRoadmapItemModel> fetchData({
    required List json,
  }) {
    final List<WorkoutSplitsRoadmapItemModel> items = [];

    for (int i = 0; i < json.length; i++) {
      items.add(WorkoutSplitsRoadmapItemModel.fromJson(json[i]));
    }

    return items;
  }
}
