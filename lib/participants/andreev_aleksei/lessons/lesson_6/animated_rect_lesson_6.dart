import 'package:flutter/material.dart';

class AnimatedRectLesson6 extends StatelessWidget {
  final VoidCallback? onTap;
  final double height;
  final double width;
//  final double radius;
  final Color color;

  const AnimatedRectLesson6({
    required this.height,
    required this.width,
//    required this.radius,
    required this.color,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          color: color,
        ),
      ),
    );
  }
}
