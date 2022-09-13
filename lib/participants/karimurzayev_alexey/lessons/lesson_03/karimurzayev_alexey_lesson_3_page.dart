import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_03/widgets/colors.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_03/widgets/keyboard_button.dart';

class KarimurzayevAlexeyLesson3Page extends StatefulWidget {
  const KarimurzayevAlexeyLesson3Page({super.key});

  @override
  State<KarimurzayevAlexeyLesson3Page> createState() => _KarimurzayevAlexeyLesson3PageState();
}

class _KarimurzayevAlexeyLesson3PageState extends State<KarimurzayevAlexeyLesson3Page> {
  final String displayText = '0';


  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF141414),
      child: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 85,
            ),
            DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  const SizedBox(width: 8),
                  Text(
                    displayText,
                    style: const TextStyle(
                      fontSize: 52,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 8),
                ],
              ),
            ),
            const SizedBox(
              height: 105,
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                children: const [
                  KeyboardButton(
                    text: '1',
                  ),
                  KeyboardButton(
                    text: '2',
                  ),
                  KeyboardButton(
                    text: '3',
                  ),
                  KeyboardButton(
                    text: '4',
                  ),
                  KeyboardButton(
                    text: '5',
                  ),
                  KeyboardButton(
                    text: '6',
                  ),
                  KeyboardButton(
                    text: '7',
                  ),
                  KeyboardButton(
                    text: '8',
                  ),
                  KeyboardButton(
                    text: '9',
                  ),
                  KeyboardButton(
                    text: 'C',
                    color: MyColors.colorCancel,
                  ),
                  KeyboardButton(
                    text: '0',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// void buttonClick() {
//
// }
