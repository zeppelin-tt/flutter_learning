import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_bloc.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_event.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_page.dart';

class AndreevAlekseiLesson12 extends StatelessWidget {
  const AndreevAlekseiLesson12({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PinCodeBloc()..add(InitEvent()),
      child: Builder(builder: _buildPage),
    );
  }

  Widget _buildPage(BuildContext context) {
    return const PinCodePage();}
}
