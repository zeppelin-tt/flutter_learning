import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/animated_dot.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/keyboard.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_15/redux/actions.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_15/redux/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PinCodePage extends StatelessWidget {
  const PinCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
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
                      borderColor: state.firstDotBackgroundColor(),
                    ),
                    AnimatedDot(
                      position: 2,
                      color: state.secondDotColor(),
                      borderColor: state.secondDotBackgroundColor(),
                    ),
                    AnimatedDot(
                      position: 3,
                      color: state.thirdDotColor(),
                      borderColor: state.thirdDotBackgroundColor(),
                    ),
                    AnimatedDot(
                      position: 4,
                      color: state.fourthDotColor(),
                      borderColor: state.fourthDotBackgroundColor(),
                    ),
                  ]),
                ),
                SizedBox(
                  width: 0.4.sh,
                  height: 0.1.sw,
                  child: Text(
                    state.entered,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                Keyboard(
                  valueChangedOnTap: (val) => store.dispatch(AddDigitAction(entered: val)),
                  onClean: () => store.dispatch(ClearAction()),
                ),
              ]),
            ),
          );
        },);
  }
}
