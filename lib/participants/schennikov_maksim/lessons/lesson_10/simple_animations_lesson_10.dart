import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleAnimationsLesson10 extends StatelessWidget {
  const SimpleAnimationsLesson10({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sw,
      width: 1.sw,
      color: Colors.white,
      child: CustomPaint(
        painter: Example(),
      ),
    );
  }
}

class Example extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final shortestSide = size.shortestSide;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..color = Colors.green
      ..strokeCap = StrokeCap.round
      ..invertColors = true;

    canvas
      ..drawCircle(Offset(size.width / 4, size.height / 4), shortestSide / 5, paint)
      ..drawRect(Rect.fromLTRB(size.width / 2, size.width / 2, size.width, size.height), paint);

    final path = Path()
      ..moveTo(size.width / 2, size.height / 2)
      ..lineTo(0, 0)
      ..moveTo(size.width / 2, size.height / 2)
      ..lineTo(size.width / 2, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(Example oldDelegate) => true;
}
