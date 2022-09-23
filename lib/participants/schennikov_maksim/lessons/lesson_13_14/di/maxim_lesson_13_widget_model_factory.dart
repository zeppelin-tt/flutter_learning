import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/app_error_handler.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/schennikov_maxim_lesson_13_model.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/schennikov_maxim_lesson_13_widget_model.dart';

SchennikovMaximLesson13WidgetModel maximLesson13WidgetModelFactory(BuildContext context) {
  return SchennikovMaximLesson13WidgetModel(
    SchennikovMaximLesson13Model(
      AppErrorHandler(),
    ),
  );
}
