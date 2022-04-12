
  class DetailViewPhotoRightModel {
  final int id;
  final String front;
  final String side;
  final String back;
  final DateTime createdDttm;

  DetailViewPhotoRightModel({
    required this.id,
    required this.front,
    required this.side,
    required this.back,
    required this.createdDttm,
  });

  // static  DetailViewPhotoModel init = DetailViewPhotoModel(
  //   id: 0,
  //   front: "",
  //   side: "",
  //   back: "",
  //   createdDttm: "",
  // );

  factory DetailViewPhotoRightModel.fromJson(Map<String, dynamic> json) {
    return DetailViewPhotoRightModel(
      id: json["id"],
      front: json["front"],
      side: json["side"],
      back: json["back"],
      createdDttm: DateTime.parse(json["created_dttm"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "front": front,
        "side": side,
        "back": back,
        "created_dttm": createdDttm.toIso8601String(),
      };
}
