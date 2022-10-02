import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/button.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/button_state.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_bloc.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_form.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_state.dart';

class PinCodePage extends StatelessWidget {
  const PinCodePage({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<PinCodeBloc, PinCodeState>(builder: (context, state) {
      return state is ButtonState
          ? const Button()
          : const PinCodeForm();
    });
  }
}
