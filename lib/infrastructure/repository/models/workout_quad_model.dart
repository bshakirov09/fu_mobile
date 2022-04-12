class WorkoutQuadModel {
  const WorkoutQuadModel({
    required this.id,
    required this.description,
    required this.video,
  });

  final int id;
  final String description;
  final String video;

  static const WorkoutQuadModel init = WorkoutQuadModel(
    id: 0,
    description: "",
    video: "",
  );

  factory WorkoutQuadModel.fromJson(Map<String, dynamic> json) =>
      WorkoutQuadModel(
        id: json["id"],
        description: json["description"],
        video: json["video"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description,
        "video": video,
      };
}
