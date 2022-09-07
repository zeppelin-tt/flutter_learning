import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedRectsLesson9 extends AnimatedWidget {
  final double maxRadius;
  final double radius;
  final Size rectSize;

  const AnimatedRectsLesson9({
    required AnimationController controller,
    required this.maxRadius,
    required this.radius,
    required this.rectSize,
    super.key,
  }) : super(listenable: controller);

  Animation<double> get animation => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    final offset = Offset(
      maxRadius + radius * cos(animation.value) - rectSize.width / 2,
      maxRadius + radius * sin(animation.value) - rectSize.width / 2,
    );
    final offset2 = Offset(
      maxRadius + radius * cos(animation.value * 12 + pi) - rectSize.width / 2,
      maxRadius + radius * sin(animation.value * 12 + pi) - rectSize.width / 2,
    );
    return Stack(
      children: [
        Positioned(
          left: offset.dx,
          top: offset.dy,
          child: Container(
            width: rectSize.width,
            height: rectSize.height,
            color: Colors.red,
          ),
        ),
        Positioned(
          left: offset2.dx,
          top: offset2.dy,
          child: Container(
            width: rectSize.width,
            height: rectSize.height,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
