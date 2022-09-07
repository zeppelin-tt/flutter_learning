import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_2/column_of_random_widget_rows.dart';

class AndreevAlekseiLesson2Page extends StatelessWidget {
  const AndreevAlekseiLesson2Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(color: Colors.white, child: SingleChildScrollView(child: ColumnOfRandomWidgetRows(20))),
    );
  }
}
