import 'package:bling/age_guesser/presentation/bloc/age_guess_bloc.dart';
import 'package:bling/age_guesser/presentation/bloc/states/age_guess_states.dart';
import 'package:bling/age_guesser/presentation/view/widgets/age_guess_form.dart';
import 'package:bling/app/view/loading_indicator.dart';
import 'package:bling/core/injection.dart';
import 'package:bling/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgeGuesserPage extends StatelessWidget {
  const AgeGuesserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AgeGuessBloc>(),
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
      body: BlocConsumer<AgeGuessBloc, AgeGuessState>(
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
          return previous != current ;
        },
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              state.when(
                empty: SizedBox.new,
                data: (ageGuess) => Text(
                  ageGuess.age,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RaleWay',
                  ),
                ),
                loading: LoadingSpinKit.new,
                error: (_) => const SizedBox(),
              ),
              const SizedBox(height: 300),
              const AgeGuessForm(),
              const SizedBox(height: 50)
            ],
          );
        },
      ),
    );
  }
}
