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
    super.key,
  }) : super(listenable: controller);

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
    assert(size.width == size.height, 'size.width == size.height');

    final shapePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.blue;

    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        Path()..addRect(Offset.zero & size),
        Path()..addOval(Offset.zero & Size(size.width / 2, size.height / 2)),
      ),
      shapePaint,
    );
  }

  @override
  bool shouldRepaint(Clock oldDelegate) => true;
}
