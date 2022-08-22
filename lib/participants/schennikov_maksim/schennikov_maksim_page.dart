import 'package:flutter/material.dart';
import 'package:flutter_learning/components/app_button.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_3/schennikov_maksim_lesson_3_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_5/schennikov_maksim_lesson_5_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_6/schennikov_maksim_lesson_6_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_7/schennikov_maksim_lesson_7_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_8/schennikov_maksim_lesson_8_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_9/schennikov_maksim_lesson_9_page.dart';

import 'lessons/lesson_2/schennikov_maksim_lesson_2_page.dart';
import 'lessons/lesson_4/schennikov_maksim_lesson_4_page.dart';

class SchennikovMaximPage extends StatelessWidget {
  const SchennikovMaximPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const SchennikovMaksimLesson2Page();
                  }));
                },
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 3',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const SchennikovMaksimLesson3Page();
                  }));
                },
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 4',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const SchennikovMaksimLesson4Page();
                  }));
                },
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 5',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const SchennikovMaksimLesson5Page();
                  }));
                },
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 6',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const SchennikovMaksimLesson6Page();
                  }));
                },
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 7',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const SchennikovMaksimLesson7Page();
                  }));
                },
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 8',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const SchennikovMaksimLesson8Page();
                  }));
                },
                width: buttonWidth,
                backgroundColor: const Color(0xFFB1CDCD),
              ),
              AppButton(
                text: 'Lesson 9',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const SchennikovMaksimLesson9Page();
                  }));
                },
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
