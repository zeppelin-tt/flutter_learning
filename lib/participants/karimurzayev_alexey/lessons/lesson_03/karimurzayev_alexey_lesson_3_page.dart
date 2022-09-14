import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_03/widgets/colors.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_03/widgets/keyboard_button.dart';

class KarimurzayevAlexeyLesson3Page extends StatefulWidget {
  const KarimurzayevAlexeyLesson3Page({super.key});

  @override
  State<KarimurzayevAlexeyLesson3Page> createState() => _KarimurzayevAlexeyLesson3PageState();
}

class _KarimurzayevAlexeyLesson3PageState extends State<KarimurzayevAlexeyLesson3Page> {
  String displayText = '0';

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
                children: [
                  const SizedBox(width: 8),
                  Text(
                    displayText,
                    style: const TextStyle(
                      fontSize: 52,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 8),
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
                children: [
                  KeyboardButton(
                    buttonClick: buttonOne,
                    text: '1',
                  ),
                  KeyboardButton(
                    buttonClick: buttonTwo,
                    text: '2',
                  ),
                  KeyboardButton(
                    buttonClick: buttonThree,
                    text: '3',
                  ),
                  KeyboardButton(
                    buttonClick: buttonFour,
                    text: '4',
                  ),
                  KeyboardButton(
                    buttonClick: buttonFive,
                    text: '5',
                  ),
                  KeyboardButton(
                    buttonClick: buttonSix,
                    text: '6',
                  ),
                  KeyboardButton(
                    buttonClick: buttonSeven,
                    text: '7',
                  ),
                  KeyboardButton(
                    buttonClick: buttonEight,
                    text: '8',
                  ),
                  KeyboardButton(
                    buttonClick: buttonNine,
                    text: '9',
                  ),
                  KeyboardButton(
                    buttonClick: buttonCancel,
                    text: 'C',
                    color: MyColors.colorCancel,
                  ),
                  KeyboardButton(
                    buttonClick: buttonZero,
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

  void buttonOne() {
    setState(() {
      if (displayText.length >= 10) {
        return;
      } else {
        displayText = displayText != '0' ? displayText += '1' : displayText = '1';
      }
    });
  }

  void buttonTwo() {
    setState(() {
      if (displayText.length >= 10) {
        return;
      } else {
        displayText = displayText != '0' ? displayText += '2' : displayText = '2';
      }
    });
  }

  void buttonThree() {
    setState(() {
      if (displayText.length >= 10) {
        return;
      } else {
        displayText = displayText != '0' ? displayText += '3' : displayText = '3';
      }
    });
  }

  void buttonFour() {
    setState(() {
      if (displayText.length >= 10) {
        return;
      } else {
        displayText = displayText != '0' ? displayText += '4' : displayText = '4';
      }
    });
  }

  void buttonFive() {
    setState(() {
      if (displayText.length >= 10) {
        return;
      } else {
        displayText = displayText != '0' ? displayText += '5' : displayText = '5';
      }
    });
  }

  void buttonSix() {
    setState(() {
      if (displayText.length >= 10) {
        return;
      } else {
        displayText = displayText != '0' ? displayText += '6' : displayText = '6';
      }
    });
  }

  void buttonSeven() {
    setState(() {
      if (displayText.length >= 10) {
        return;
      } else {
        displayText = displayText != '0' ? displayText += '7' : displayText = '7';
      }
    });
  }

  void buttonEight() {
    setState(() {
      if (displayText.length >= 10) {
        return;
      } else {
        displayText = displayText != '0' ? displayText += '8' : displayText = '8';
      }
    });
  }

  void buttonNine() {
    setState(() {
      if (displayText.length >= 10) {
        return;
      } else {
        displayText = displayText != '0' ? displayText += '9' : displayText = '9';
      }
    });
  }

  void buttonZero() {
    setState(() {
      if (displayText.length >= 10) {
        return;
      }
      if (displayText != '0') {
        displayText += '0';
      }
    });
  }

  void buttonCancel() {
    setState(
      () {
        displayText = displayText.substring(0, displayText.length - 1);
        if (displayText == '') {
          displayText = '0';
        }
      },
    );
  }
}
