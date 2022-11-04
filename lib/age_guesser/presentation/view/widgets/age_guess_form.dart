import 'package:bling/age_guesser/presentation/bloc/age_guess_bloc.dart';
import 'package:bling/age_guesser/presentation/bloc/events/age_guess_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';

class AgeGuessForm extends StatefulWidget {
  const AgeGuessForm({
    super.key,
  });

  @override
  AgeGuessFormState createState() => AgeGuessFormState();
}

class AgeGuessFormState extends State<AgeGuessForm> {
  final _controller = TextEditingController();
  late String _inputStr;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              validator: MultiValidator(
                [
                  RequiredValidator(errorText: 'Name is required'),
                  PatternValidator(r'^[a-zA-Z]+$',
                      errorText: 'Name must be A-Z/ a-z and no whitespaces',),
                  MinLengthValidator(
                    2,
                    errorText: 'At least 2 characters required',
                  ),
                  MaxLengthValidator(
                    25,
                    errorText: 'No more than 25 characters',
                  ),
                ],
              ),
              maxLength: 25,
              autofillHints: const [
                AutofillHints.givenName,
              ],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(hintText: 'Type in a name!!!!'),
              onChanged: (value) {
                _inputStr = value;
              },
              controller: _controller,
              onEditingComplete: dispatchGuessAge,
              showCursor: true,
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  void dispatchGuessAge() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.reset();
      BlocProvider.of<AgeGuessBloc>(context).add(GuessAge(_inputStr));
    }
  }
}
