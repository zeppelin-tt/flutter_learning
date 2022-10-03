import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/maxim_lesson_13_page.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/schennikov_maxim_lesson_13_model.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/view_controller/slider_controller.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/view_model/shape_metrics.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/view_model/sliders_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rxdart/rxdart.dart';

final maxWidth = 1.sw;
const minWidth = 50;
final maxHeight = 1.sw;
const minHeight = 50;
const minBorderRadius = 0;
const animateDuration = Duration(milliseconds: 200);

class SchennikovMaximLesson13WidgetModel extends WidgetModel<MaximLesson13Page, SchennikovMaximLesson13Model> {
  final widthController = SliderController(initialData: 0, animateDuration: animateDuration);
  final heightController = SliderController(initialData: 0, animateDuration: animateDuration);
  final opacityController = SliderController(initialData: 0, animateDuration: animateDuration);
  final borderRadiusController = SliderController(initialData: 0, animateDuration: animateDuration);

  final _shapeController = BehaviorSubject<ShapeMetrics>.seeded(
    const ShapeMetrics(
      size: Size(50, 50),
      borderRadius: 5,
      opacity: 1,
    ),
  );

  final _slidersColorsController = BehaviorSubject<SlidersColors>.seeded(
    const SlidersColors(
      opacity: Colors.yellow,
      borderRadius: Colors.yellow,
      height: Colors.yellow,
      width: Colors.yellow,
    ),
  );

  final _isLoadingShapeController = BehaviorSubject<bool>.seeded(true);

  SchennikovMaximLesson13WidgetModel(super.model);

  Stream<ShapeMetrics> get shapeStream => _shapeController.stream;

  ShapeMetrics get shapeValue => _shapeController.value;

  Stream<SlidersColors> get slidersColorsStream => _slidersColorsController.stream;

  SlidersColors get slidersColorsValue => _slidersColorsController.value;

  Stream<bool> get isLoadingShapeStream => _isLoadingShapeController.stream.distinct();

  bool get isLoadingShapeValue => _isLoadingShapeController.value;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    unawaited(generateNewShape());
    widthController.stream.listen(setWidth);
    heightController.stream.listen(setHeight);
    opacityController.stream.listen(setOpacity);
    borderRadiusController.stream.listen(setBorderRadius);
  }

  @override
  void dispose() {
    super.dispose();
    unawaited(_shapeController.close());
    unawaited(_slidersColorsController.close());
  }

  void setWidth(double factor) {
    if (isLoadingShapeValue) {
      return;
    }
    final maxDiff = maxWidth - minWidth;
    _shapeController.add(shapeValue.copyWith(size: Size(minWidth + maxDiff * factor, shapeValue.size.height)));
  }

  void setHeight(double factor) {
    if (isLoadingShapeValue) {
      return;
    }
    final maxDiff = maxHeight - minHeight;
    _shapeController.add(shapeValue.copyWith(size: Size(shapeValue.size.width, minHeight + maxDiff * factor)));
  }

  void setBorderRadius(double factor) {
    if (isLoadingShapeValue) {
      return;
    }
    final maxDiff = shapeValue.size.shortestSide - minBorderRadius;
    _shapeController.add(shapeValue.copyWith(borderRadius: minBorderRadius + maxDiff * factor / 2));
  }

  void setOpacity(double factor) {
    if (isLoadingShapeValue) {
      return;
    }
    _shapeController.add(shapeValue.copyWith(opacity: factor));
  }

  Future<void> generateNewShape() async {
    _isLoadingShapeController.add(true);
    final newShapeDto = await model.getNewShape();
    _shapeController.add(ShapeMetrics.fromDto(newShapeDto));
    widthController.add(newShapeDto.width);
    heightController.add(newShapeDto.height);
    opacityController.add(newShapeDto.opacity);
    borderRadiusController.add(newShapeDto.borderRadius);
    _isLoadingShapeController.add(false);
  }

  void generateNewSlidersColors()  {
    final newSlidersColors = model.getSlidersColors();
    _slidersColorsController.add(SlidersColors.fromDto(newSlidersColors));
  }
}
