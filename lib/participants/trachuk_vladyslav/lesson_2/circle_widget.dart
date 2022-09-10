import 'package:flutter/cupertino.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xffBA55D3),
        borderRadius: BorderRadius.circular(50),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
    );
  }
}
