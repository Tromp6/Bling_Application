// This file is "main.dart"
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'age_guess_entity.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.

@freezed
class AgeGuessEntity with _$AgeGuessEntity {
  const factory AgeGuessEntity({
    required String age,
    required String name,
  }) = _AgeGuessEntity;
}
