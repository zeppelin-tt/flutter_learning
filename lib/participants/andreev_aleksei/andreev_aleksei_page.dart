import 'package:flutter/material.dart';
import 'package:flutter_learning/components/app_button.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/andreev_aleksei_lesson_12.dart';

class AndreevAlekseiPage extends StatelessWidget {
  const AndreevAlekseiPage({
    super.key,
  });

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
                text: 'Lesson 12',
                onPressed: () async {
                  await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const AndreevAlekseiLesson12();
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
