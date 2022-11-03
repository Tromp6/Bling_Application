import 'package:bling/age_guesser/presentation/bloc/states/age_guess_states.dart';
import 'package:bloc/bloc.dart';

import '../../../core/exceptions.dart';
import '../../domain/usecases/age_guess.dart';
import 'events/age_guess_events.dart';

class AgeGuessBloc extends Bloc<AgeGuessEvent, AgeGuessState> {
  AgeGuessBloc({
    required AgeGuess getAgeGuess,
  })  : _getAgeGuess = getAgeGuess,
        super(const AgeGuessState.empty()) {
    on<AgeGuessEvent>((event, emit) async {
      if (event is GuessAge) {
        emit(const AgeGuessState.loading());
        final result = await _getAgeGuess(event.name);
        result.when(
          data: (data) => emit(AgeGuessState.data(data)),
          error: (error) =>
              emit(AgeGuessState.error(_mapErrorToMessage(error))),
        );
      }
    });
  }

  final AgeGuess _getAgeGuess;

  String _mapErrorToMessage(Exception failure) {
    switch (failure.runtimeType) {
      case ServerException:
        return 'Server Error';
      default:
        return 'Unexpected error';
    }
  }
}
