
class ProgressJournalDetailModel {
  ProgressJournalDetailModel({
    this.id,
    this.user,
    this.intensityRate,
    this.mood,
    this.digestion,
    this.period,
    this.waterGoalDays,
    this.stepGoalDays,
    this.notes,
    this.createdDttm,
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

  factory ProgressJournalDetailModel.fromJson(Map<String, dynamic> json) =>
      ProgressJournalDetailModel(
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

  ProgressJournalDetailModel copyWith({
    int? id,
    int? user,
    String? intensityRate,
    String? mood,
    String? digestion,
    bool? period,
    int? waterGoalDays,
    int? stepGoalDays,
    String? notes,
    DateTime? createdDttm,
  }) {
    return ProgressJournalDetailModel(
      id: id ?? this.id,
      user: user ?? this.user,
      intensityRate: intensityRate ?? this.intensityRate,
      mood: mood ?? this.mood,
      digestion: digestion ?? this.digestion,
      period: period ?? this.period,
      waterGoalDays: waterGoalDays ?? this.waterGoalDays,
      stepGoalDays: stepGoalDays ?? this.stepGoalDays,
      notes: notes ?? this.notes,
      createdDttm: createdDttm ?? this.createdDttm,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user,
        "intensity_rate": intensityRate,
        "mood": mood,
        "digestion": digestion,
        "period": period,
        "water_goal_days": waterGoalDays,
        "step_goal_days": stepGoalDays,
        "notes": notes,
        "created_dttm": createdDttm?.toIso8601String(),
      };
}
