import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_10/widget_for_animation_lesson_10.dart';

class SchennikovMaksimLesson10Page extends StatelessWidget {
  const SchennikovMaksimLesson10Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.black,
      child: Center(
        child: WidgetForAnimationLesson10(),
      ),
    );
  }
}
