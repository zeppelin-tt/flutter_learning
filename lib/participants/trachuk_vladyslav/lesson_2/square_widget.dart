import 'package:flutter/cupertino.dart';

class SquareWidget extends StatelessWidget {
  const SquareWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xff0DBDB2),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}
