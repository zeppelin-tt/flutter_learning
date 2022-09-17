import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/andreev_aleksei_lesson_7_page.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/animated_dot.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/button_page.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/keyboard.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/pin_code_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CheckPinCodePage extends StatefulWidget {
  const CheckPinCodePage({
    super.key,
  });

  @override
  State<CheckPinCodePage> createState() => _CheckPinCodePageState();
}

class _CheckPinCodePageState extends State<CheckPinCodePage> {
  @override
  Widget build(BuildContext context) {
    final pinCodeProvider = context.watch<PinCodeProvider>();

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
                    color: pinCodeProvider.color_1,
                    borderColor: pinCodeProvider.borderColor_1,
                  ),
                  AnimatedDot(
                    position: 2,
                    color: pinCodeProvider.color_2,
                    borderColor: pinCodeProvider.borderColor_2,
                  ),
                  AnimatedDot(
                    position: 3,
                    color: pinCodeProvider.color_3,
                    borderColor: pinCodeProvider.borderColor_3,
                  ),
                  AnimatedDot(
                    position: 4,
                    color: pinCodeProvider.color_4,
                    borderColor: pinCodeProvider.borderColor_4,
                    onEnd: fourthDotBehaviorOnCheckPage,
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
            Keyboard(
              valueChangedOnTap: (val) {
                pinCodeProvider.receivingDigit(val);
              },
              onClean: () {
                setState(pinCodeProvider.removingLastDigit);
              },
            ),
          ]),
        ),
      ),
    );
  }

  Future<void> fourthDotBehaviorOnCheckPage() async {
    final pinCodeProvider = context.read<PinCodeProvider>();
    if (pinCodeProvider.inputNumber == pinCodeProvider.pinCode) {
      pinCodeProvider.newPinCode();
      await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const AndreevAlekseiLesson7Page();
      }));
    } else {
      if (pinCodeProvider.inputNumber.length == 4) {
        pinCodeProvider.pinCodeError();
        if (pinCodeProvider.attemptsQuantity == 0) {
          pinCodeProvider
            ..attemptsQuantity = 3
            ..dotsCleaning()
            ..error = '';
          await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const ButtonPage();
          }));
        }
      }
    }
  }
}
