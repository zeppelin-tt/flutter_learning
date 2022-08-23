import 'package:flutter/material.dart';
import 'column_of_random_widget_rows.dart';

class AndreevAlekseiLesson2Page extends StatelessWidget {
  const AndreevAlekseiLesson2Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: ColumnOfRandomWidgetRows(20),
      ),
    ));
  }
}
