import 'package:freezed_annotation/freezed_annotation.dart';


part 'age_guess_result.freezed.dart';

//welche states gibt es?
//alter und inital kann da erstmal null nehmen

@freezed
class AgeGuessResult with _$AgeGuessResult {
  const factory AgeGuessResult.data() = Data;
  const factory AgeGuessResult.error(Exception error) = Error;
}