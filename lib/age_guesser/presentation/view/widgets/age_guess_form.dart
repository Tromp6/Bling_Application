import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../../bloc/age_guess_bloc.dart';
import '../../bloc/events/age_guess_events.dart';

class AgeGuessForm extends StatefulWidget {
  const AgeGuessForm({
    Key? key,
  }) : super(key: key);

  @override
  _AgeGuessFormState createState() => _AgeGuessFormState();
}

class _AgeGuessFormState extends State<AgeGuessForm> {
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
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: MultiValidator(
                  [
                    RequiredValidator(errorText: 'Name is required'),
                    MinLengthValidator(
                      2,
                      errorText: 'At least 2 characters required',
                    ),
                    MaxLengthValidator(25,
                        errorText: 'No more than 25 characters'),
                  ],
                ),
                maxLength: 25,
                autofillHints: [
                  AutofillHints.givenName,
                ],
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autofocus: true,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(hintText: 'Type in a name!!!!'),
                onChanged: (value) {
                  _inputStr = value;
                },
                controller: _controller,
                onEditingComplete: dispatchGuessAge,
                showCursor: true,
              ),
            )),
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
