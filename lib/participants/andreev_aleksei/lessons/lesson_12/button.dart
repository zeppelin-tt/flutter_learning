import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_bloc.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_event.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_state.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<PinCodeBloc>(context);
    return BlocBuilder<PinCodeBloc, PinCodeState>(builder: (context, state) {
      return Material(
        color: Colors.white,
        child: GestureDetector(
          onTap: () {
            bloc.add(ButtonPressedEvent());
          },
          child: Center(
            child: Container(
              height: 75,
              width: 150,
              alignment: Alignment.center,
              color: Colors.black,
              child: const Center(
                child: Text(
                  'Сменить пин-код',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
