import 'package:bling/age_guesser/domain/repositories/age_guess_result.dart';

// ignore: one_member_abstracts
abstract class AgeGuessRepository {
  Future<AgeGuessResult> fetchAgeGuess(String name);
}
