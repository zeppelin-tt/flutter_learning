import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/andreev_aleksei_lesson_7_page.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/button_page.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/pin_code_provider.dart';
import 'package:provider/provider.dart';

class AnimatedDot extends StatelessWidget {

  Color color = Colors.white;
  Color borderColor = Colors.black;
  int position;
  VoidCallback? onEnd;
  bool isCheckingPage;

  AnimatedDot({required this.position, required this.isCheckingPage, super.key});



  @override
  Widget build(BuildContext context) {
    final pinCodeProvider = context.watch<PinCodeProvider>();

    if (position == 1) {
      if (pinCodeProvider.gotFirst) {
        color = Colors.black;
      }
      if (!pinCodeProvider.isCorrectPinCode &&
          pinCodeProvider.pinCodeChecked &&
          isCheckingPage) {
        color = Colors.red;
        borderColor = Colors.red;
      }
    }
    if (position == 2) {
      if (pinCodeProvider.gotSecond) {
        color = Colors.black;
      }
      if (!pinCodeProvider.isCorrectPinCode &&
          pinCodeProvider.pinCodeChecked &&
          isCheckingPage) {
        color = Colors.red;
        borderColor = Colors.red;
      }
    }
    if (position == 3) {
      if (pinCodeProvider.gotThird) {
        color = Colors.black;
      }
      if (!pinCodeProvider.isCorrectPinCode &&
          pinCodeProvider.pinCodeChecked &&
          isCheckingPage) {
        borderColor = Colors.red;
        color = Colors.red;
      }
    }
    if (position == 4) {
      if (pinCodeProvider.gotFourth) {
        color = Colors.black;
      }
      if (!pinCodeProvider.isCorrectPinCode &&
          pinCodeProvider.pinCodeChecked &&
          isCheckingPage) {
        color = Colors.red;
        borderColor = Colors.red;
      }
    }

    return Material(
        color: Colors.white,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 10),
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              color: color,
              border: Border.all(color: borderColor),),
          onEnd: () {
            if (position == 4 && pinCodeProvider.gotFourth && !isCheckingPage) {
              pinCodeProvider.rememberPinCode();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const ButtonPage();
              }));
            }
            if (position == 4 &&
                pinCodeProvider.gotFourth &&
                isCheckingPage &&
                pinCodeProvider.isCorrectPinCode) {
              pinCodeProvider.newPinCode();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const AndreevAlekseiLesson7Page();
              }));
            }
            if (position == 4 &&
                pinCodeProvider.gotFourth &&
                isCheckingPage &&
                !pinCodeProvider.isCorrectPinCode &&
                pinCodeProvider.attemptsQuantity != 0) {
              pinCodeProvider.pinCodeCheckingError();
            }
            if (position == 4 &&
                pinCodeProvider.gotFourth &&
                isCheckingPage &&
                !pinCodeProvider.isCorrectPinCode &&
                pinCodeProvider.attemptsQuantity == 0) {
              pinCodeProvider.anotherAttempt();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const ButtonPage();
              }));
            }
          },
        ),);
  }
}
