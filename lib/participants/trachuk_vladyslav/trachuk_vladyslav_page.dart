import 'package:flutter/material.dart';
import '../../components/app_button.dart';
import 'lesson_3/calculator_page.dart';

class TrachukVladyslavPage extends StatelessWidget {
  const TrachukVladyslavPage({Key? key}) : super(key: key);

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
                  text: 'Lesson 3',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return const CalculatorPage();
                    }));
                  },
                  width: buttonWidth,
                  backgroundColor: const Color(0xFFB1CDCD)),
            ],
          );
        }),
      ),
    );
  }
}
