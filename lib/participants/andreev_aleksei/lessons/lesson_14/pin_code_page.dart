import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_14/animated_dot.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_14/keyboard.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_14/pin_code_page_data.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_14/pin_code_page_widget_model.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_14/pin_code_page_widget_model_factory.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinCodePage extends ElementaryWidget<PinCodePageWidgetModel> {
  const PinCodePage({
    Key? key,
    WidgetModelFactory wmFactory = pinCodePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(PinCodePageWidgetModel wm) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: StreamBuilder<PinCodePageData>(
          stream: wm.dataStream,
          initialData: wm.dataValue,
          builder: (context, pinCodePageData) {
            final data = pinCodePageData.requireData;
            return Column(children: [
              Container(
                height: 0.4.sw,
                padding: EdgeInsets.only(top: 0.2.sw),
                child: Text(data.headerMessage, style: const TextStyle(fontSize: 30)),
              ),
              SizedBox(
                width: 0.2.sh,
                height: 0.2.sw,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  AnimatedDot(
                    position: 1,
                    color: data.firstDotColor,
                    borderColor: data.firstDotBorderColor,
                  ),
                  AnimatedDot(
                    position: 2,
                    color: data.secondDotColor,
                    borderColor: data.secondDotBorderColor,
                  ),
                  AnimatedDot(
                    position: 3,
                    color: data.thirdDotColor,
                    borderColor: data.thirdDotBorderColor,
                  ),
                  AnimatedDot(
                    position: 4,
                    color: data.fourthDotColor,
                    borderColor: data.fourthDotBorderColor,
                  ),
                ]),
              ),
              SizedBox(
                width: 0.4.sh,
                height: 0.1.sw,
                child: Text(
                  data.errorMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              Keyboard(
                valueChangedOnTap: (val) => wm.addingNewDigit(val),
                onClean: () {},
              ),
            ]);
          },
        ),
      ),
    );
  }
}
