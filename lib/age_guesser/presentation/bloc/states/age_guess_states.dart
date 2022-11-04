import 'package:bling/age_guesser/domain/entities/age_guess_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'age_guess_states.freezed.dart';

@freezed
class AgeGuessState with _$AgeGuessState {
  const factory AgeGuessState.empty() = Empty;
  const factory AgeGuessState.data(AgeGuessEntity ageGuess) = Data;
  const factory AgeGuessState.loading() = Loading;
  const factory AgeGuessState.error(String message) = Error;
}
