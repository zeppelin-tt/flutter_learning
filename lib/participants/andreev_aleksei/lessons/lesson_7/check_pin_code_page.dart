import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/animated_dot.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/keyboard.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/pin_code_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CheckPinCodePage extends StatelessWidget {
  const CheckPinCodePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pinCodeProvider = context.watch<PinCodeProvider>()
    ..isCheckingPage = true;

    return WillPopScope(
      onWillPop: () async => false,
      child: Material(
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
                  AnimatedDot(
                    position: 1,
                    isCheckingPage: true,
                    color: pinCodeProvider.color_1,
                    borderColor: pinCodeProvider.borderColor_1,
                  ),
                  AnimatedDot(
                    position: 2,
                    isCheckingPage: true,
                    color: pinCodeProvider.color_2,
                    borderColor: pinCodeProvider.borderColor_2,
                  ),
                  AnimatedDot(
                    position: 3,
                    isCheckingPage: true,
                    color: pinCodeProvider.color_3,
                    borderColor: pinCodeProvider.borderColor_3,
                  ),
                  AnimatedDot(
                    position: 4,
                    isCheckingPage: true,
                    color: pinCodeProvider.color_4,
                    borderColor: pinCodeProvider.borderColor_4,
                  ),
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
      ),
    );
  }
}
