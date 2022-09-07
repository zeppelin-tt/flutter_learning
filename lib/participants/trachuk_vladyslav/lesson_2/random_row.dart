import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_learning/participants/trachuk_vladyslav/lesson_2/circle_widget.dart';
import 'package:flutter_learning/participants/trachuk_vladyslav/lesson_2/double_rectangle_widget.dart';
import 'package:flutter_learning/participants/trachuk_vladyslav/lesson_2/rectangle_widget.dart';
import 'package:flutter_learning/participants/trachuk_vladyslav/lesson_2/square_letter_widget.dart';
import 'package:flutter_learning/participants/trachuk_vladyslav/lesson_2/square_widget.dart';

class WidgetsRow extends StatelessWidget {
  WidgetsRow({Key? key}) : super(key: key);

  final List<Widget> listOfWidgets = [
    const CircleWidget(),
    const DoubleRectangleWidget(),
    const RectangleWidget(),
    const SquareWidget(),
    const SquareWithLetterWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) => listOfWidgets[Random().nextInt(listOfWidgets.length)]),
    );
  }
}
