// Created by Muhammed Tolkinov on 28-December-2021

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_failures.freezed.dart';

@freezed
class InputFailures with _$InputFailures {

  const InputFailures._();

  const factory InputFailures.empty(String input) = _Empty;
  const factory InputFailures.invalidEmail(String input) = _InvalidEmail;
  const factory InputFailures.shortPassword(String input) = _ShortPassword;
  const factory InputFailures.passwordMustBe(String input) = _PasswordMostBe;
  const factory InputFailures.passwordDoesNotMuch(String input) = _PasswordDoesNotMuch;
}
