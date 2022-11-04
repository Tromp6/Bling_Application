import 'package:bling/age_guesser/domain/entities/age_guess_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'age_guess_result.freezed.dart';


@freezed
class AgeGuessResult with _$AgeGuessResult {
  const factory AgeGuessResult.data(AgeGuessEntity ageGuessEntity) = Data;
  const factory AgeGuessResult.error(Exception error) = Error;
}
