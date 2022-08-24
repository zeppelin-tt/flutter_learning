import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_6/animated_rect_lesson_6.dart';
import 'package:provider/provider.dart';

class AndreevAlekseiLesson6Page extends StatelessWidget {
  const AndreevAlekseiLesson6Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
      child: Stack(
        children: const <Widget>[
          Positioned(
              left: 10,
              child: AnimatedRectLesson6(
                  color: Colors.green, width: 100, height: 100)),
          AnimatedRectLesson6(color: Colors.blue, width: 70, height: 70),
          AnimatedRectLesson6(color: Colors.yellow, width: 50, height: 50),
        ],
      ),
    ));
  }
}
