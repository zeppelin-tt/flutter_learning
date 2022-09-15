import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_6/bubbles_behavior_model.dart';
import 'package:provider/provider.dart';

class AnimatedBubble extends StatelessWidget {
  final Color color;
  final double radius;
  final VoidCallback? onEnd;

  const AnimatedBubble({
    required this.radius,
    required this.color,
    super.key, this.onEnd,
  });

  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: bubbleBehaviorModel.increasingTheRadius,
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          height: radius * 2,
          width: radius * 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius * 2),
            color: color,
          ),
          onEnd: () {},),
    );
  }
}

void increasingTheRadius(){
  final bubbleBehaviorModel = context.watch<BubblesBehaviorModel>();
}