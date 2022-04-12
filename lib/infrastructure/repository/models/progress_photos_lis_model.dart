class GetListPhotoModel {
  GetListPhotoModel({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  final int count;
  final dynamic next;
  final dynamic previous;
  List<Result> results;

  factory GetListPhotoModel.fromJson(Map<String, dynamic> json) =>
      GetListPhotoModel(
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
    required this.front,
    required this.side,
    required this.back,
    required this.createdDttm,
  });

  final int id;
  final String front;
  final String side;
  final String back;
  final DateTime createdDttm;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        front: json["front"],
        side: json["side"],
        back: json["back"],
        createdDttm: DateTime.parse(json["created_dttm"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "front": front,
        "side": side,
        "back": back,
        "created_dttm": createdDttm.toIso8601String(),
      };
}
