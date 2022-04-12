
class ProfileModel {
  final int id;
  final String? firstName;
  final String? lastName;
  final ProfileImage? profileImage;
  final String? gender;
  final String? height;
  final String? weight;
  final String? dateOfBirth;
  final Subscription? subscription;
  final String authType;
  final String email;

  const ProfileModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.profileImage,
    required this.gender,
    required this.height,
    required this.weight,
    required this.dateOfBirth,
    required this.subscription,
    required this.authType,
    required this.email,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json["id"],
      firstName: json["first_name"],
      lastName: json["last_name"],
      profileImage: ProfileImage.fromJson(json["profile_image"] ?? {}),
      gender: json["gender"],
      height: json["height"] ?? '0',
      weight: json["weight"] ?? '0',
      dateOfBirth: json["date_of_birth"],
      subscription: Subscription.fromJson(json["subscription"] ?? {}),
      authType: json["auth_type"],
      email: json["email"],
    );
  }

  ProfileModel copyWith({
    int? id,
    String? firstName,
    String? lastName,
    ProfileImage? profileImage,
    String? gender,
    String? height,
    String? weight,
    String? dateOfBirth,
    Subscription? subscription,
    String? authType,
    String? email,
  }) {
    return ProfileModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      profileImage: profileImage ?? this.profileImage,
      gender: gender ?? this.gender,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      subscription: subscription ?? this.subscription,
      authType: authType ?? this.authType,
      email: email ?? this.email,
    );
  }
}

class ProfileImage {

  const ProfileImage({
    required this.id,
    required this.imageType,
    required this.file,
  });

  final int? id;
  final String? imageType;
  final String? file;

  factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
        id: json["id"],
        imageType: json["image_type"],
        file: json["file"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image_type": imageType,
        "file": file,
      };
}

class Subscription {
  Subscription({
    required this.id,
    required this.name,
    required this.priceAmount,
  });

  int? id;
  String? name;
  String? priceAmount;

  factory Subscription.fromJson(Map<String, dynamic> json) => Subscription(
        id: json["id"],
        name: json["name"],
        priceAmount: json["price_amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price_amount": priceAmount,
      };
}
