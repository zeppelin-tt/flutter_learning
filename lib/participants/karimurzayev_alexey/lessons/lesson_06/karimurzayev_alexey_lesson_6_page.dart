import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_06/widgets/balls.dart';

class KarimurzayevAlexeyLesson6Page extends StatefulWidget {
  const KarimurzayevAlexeyLesson6Page({super.key});

  @override
  State<KarimurzayevAlexeyLesson6Page> createState() => _KarimurzayevAlexeyLesson6PageState();
}

class _KarimurzayevAlexeyLesson6PageState extends State<KarimurzayevAlexeyLesson6Page> {
  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final verticalLimit = (MediaQuery.of(context).size.height - (maxWidth * 0.38)).round();
    final horizontalLimit = (MediaQuery.of(context).size.width - (maxWidth * 0.38)).round();

    return Material(
      color: Colors.white,
      child: ColoredBox(
        color: Colors.black,
        child: Stack(
          children: createListOfBalls(verticalLimit, horizontalLimit, maxWidth),
        ),
      ),
    );
  }

  List<Widget> createListOfBalls(int verticalLimit, int horizontalLimit, double maxWidth) {
    final listOfBalls = <Widget>[];

    for (var index = 0; index <= 9; index++) {
      final size = (10 + Random().nextInt(31).toDouble()) / 100 * maxWidth;
      listOfBalls.add(Balls(
        top: 0 + Random().nextInt(verticalLimit).toDouble(),
        left: 0 + Random().nextInt(horizontalLimit).toDouble(),
        height: size,
        width: size,
        color: Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1),
        index: index = index,
      ));
    }
    return listOfBalls;
  }
}
