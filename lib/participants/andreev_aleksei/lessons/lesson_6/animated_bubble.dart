import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_6/bubbles_behavior_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AnimatedBubble extends StatefulWidget {
  const AnimatedBubble({
    super.key,
  });

  @override
  State<AnimatedBubble> createState() => _AnimatedBubbleState();
}

class _AnimatedBubbleState extends State<AnimatedBubble> {
  late final double topCoordinate;
  late final double leftCoordinate;
  late final Color color;
  late double radiusCoefficient;
  late double radius;
  bool thisBubble = false;

  @override
  void initState() {
    final bubblesBehaviorModel = context.read<BubblesBehaviorModel>();
    topCoordinate = bubblesBehaviorModel.setTopCoordinate();
    leftCoordinate = bubblesBehaviorModel.setLeftCoordinate();
    color = Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);
    radius = bubblesBehaviorModel.setPrimaryRadius();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bubblesBehaviorModel = context.watch<BubblesBehaviorModel>();

    radiusCoefficient = !thisBubble ? bubblesBehaviorModel.radiusCoefficient : 1.2;
    radius = radius * radiusCoefficient;

    return Positioned(
      top: topCoordinate,
      left: leftCoordinate,
      child: GestureDetector(
        onTap: () {
          setState(() {
            thisBubble = true;
            bubblesBehaviorModel.decreasingTheRadius();
          });
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
            thisBubble = false;
            sizeCheck(radius);
          },
        ),
      ),
    );
  }

  void sizeCheck(double currentRadius) {
    final bubblesBehaviorModel = context.read<BubblesBehaviorModel>();

    if (0 < currentRadius && currentRadius < 0.05.sw) {
      radius = 0;
      bubblesBehaviorModel.increasingRadius();
    }

    if (((topCoordinate + currentRadius * 2) > 1.sh) || ((leftCoordinate + currentRadius * 2) > 1.sw)) {
      setState(() {
        radius = 0;
      });
    }
  }
}
