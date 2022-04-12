class GetProgressDetailModel {
  const GetProgressDetailModel({
    this.id = 0,
    this.user = 0,
    this.weight = '',
    this.createdDttm,
    this.photo,
    this.journal,
  });

  final int id;
  final int user;
  final String weight;
  final DateTime? createdDttm;
  final Photo? photo;
  final Journal? journal;

  // static const GetProgressDetailModel init =  GetProgressDetailModel;

  factory GetProgressDetailModel.fromJson(Map<String, dynamic> json) =>
      GetProgressDetailModel(
        id: json["id"] ?? 0,
        user: json["user"] ?? 0,
        weight: json["weight"] ?? "",
        createdDttm: DateTime.parse(json["created_dttm"]),
        photo:json["photo"].isEmpty ? null : Photo.fromJson(json["photo"]),
        journal: json["journal"].isEmpty ? null :  Journal.fromJson(json["journal"]),
      );
}

class Journal {
  Journal({
    required this.id,
    required this.user,
    required this.intensityRate,
    required this.mood,
    required this.digestion,
    required this.period,
    required this.waterGoalDays,
    required this.stepGoalDays,
    required this.notes,
    required this.createdDttm,
  });

  final int? id;
  final int? user;
  final String? intensityRate;
  final String? mood;
  final String? digestion;
  final bool? period;
  final int? waterGoalDays;
  final int? stepGoalDays;
  final String? notes;
  final DateTime? createdDttm;

  factory Journal.fromJson(Map<String, dynamic> json) => Journal(
        id: json["id"],
        user: json["user"],
        intensityRate: json["intensity_rate"],
        mood: json["mood"],
        digestion: json["digestion"],
        period: json["period"],
        waterGoalDays: json["water_goal_days"],
        stepGoalDays: json["step_goal_days"],
        notes: json["notes"],
        createdDttm: DateTime.parse(json["created_dttm"]),
      );

  // Map<String, dynamic> toJson() => {
  //       "id": id,
  //       "user": user,
  //       "intensity_rate": intensityRate,
  //       "mood": mood,
  //       "digestion": digestion,
  //       "period": period,
  //       "water_goal_days": waterGoalDays,
  //       "step_goal_days": stepGoalDays,
  //       "notes": notes,
  //       "created_dttm": createdDttm.toIso8601String(),
  //     };
}

class Photo {
  Photo({
    required this.id,
    required this.front,
    required this.side,
    required this.back,
    required this.createdDttm,
  });

  final int? id;
  final String? front;
  final String? side;
  final String? back;
  final DateTime? createdDttm;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        id: json["id"],
        front: json["front"],
        side: json["side"],
        back: json["back"],
        createdDttm: DateTime.parse(json["created_dttm"]),
      );
}
