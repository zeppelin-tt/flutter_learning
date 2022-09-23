import 'package:flutter/material.dart';

class Lesson13Shape extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double borderRadius;

  const Lesson13Shape({
    required this.height,
    required this.width,
    required this.color,
    required this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
    );
  }
}
