class AddCheckWeightModel {
  const AddCheckWeightModel({
    this.id = 0,
    this.user = 0,
    this.weight = "",
    this.createdDttm,
  });

  final int id;
  final int user;
  final String weight;
  final DateTime? createdDttm;

  static const AddCheckWeightModel init = AddCheckWeightModel();

  factory AddCheckWeightModel.fromJson(Map<String, dynamic> json) =>
      AddCheckWeightModel(
        id: json["id"] ?? 0,
        user: json["user"] ?? 0,
        weight: json["weight"] ?? "",
        createdDttm: DateTime.parse(json["created_dttm"] ?? ""),
      );
}
