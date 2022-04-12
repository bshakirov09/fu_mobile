class ProgressSinglePhotoModel {
  final String front;
  final String side;
  final String back;

  const ProgressSinglePhotoModel({
    required this.front,
    required this.side,
    required this.back,
  });

  factory ProgressSinglePhotoModel.fromJson(
      {required Map<String, dynamic> json}) {
    return ProgressSinglePhotoModel(
        front: json['front'] ?? '',
        side: json['side'] ?? '',
        back: json['back'] ?? '');
  }
}
