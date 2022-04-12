// Created by Muhammed Tolkinov on 14-December-2021

import 'package:enum_to_string/enum_to_string.dart';
import 'package:fitness_uncensored/domain/user/gender_type.dart';

class AuthUserModel {
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? password;
  final String? confirmPassword;
  final GenderType? gender;

  const AuthUserModel({
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.confirmPassword,
    this.gender
  });

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "first_name": firstName,
      "last_name": lastName,
      "password": password,
      "confirm_password": confirmPassword,
      "gender": EnumToString.convertToString(gender),
    };
  }

  AuthUserModel copyWith({
    String? email,
    String? firstName,
    String? lastName,
    String? password,
    String? confirmPassword,
    GenderType? gender,
  }) {
    return AuthUserModel(
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      password: password ?? this.lastName,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      gender: gender ?? this.gender,
    );
  }
}
