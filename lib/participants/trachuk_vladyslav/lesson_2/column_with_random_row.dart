import 'package:flutter/cupertino.dart';
import 'package:flutter_learning/participants/trachuk_vladyslav/lesson_2/random_row.dart';

class ColumnWithRandomRow extends StatelessWidget {
  final List<Widget> rows = [
    WidgetsRow(),
  ];

  ColumnWithRandomRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(20, (index) => rows[0]),
    );
  }
}
