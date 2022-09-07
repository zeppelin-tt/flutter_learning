import 'package:flutter/cupertino.dart';

class DoubleRectangleWidget extends StatelessWidget {
  const DoubleRectangleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 112,
        height: 100,
        decoration: BoxDecoration(
          color: const Color(0xffFB00FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: const Color(0xff5D005F),
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        ));
  }
}
