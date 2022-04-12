class GetJournalListModel {
  GetJournalListModel({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  final int count;
  final dynamic next;
  final dynamic previous;
  final List<Result> results;

  factory GetJournalListModel.fromJson(Map<String, dynamic> json) =>
      GetJournalListModel(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    required this.id,
    required this.intensityRate,
    required this.mood,
    required this.digestion,
    required this.period,
    required this.createdDttm,
  });

  final int id;
  final String intensityRate;
  final String mood;
  final String digestion;
  final bool period;
  final DateTime createdDttm;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        intensityRate: json["intensity_rate"],
        mood: json["mood"],
        digestion: json["digestion"],
        period: json["period"],
        createdDttm: DateTime.parse(json["created_dttm"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "intensity_rate": intensityRate,
        "mood": mood,
        "digestion": digestion,
        "period": period,
        "created_dttm": createdDttm.toIso8601String(),
      };
}
