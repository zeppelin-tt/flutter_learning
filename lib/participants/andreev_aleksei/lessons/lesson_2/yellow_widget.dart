import 'package:flutter/material.dart';

class YellowWidget extends StatelessWidget {
  const YellowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 80,
        decoration: const BoxDecoration(color: Colors.yellow),
        margin: const EdgeInsets.all(10),);
  }
}
