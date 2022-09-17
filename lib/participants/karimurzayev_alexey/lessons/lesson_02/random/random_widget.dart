import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_02/widgets/fifth_widget.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_02/widgets/first_widget.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_02/widgets/fourth_widget.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_02/widgets/second_widget.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_02/widgets/third_widget.dart';

class RandomWidget extends StatelessWidget {
  final int _random1 = Random().nextInt(5);
  final int _random2 = Random().nextInt(5);
  final int _random3 = Random().nextInt(5);

  final List<Widget> _widgetList = const [ThirdWidget(), FirstWidget(), SecondWidget(), FourthWidget(), FifthWidget()];
  RandomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _widgetList[_random1],
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: _widgetList[_random2],
          ),
          _widgetList[_random3],
        ],
      ),
    );
  }
}
