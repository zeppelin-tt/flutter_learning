import 'dart:math';

import 'package:elementary/elementary.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/app_error_handler.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/dto/shape_metric_factors_dto.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/dto/sliders_color_factors_dto.dart';

class SchennikovMaximLesson13Model extends ElementaryModel {
  final _rnd = Random();

  SchennikovMaximLesson13Model(AppErrorHandler errorHandler) : super(errorHandler: errorHandler);

  Future<ShapeMetricFactorsDto> getNewShape() async {
    return Future.delayed(const Duration(seconds: 1)).then(
      (_) {
        return ShapeMetricFactorsDto(
          height: _rnd.nextDouble(),
          width: _rnd.nextDouble(),
          opacity: _rnd.nextDouble(),
          borderRadius: _rnd.nextDouble(),
        );
      },
    );
  }

  SlidersColorFactorsDto getSlidersColors() {
    return SlidersColorFactorsDto(
      height: _rnd.nextDouble(),
      width: _rnd.nextDouble(),
      opacity: _rnd.nextDouble(),
      borderRadius: _rnd.nextDouble(),
    );
  }
}
