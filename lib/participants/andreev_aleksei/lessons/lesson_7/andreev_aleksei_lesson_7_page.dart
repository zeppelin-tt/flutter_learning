import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/pin_code_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'animated_dot.dart';
import 'keyboard.dart';

class AndreevAlekseiLesson7Page extends StatefulWidget {
  const AndreevAlekseiLesson7Page({
    Key? key,
  }) : super(key: key);

  @override
  State<AndreevAlekseiLesson7Page> createState() =>
      _AndreevAlekseiLesson7PageState();
}

class _AndreevAlekseiLesson7PageState extends State<AndreevAlekseiLesson7Page> {
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
                'Введите новый пин-код',
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
                    isCheckingPage: false,
                  ),
                  AnimatedDot(
                    position: 2,
                    isCheckingPage: false,
                  ),
                  AnimatedDot(
                    position: 3,
                    isCheckingPage: false,
                  ),
                  AnimatedDot(
                    position: 4,
                    isCheckingPage: false,
                  ),
                ],
              ),
            ),
            const Keyboard(),
          ]),
        ),
      ),
    );
  }
}
