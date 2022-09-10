import 'package:flutter/cupertino.dart';

class ColumnWithRandomRow extends StatelessWidget {
  final List<Widget> rows;

  const ColumnWithRandomRow({
    required this.rows,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(20, (index) => rows[0]),
    );
  }
}
