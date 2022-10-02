import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_15/pin_code_page.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_15/redux/app_state.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_15/redux/reducers.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class AndreevAlekseiLesson15 extends StatelessWidget {
  final store = Store<AppState>(reducer, initialState: AppState().initialState());

  AndreevAlekseiLesson15({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: const MaterialApp(
        home: PinCodePage(),
      ),
    );
  }
}
