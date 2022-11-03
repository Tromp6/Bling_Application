import 'package:bling/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repositories/age_guess_repository_impl.dart';
import '../../domain/usecases/age_guess.dart';
import '../bloc/age_guess_bloc.dart';
import '../bloc/events/age_guess_events.dart';
import '../bloc/states/age_guess_states.dart';

class AgeGuesserPage extends StatelessWidget {
  const AgeGuesserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          AgeGuessBloc(getAgeGuess: AgeGuess(AgeGuessRepositoryImpl())), //TODO
      child: const AgeGuesserView(),
    );
  }
}

class AgeGuesserView extends StatelessWidget {
  const AgeGuesserView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
        appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
        body: Center(
          child: BlocConsumer<AgeGuessBloc, AgeGuessState>(
            listener: (context, state) {
              if (state is Error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                  ),
                );
              }
            },
            buildWhen: (previous, current) {
              return previous != current &&
                  current is! Error &&
                  current is! Loading;
            },
            builder: (context, state) {
              return state.whenOrNull(
                    data: (data) => Text(data.age.toString()),
                    empty: () => const Text("empty"),
                  ) ??
                  const Text("error");
            },
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => BlocProvider.of<AgeGuessBloc>(context)
                  .add(const AgeGuessEvent.guessAge("max")),
              child: const Icon(Icons.add),
            ),

            const SizedBox(height: 8),
            // Text('What\'s your name?', style: theme.textTheme.headline5),
          FloatingActionButton(
              onPressed: () => BlocProvider.of<AgeGuessBloc>(context)
                  .add(const AgeGuessEvent.reset()),
              child: const Icon(Icons.add),
            ),
          ],
        ));
  }
}
