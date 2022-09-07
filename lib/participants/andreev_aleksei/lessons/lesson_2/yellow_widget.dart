import 'package:flutter/material.dart';

class YellowWidget extends StatelessWidget {
  const YellowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 80,
        decoration: const BoxDecoration(color: Colors.yellow),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10));
  }
}
