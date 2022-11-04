import 'package:freezed_annotation/freezed_annotation.dart';

part 'age_guess_events.freezed.dart';

//welche states gibt es?
//alter und inital kann da erstmal null nehmen

@freezed
class AgeGuessEvent with _$AgeGuessEvent {
  const factory AgeGuessEvent.guessAge(String name) = GuessAge;
}
