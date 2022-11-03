import '../../domain/entities/age_guess_entity.dart';
import '../../domain/repositories/age_guess_repository.dart';
import '../../domain/repositories/age_guess_result.dart';
import '../datasources/remote_age_guess_data_source.dart';

class AgeGuessRepositoryImpl implements AgeGuessRepository {
  AgeGuessRepositoryImpl({required this.remoteAgeGuessDataSource});

  final RemoteAgeGuessDataSource remoteAgeGuessDataSource;
  @override
  Future<AgeGuessResult> fetchAgeGuess(String name) async {
    try {
      final result = await remoteAgeGuessDataSource.fetch(name);
      return AgeGuessResult.data(AgeGuessEntity(age: result.age.toString()));
    } catch (e) {
      return AgeGuessResult.error(e as Exception);
    }
  }
}
