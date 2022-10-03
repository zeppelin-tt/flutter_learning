import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/animated_dot.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/keyboard.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_bloc.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_event.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinCodeForm extends StatelessWidget {
  const PinCodeForm({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<PinCodeBloc>(context);
    return BlocBuilder<PinCodeBloc, PinCodeState>(builder: (context, state) {
      return Material(
        color: Colors.white,
        child: SafeArea(
          child: Column(children: [
            Container(
              height: 0.4.sw,
              padding: EdgeInsets.only(top: 0.2.sw),
              child: Text(state.message, style: const TextStyle(fontSize: 30)),
            ),
            SizedBox(
              width: 0.2.sh,
              height: 0.2.sw,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                AnimatedDot(
                  position: 1,
                  color: state.firstDotColor(),
                  borderColor: state.firstDotBorderColor(),
                ),
                AnimatedDot(
                  position: 2,
                  color: state.secondDotColor(),
                  borderColor: state.secondDotBorderColor(),
                ),
                AnimatedDot(
                  position: 3,
                  color: state.thirdDotColor(),
                  borderColor: state.thirdDotBorderColor(),
                ),
                AnimatedDot(
                  position: 4,
                  color: state.fourthDotColor(),
                  borderColor: state.fourthDotBorderColor(),
                ),
              ]),
            ),
            SizedBox(
              width: 0.4.sh,
              height: 0.1.sw,
              child: Text(
                bloc.state.errorMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            Keyboard(
              valueChangedOnTap: (val) => bloc.add(NewDigitEvent(entered: val)),
              onClean: () => bloc.add(ClearEvent()),
            ),
          ]),
        ),
      );
    });
  }
}
