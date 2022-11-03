import '../../../core/usecase.dart';
import '../entities/age_guess_entity.dart';
import '../repositories/age_guess_repository.dart';
import '../repositories/age_guess_result.dart';

class AgeGuess implements UseCase {
  AgeGuess(this.getAgeGuessRepository);

  final AgeGuessRepository getAgeGuessRepository;

  @override
  Future<AgeGuessResult> call(String name) {
    return getAgeGuessRepository.fetchAgeGuess(name);
  }
}
