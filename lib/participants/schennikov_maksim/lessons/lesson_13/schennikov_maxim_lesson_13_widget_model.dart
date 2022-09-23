import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13/maxim_lesson_13_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13/schennikov_maxim_lesson_13_model.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13/view_model/shape_metrics.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rxdart/rxdart.dart';

final _maxWidth = 1.sw;
const _minWidth = 50;
final _maxHeight = 1.sw;
const _minHeight = 50;

class SchennikovMaximLesson13WidgetModel extends WidgetModel<MaximLesson13Page, SchennikovMaximLesson13Model> {
  final _shapeController = BehaviorSubject<ShapeMetrics>.seeded(
    const ShapeMetrics(
      height: 50,
      width: 50,
      borderRadius: 5,
      color: Colors.white,
    ),
  );

  SchennikovMaximLesson13WidgetModel(super.model);

  Stream<ShapeMetrics> get shapeStream => _shapeController.stream;

  ShapeMetrics get shapeValue => _shapeController.value;

  @override
  void dispose() {
    super.dispose();
    unawaited(_shapeController.close());
  }

  void setWidth(double factor) {
    final maxDiff = _maxWidth - _minWidth;
    _shapeController.add(shapeValue.copyWith(width: _minWidth + maxDiff * factor));
  }

  void setHeight(double factor) {
    final maxDiff = _maxHeight - _minHeight;
    _shapeController.add(shapeValue.copyWith(height: _minHeight + maxDiff * factor));
  }
}
