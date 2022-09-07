import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_learning/components/app_button.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_02/schennikov_maksim_lesson_2_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_03/schennikov_maksim_lesson_3_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_04/schennikov_maksim_lesson_4_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_05/schennikov_maksim_lesson_5_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_06/schennikov_maksim_lesson_6_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_07/schennikov_maksim_lesson_7_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_08/schennikov_maksim_lesson_8_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_09/schennikov_maksim_lesson_9_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_10/schennikov_maksim_lesson_10_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_11/schennikov_maxim_lesson_11_page.dart';

class SchennikovMaksimPage extends StatelessWidget {
  const SchennikovMaksimPage({
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
                onPressed: () => goTo(const SchennikovMaksimLesson2Page()),
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 3',
                onPressed: () => goTo(const SchennikovMaksimLesson3Page()),
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 4',
                onPressed: () => goTo(const SchennikovMaksimLesson4Page()),
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 5',
                onPressed: () => goTo(const SchennikovMaksimLesson5Page()),
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 6',
                onPressed: () => goTo(const SchennikovMaksimLesson6Page()),
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 7',
                onPressed: () => goTo(const SchennikovMaksimLesson7Page()),
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 8',
                onPressed: () => goTo(const SchennikovMaksimLesson8Page()),
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 9',
                onPressed: () => goTo(const SchennikovMaksimLesson9Page()),
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 10',
                onPressed: () => goTo(const SchennikovMaksimLesson10Page()),
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 11',
                onPressed: () => goTo(const SchennikovMaximLesson11Page()),
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
