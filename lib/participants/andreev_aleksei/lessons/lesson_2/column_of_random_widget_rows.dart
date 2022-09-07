import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_2/random_widget_row.dart';

class ColumnOfRandomWidgetRows extends StatelessWidget {
  final int quantityOfRows;
  final List<Widget> rows = [
    RandomWidgetRow(3),
  ];

  ColumnOfRandomWidgetRows(this.quantityOfRows, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: List.generate(quantityOfRows, (index) => rows[0]));
  }
}
