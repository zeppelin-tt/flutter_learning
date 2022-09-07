import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_6/andreev_aleksei_lesson_6_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AnimatedBubbleLesson6 extends StatelessWidget {
  Color color;
  double radius;
  VoidCallback? onEnd;
  bool isDestroyingWidget;

  AnimatedBubbleLesson6({
    required this.radius,
    required this.color,
    required this.isDestroyingWidget,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myModel = context.watch<BubblesBehaviorModel>();

    if (myModel.radiusIsDecreased) {
      radius = radius * 0.98;
    }
    if (myModel.radiusIsIncreased) {
      radius = radius * 1.03;
    }

    if (radius > 0 && radius < 0.05.sw) {
      radius = 0;
      isDestroyingWidget = true;
    }

    return GestureDetector(
      onTap: () {
        radius = radius * 1.2;
        myModel.changingTheRadius(isIncreasingRadius: false);
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          height: radius * 2,
          width: radius * 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius * 2),
            color: color,
          ),
          onEnd: () {
            if (radius == 0 && isDestroyingWidget) {
              myModel.changingTheRadius(isIncreasingRadius: true);
            }
          }),
    );
  }
}
