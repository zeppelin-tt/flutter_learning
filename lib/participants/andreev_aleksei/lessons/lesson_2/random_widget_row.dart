import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_2/black_widget.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_2/gradiented_widget.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_2/green_shadowed_widget.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_2/red_widget.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_2/yellow_widget.dart';

class RandomWidgetRow extends StatelessWidget {
  final int quantityOfWidgets;

  RandomWidgetRow(this.quantityOfWidgets, {Key? key}) : super(key: key);

  final List<Widget> widgets = [
    const YellowWidget(),
    const BlackWidget(),
    const GradientedWidget(),
    const RedWidget(),
    const GreenShadowedWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(quantityOfWidgets,
          (index) => widgets[Random().nextInt(widgets.length)]),
    );
  }
}
