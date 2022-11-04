import 'package:bling/age_guesser/domain/repositories/age_guess_repository.dart';
import 'package:bling/age_guesser/domain/repositories/age_guess_result.dart';
import 'package:bling/core/usecase.dart';

class AgeGuess implements UseCase {
  AgeGuess(this.getAgeGuessRepository);

  final AgeGuessRepository getAgeGuessRepository;

  @override
  // ignore: override_on_non_overriding_member
  Future<AgeGuessResult> call(String name) {
    return getAgeGuessRepository.fetchAgeGuess(name);
  }
}
