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
  final controller = TextEditingController();
  late String inputStr;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          validator: MultiValidator(
            [
              RequiredValidator(errorText: 'Name is required'),
              MinLengthValidator(
                2,
                errorText: 'At least 2 characters required',
              ),
              MaxLengthValidator(25, errorText: 'No more than 25 characters'),
            ],
          ),
          maxLength: 25,
          autofillHints: [
            AutofillHints.givenName,
          ],
          autovalidateMode: AutovalidateMode.onUserInteraction,
          autofocus: true,
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(hintText: 'Your Name'),
          onChanged: (value) {
            inputStr = value;
          },
          controller: controller,
          onEditingComplete: dispatchGuessAge,
          showCursor: true,
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: dispatchGuessAge,
                child: const Text('Get Age Guess'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                child: Text('Reset'),
                onPressed: dispatchReset,
              ),
            ),
          ],
        )
      ],
    );
  }

  void dispatchGuessAge() {
    controller.clear();
    BlocProvider.of<AgeGuessBloc>(context).add(GuessAge(inputStr));
  }

  void dispatchReset() {
    controller.clear();
    BlocProvider.of<AgeGuessBloc>(context).add(Reset());
  }
}
