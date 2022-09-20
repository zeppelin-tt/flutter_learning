import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_learning/components/app_button.dart';
import 'package:flutter_learning/participants/askhat_gumirov/lessons/lesson_4/lesson_4.dart';

class AskhatGumirovPage extends StatelessWidget {
  const AskhatGumirovPage({
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
                text: 'Lesson 4',
                onPressed: () => goTo(Lesson4()),
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
