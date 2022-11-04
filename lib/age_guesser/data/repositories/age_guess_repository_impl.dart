import 'package:bling/age_guesser/data/datasources/remote_age_guess_data_source.dart';
import 'package:bling/age_guesser/domain/entities/age_guess_entity.dart';
import 'package:bling/age_guesser/domain/repositories/age_guess_repository.dart';
import 'package:bling/age_guesser/domain/repositories/age_guess_result.dart';

class AgeGuessRepositoryImpl implements AgeGuessRepository {
  AgeGuessRepositoryImpl({required this.remoteAgeGuessDataSource});

  final RemoteAgeGuessDataSource remoteAgeGuessDataSource;
  @override
  Future<AgeGuessResult> fetchAgeGuess(String name) async {
    try {
      final result = await remoteAgeGuessDataSource
          .fetch(name)
          .timeout(const Duration(seconds: 4));
      return AgeGuessResult.data(
          AgeGuessEntity(age: result.age.toString(), name: result.name),);
    } catch (e) {
      return AgeGuessResult.error(e as Exception);
    }
  }
}
