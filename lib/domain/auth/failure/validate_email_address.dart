// Created by Muhammed Tolkinov on 28-December-2021

import 'package:dartz/dartz.dart';
import 'package:fitness_uncensored/domain/core/input_failures.dart';

Either<InputFailures, String> validateEmailAddress(String input) {
  const String emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (input.isEmpty) {
    return left(InputFailures.empty(input));
  }
  else if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  }
  else {
    return left(InputFailures.invalidEmail(input));
  }
}
