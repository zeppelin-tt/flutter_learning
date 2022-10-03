import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/components/app_button.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/di/maxim_lesson_13_widget_model_factory.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/lesson_13_shape.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/schennikov_maxim_lesson_13_widget_model.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/screen_horizontal_slider_widget.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/view_model/shape_metrics.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/view_model/sliders_colors.dart';
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
                child: StreamBuilder<bool>(
                  stream: wm.isLoadingShapeStream,
                  initialData: wm.isLoadingShapeValue,
                  builder: (context, isLoading) {
                    return StreamBuilder<ShapeMetrics>(
                      stream: wm.shapeStream,
                      initialData: wm.shapeValue,
                      builder: (context, shapeMetrics) {
                        final metrics = shapeMetrics.requireData;
                        if (isLoading.requireData) {
                          return const CircularProgressIndicator(color: Colors.white);
                        }
                        return Lesson13Shape(
                          width: metrics.size.width,
                          height: metrics.size.height,
                          opacity: metrics.opacity,
                          borderRadius: metrics.borderRadius,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppButton(
                  width: 1.sw / 3 - 15,
                  text: 'Generate shape',
                  textStyle: TextStyle(color: Colors.black, fontSize: 14.sp),
                  onPressed: wm.generateNewShape,
                ),
                AppButton(
                  width: 1.sw / 3 - 15,
                  text: 'Generate colors',
                  textStyle: TextStyle(color: Colors.black, fontSize: 14.sp),
                  onPressed: wm.generateNewSlidersColors,
                ),
                SizedBox(width: 1.sw / 3 - 15),
              ],
            ),
            StreamBuilder<SlidersColors>(
              stream: wm.slidersColorsStream,
              initialData: wm.slidersColorsValue,
              builder: (context, slidersColors) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.w),
                      child: ScreenHorizontalSliderWidget(
                        indicatorSize: Size(50.w, 20.w),
                        controller: wm.widthController,
                        duration: const Duration(milliseconds: 250),
                        color: slidersColors.requireData.width,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.w),
                      child: ScreenHorizontalSliderWidget(
                        indicatorSize: Size(50.w, 20.w),
                        controller: wm.heightController,
                        duration: const Duration(milliseconds: 500),
                        color: slidersColors.requireData.height,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.w),
                      child: ScreenHorizontalSliderWidget(
                        indicatorSize: Size(50.w, 20.w),
                        controller: wm.borderRadiusController,
                        duration: const Duration(seconds: 1),
                        color: slidersColors.requireData.borderRadius,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.w),
                      child: ScreenHorizontalSliderWidget(
                        indicatorSize: Size(50.w, 20.w),
                        controller: wm.opacityController,
                        duration: const Duration(seconds: 2),
                        color: slidersColors.requireData.opacity,
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
