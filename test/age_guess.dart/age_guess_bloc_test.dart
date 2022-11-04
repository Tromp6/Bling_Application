import 'package:bling/age_guesser/domain/entities/age_guess_entity.dart';
import 'package:bling/age_guesser/presentation/bloc/age_guess_bloc.dart';
import 'package:bling/age_guesser/presentation/bloc/events/age_guess_events.dart';
import 'package:bling/age_guesser/presentation/bloc/states/age_guess_states.dart';
import 'package:bling/core/injection.dart' as di;
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  await di.init();
  group('AgeGuessBloc', () {
    blocTest<AgeGuessBloc, AgeGuessState>(
      'emits age 51 when max is passed',
      build: di.getIt,
      act: (bloc) => bloc.add(const GuessAge('max')),
      skip: 1,
      wait: const Duration(seconds: 3),
      expect: () =>
          [AgeGuessState.data(AgeGuessEntity(name: 'max', age: 51.toString()))],
    );
    blocTest<AgeGuessBloc, AgeGuessState>(
      'emits loading state when age is being guessed',
      build: di.getIt,
      act: (bloc) => bloc.add(const GuessAge('max')),
      expect: () => [const AgeGuessState.loading()],
    );
  });
}
