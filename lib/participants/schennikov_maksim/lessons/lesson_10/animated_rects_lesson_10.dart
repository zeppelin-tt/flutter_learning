import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedRectsLesson10 extends AnimatedWidget {
  final double maxRadius;
  final double radius;
  final Size rectSize;

  const AnimatedRectsLesson10({
    required AnimationController controller,
    required this.maxRadius,
    required this.radius,
    required this.rectSize,
    Key? key,
  }) : super(listenable: controller, key: key);

  Animation<double> get animation => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: Clock(angle: animation.value),
    );
  }
}

class Clock extends CustomPainter {
  final double angle;

  const Clock({
    required this.angle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    assert(size.width == size.height);

    final side = size.width;
    final smallRadius = side / 4;
    final bigRadius = side / 2;
    final center = Offset(size.width / 2, size.height / 2);

    final smallArrowOffset = Offset(
      smallRadius * cos(angle),
      smallRadius * sin(angle),
    );
    final bigArrowOffset = Offset(
      bigRadius / 2 + bigRadius * cos(angle * 12),
      bigRadius / 2 + bigRadius * sin(angle * 12),
    );

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..color = Colors.yellow
      ..strokeCap = StrokeCap.round;

    final shapePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.blue;

    canvas.drawPath(
        Path.combine(
            PathOperation.difference,
            Path()..addRect(Offset.zero & size),
            Path()..addOval(Offset.zero & Size(size.width / 2, size.height / 2)),
        ), shapePaint,
    );
  }

  @override
  bool shouldRepaint(Clock oldDelegate) => true;
}
