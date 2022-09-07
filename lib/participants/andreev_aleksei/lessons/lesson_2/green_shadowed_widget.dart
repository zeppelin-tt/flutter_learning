import 'package:flutter/material.dart';

class GreenShadowedWidget extends StatelessWidget {
  const GreenShadowedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.green,
        boxShadow: [BoxShadow(color: Colors.green, blurRadius: 25, offset: Offset(10, 10))],
      ),
      margin: const EdgeInsets.all(10),
    );
  }
}
