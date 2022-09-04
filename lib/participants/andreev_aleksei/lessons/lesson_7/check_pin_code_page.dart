import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/pin_code_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'animated_dot.dart';
import 'block_page.dart';
import 'keyboard.dart';

class CheckPinCodePage extends StatelessWidget {
  const CheckPinCodePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pinCodeProvider = context.watch<PinCodeProvider>();
    if (pinCodeProvider.keyboardisBlocked && pinCodeProvider.isReturningError) {
      return const BlockPage();
    } else {
      return Material(
        color: Colors.white,
        child: SafeArea(
          child: Column(children: [
            Container(
              height: 0.4.sw,
              padding: EdgeInsets.only(top: 0.2.sw),
              child: const Text(
                'Введите пин-код',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              width: 0.2.sh,
              height: 0.2.sw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AnimatedDot(position: 1, isCheckingPage: true),
                  AnimatedDot(position: 2, isCheckingPage: true),
                  AnimatedDot(position: 3, isCheckingPage: true),
                  AnimatedDot(position: 4, isCheckingPage: true),
                ],
              ),
            ),
            SizedBox(
              width: 0.4.sh,
              height: 0.1.sw,
              child: Text(
                pinCodeProvider.error,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            const Keyboard(),
          ]),
        ),
      );
    }
  }
}
