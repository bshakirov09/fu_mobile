// Created by Muhammed Tolkinov on 09-December-2021


import 'package:dartz/dartz.dart';

import 'package:fitness_uncensored/domain/core/input_failures.dart';

import 'validate_email_address.dart';
import 'validate_password.dart';

class AuthFailure {
  static Either<InputFailures, String> validateEmail(String input) {
    return validateEmailAddress(input);
  }

  static Either<InputFailures, String> validatePassword(String input) {
    return validatePass(input);
  }
}
