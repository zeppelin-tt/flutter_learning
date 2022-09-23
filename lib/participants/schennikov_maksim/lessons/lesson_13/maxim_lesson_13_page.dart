import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13/di/maxim_lesson_13_widget_model_factory.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13/lesson_13_shape.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13/schennikov_maxim_lesson_13_widget_model.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13/screen_horizontal_slider_widget.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13/view_model/shape_metrics.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MaximLesson13Page extends ElementaryWidget<SchennikovMaximLesson13WidgetModel> {
  const MaximLesson13Page({
    Key? key,
    WidgetModelFactory wmFactory = maximLesson13WidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(SchennikovMaximLesson13WidgetModel wm) {
    return Material(
      color: Colors.black,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30.h),
            SizedBox(
              height: 1.sw,
              width: double.infinity,
              child: Center(
                child: StreamBuilder<ShapeMetrics>(
                  stream: wm.shapeStream,
                  initialData: wm.shapeValue,
                  builder: (context, shapeMetrics) {
                    final metrics = shapeMetrics.requireData;
                    return Lesson13Shape(
                      width: metrics.width,
                      height: metrics.height,
                      color: metrics.color,
                      borderRadius: metrics.borderRadius,
                    );
                  },
                ),
              ),
            ),
            const Expanded(
              child: SizedBox.shrink(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.w),
              child: ScreenHorizontalSliderWidget(
                indicatorSize: Size(50.w, 20.w),
                onScrollUpdate: wm.setWidth,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.w),
              child: ScreenHorizontalSliderWidget(
                indicatorSize: Size(50.w, 20.w),
                onScrollUpdate: wm.setHeight,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.w),
              child: ScreenHorizontalSliderWidget(
                indicatorSize: Size(50.w, 20.w),
                onScrollUpdate: (pixels) {

                },
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.w),
              child: ScreenHorizontalSliderWidget(
                indicatorSize: Size(50.w, 20.w),
                onScrollUpdate: (pixels) {},
                color: Colors.red,
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
