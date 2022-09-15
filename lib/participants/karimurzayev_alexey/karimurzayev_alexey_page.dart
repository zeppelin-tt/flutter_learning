import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_learning/components/app_button.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_02/karimurzayev_alexey_lesson_2_page.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_03/karimurzayev_alexey_lesson_3_page.dart';

class KarimurzayevAlexeyPage extends StatelessWidget {
  const KarimurzayevAlexeyPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void goTo(Widget page) => unawaited(Navigator.of(context).push(MaterialPageRoute(builder: (context) => page)));

    return SafeArea(
      child: Material(
        color: const Color(0xFF373A35),
        child: LayoutBuilder(builder: (context, constraints) {
          final screenWidth = constraints.biggest.width;
          final buttonWidth = screenWidth * 0.82;
          return ListView(
            padding: EdgeInsets.symmetric(vertical: (screenWidth - buttonWidth) / 2),
            children: [
              AppButton(
                text: 'Lesson 2',
                onPressed: () => goTo(const KarimurzayevAlexeyLesson2Page()),
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 3',
                onPressed: () => goTo(const KarimurzayevAlexeyLesson3Page()),
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
            ],
          );
        }),
      ),
    );
  }
}
