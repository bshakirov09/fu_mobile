// Created by Muhammed Tolkinov on 28-December-2021

import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/core/input_failures.dart';

Either<InputFailures, String> validatePass(String input) {
  const String passwordRegex = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';

  if (input.isEmpty) {
    return left(InputFailures.empty(input));
  }
  else if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  }
  else {
    return left(InputFailures.passwordMustBe(input));
  }
}
