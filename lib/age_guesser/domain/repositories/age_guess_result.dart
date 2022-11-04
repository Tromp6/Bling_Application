import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/age_guess_entity.dart';

part 'age_guess_result.freezed.dart';


@freezed
class AgeGuessResult with _$AgeGuessResult {
  const factory AgeGuessResult.data(AgeGuessEntity ageGuessEntity) = Data;
  const factory AgeGuessResult.error(Exception error) = Error;
}
