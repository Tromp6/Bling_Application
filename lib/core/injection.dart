// ignore_for_file: cascade_invocations

import 'package:bling/age_guesser/data/datasources/remote_age_guess_data_source.dart';
import 'package:bling/age_guesser/data/repositories/age_guess_repository_impl.dart';
import 'package:bling/age_guesser/domain/repositories/age_guess_repository.dart';
import 'package:bling/age_guesser/domain/usecases/age_guess.dart';
import 'package:bling/age_guesser/presentation/bloc/age_guess_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  // Bloc
  getIt.registerFactory(
    () => AgeGuessBloc(
      getAgeGuess: getIt(),
    ),
  );

  // Use cases
  getIt.registerLazySingleton(() => AgeGuess(getIt()));

  // Repository
  getIt.registerLazySingleton<AgeGuessRepository>(
    () => AgeGuessRepositoryImpl(remoteAgeGuessDataSource: getIt()),
  );

  // Data sources
  getIt.registerLazySingleton<RemoteAgeGuessDataSource>(
    RemoteAgeGuessDataSourceImpl.new,
  );
}
