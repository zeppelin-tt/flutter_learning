import 'package:flutter/cupertino.dart';
import 'package:flutter_learning/participants/trachuk_vladyslav/lesson_2/column_with_random_row.dart';

class TrachukVladyslav extends StatelessWidget {
  const TrachukVladyslav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: ColumnWithRandomRow());
  }
}
