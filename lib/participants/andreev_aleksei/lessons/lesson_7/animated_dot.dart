import 'package:flutter/material.dart';

class AnimatedDot extends StatelessWidget {
  final Color color;
  final Color borderColor;
  final int position;
  final VoidCallback? onEnd;

  const AnimatedDot({
    required this.position,
    required this.color,
    required this.borderColor,
    super.key,
    this.onEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 10),
        height: 15,
        width: 15,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: color,
          border: Border.all(color: borderColor),
        ),
        onEnd: onEnd,
      ),
    );
  }
}
