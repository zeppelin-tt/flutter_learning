import 'package:flutter/material.dart';

class GradientedWidget extends StatelessWidget {
  const GradientedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        height: 60,
        decoration: const BoxDecoration(
            //color: Colors.black,
            gradient: LinearGradient(colors: [Colors.black87, Colors.black12])),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5));
  }
}
