import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_6/animated_bubble.dart';

class AndreevAlekseiLesson6Page extends StatelessWidget {
  const AndreevAlekseiLesson6Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Material(
        child: SafeArea(
          child: Stack(
            children: List.generate(
              68,
              (index) => const AnimatedBubble(),
            ),
          ),
    ),);
  }
}
