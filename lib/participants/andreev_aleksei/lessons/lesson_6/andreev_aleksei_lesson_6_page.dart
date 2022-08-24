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
      child: SafeArea(
        child: Stack(children: [
          for (var i = 0; i < 69; i++)
            Positioned(
                left: ((1.5 + Random().nextInt(85)) / 100).sw,
                top: ((1.5 + Random().nextInt(90)) / 100).sh,
                child: AnimatedRectLesson6(
                  color: Color.fromRGBO(Random().nextInt(255),
                      Random().nextInt(255), Random().nextInt(255), 1),
                  radius: ((5 + Random().nextInt(10)) / 100).sw,
                )),
        ]),
      ),
    );
  }
}
