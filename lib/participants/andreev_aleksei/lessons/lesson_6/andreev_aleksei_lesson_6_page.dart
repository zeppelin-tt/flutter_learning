import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_6/animated_rect_lesson_6.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AndreevAlekseiLesson6Page extends StatelessWidget {
  const AndreevAlekseiLesson6Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ChangeNotifierProvider(
        create: (_) => BubblesBehaviorModel(),
        child: SafeArea(
          child: Stack(
            children: List.generate(
              68,
              (index) => Positioned(
                left: (0.02 + Random().nextInt(68) / 100).sw,
                top: (0.02 + Random().nextInt(80) / 100).sh,
                child: AnimatedBubbleLesson6(
                  color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1),
                  radius: (0.05 + (Random().nextInt(100)) / 1000).sw,
                  isDestroyingWidget: false,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BubblesBehaviorModel extends ChangeNotifier {
  bool radiusIsIncreased = false;
  bool radiusIsDecreased = false;

  void changingTheRadius({required bool isIncreasingRadius}) {
    radiusIsIncreased = false;
    radiusIsDecreased = false;
    if (isIncreasingRadius) {
      radiusIsIncreased = true;
      notifyListeners();
    } else {
      radiusIsDecreased = true;
      notifyListeners();
    }
  }
}
