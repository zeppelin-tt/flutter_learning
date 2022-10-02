import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_15/button.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_15/pin_code_form.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_15/redux/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';

class PinCodePage extends StatelessWidget {
  const PinCodePage({super.key});

  @override
  Widget build(BuildContext context) {

    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return state.goingToButtonPage ? const Button() : const PinCodeForm();
      },
    );
  }
}
