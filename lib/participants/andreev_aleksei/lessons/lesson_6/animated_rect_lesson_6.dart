import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedRectLesson6 extends StatelessWidget {
  final VoidCallback? onTap;
  final double radius;
  final Color color;

  const AnimatedRectLesson6({
    required this.radius,
    required this.color,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        height: radius,
        width: radius,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color,
        ),
      ),
    );
  }
}
