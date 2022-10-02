import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_15/redux/actions.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_15/redux/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    final store = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return Material(
          color: Colors.white,
          child: GestureDetector(
            onTap: () {
              store.dispatch(ButtonPressedAction());
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
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
