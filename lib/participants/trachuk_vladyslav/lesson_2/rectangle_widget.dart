import 'package:flutter/cupertino.dart';

class RectangleWidget extends StatelessWidget {
  const RectangleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xff800080),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}
