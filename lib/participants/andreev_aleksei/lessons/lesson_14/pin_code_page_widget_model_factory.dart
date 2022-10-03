import 'package:flutter/cupertino.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_14/app_error_handler.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_14/pin_code_page_model.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_14/pin_code_page_widget_model.dart';

PinCodePageWidgetModel pinCodePageWidgetModelFactory(BuildContext context) {
  return PinCodePageWidgetModel(
    PinCodePageModel(
      AppErrorHandler(),
    ),
  );
}
