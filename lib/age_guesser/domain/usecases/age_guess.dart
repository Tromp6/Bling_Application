import '../../../core/usecase.dart';
import '../repositories/age_guess_repository.dart';

class AgeGuess implements UseCase {
  AgeGuess(this.getAgeGuessRepository);

  final AgeGuessRepository getAgeGuessRepository;

  @override
  Future<dynamic> call(String name) {
    return getAgeGuessRepository.fetchAgeGuess(name);
  }
}
