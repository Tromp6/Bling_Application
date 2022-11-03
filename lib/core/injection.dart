import 'package:get_it/get_it.dart';

import '../age_guesser/data/datasources/remote_age_guess_data_source.dart';
import '../age_guesser/data/repositories/age_guess_repository_impl.dart';
import '../age_guesser/domain/repositories/age_guess_repository.dart';
import '../age_guesser/domain/usecases/age_guess.dart';
import '../age_guesser/presentation/bloc/age_guess_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => AgeGuessBloc(
      getAgeGuess: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => AgeGuess(sl()));

  // Repository
  sl.registerLazySingleton<AgeGuessRepository>(
    () => AgeGuessRepositoryImpl(remoteAgeGuessDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<RemoteAgeGuessDataSource>(
    () => RemoteAgeGuessDataSourceImpl(),
  );
}
