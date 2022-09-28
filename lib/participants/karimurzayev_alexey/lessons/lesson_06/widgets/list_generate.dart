import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_06/widgets/balls.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListGenerate extends ChangeNotifier {
  List<Widget> setBallsList() {
    final listBalls = <Widget>[];
    final maxHeight = (1.sh - 0.42.sw).round();
    final maxWidth = (1.sw - 0.3.sw).round();
    final screenWidth = 1.sw;

    for (var index = 0; index <= 69; index++) {
      var size = 0.1 + Random().nextInt(30).toDouble() / 100 * screenWidth;
      listBalls.add(
        Balls(
          top: 0 + Random().nextInt(maxHeight).toDouble(),
          left: 0 + Random().nextInt(maxWidth).toDouble(),
          color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 0.8),
          onTap: () {

            sizeUp(index);
          },
          size: size,
        ),
      );
    }
    notifyListeners();
    return listBalls;
  }
}
