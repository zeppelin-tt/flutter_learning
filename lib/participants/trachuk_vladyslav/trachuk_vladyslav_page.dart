import 'package:flutter/material.dart';
import 'package:flutter_learning/components/app_button.dart';
import 'package:flutter_learning/participants/trachuk_vladyslav/lesson_6/trachuk_vladyslav_lesson_6.dart';


class TrachukVladyslavPage extends StatelessWidget {
  const TrachukVladyslavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: const Color(0xFF373A35),
        child: LayoutBuilder(builder: (
          context,
          constraints,
        ) {
          final screenWidth = constraints.biggest.width;
          final buttonWidth = screenWidth * 0.82;
          return ListView(
            padding: EdgeInsets.symmetric(vertical: (screenWidth - buttonWidth) / 2),
            children: [
              AppButton(
                  text: 'Don`t touch!!!',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return const TrachukVladyslavLesson6();
                    }));
                  },
                  width: buttonWidth,
                  backgroundColor: const Color(0xFFB1CDCD),),
            ],
          );
        }),
      ),
    );
  }
}
