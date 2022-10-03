import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/dto/shape_metric_factors_dto.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/schennikov_maxim_lesson_13_widget_model.dart';

class ShapeMetrics {
  final double opacity;
  final double borderRadius;
  final Size size;

  const ShapeMetrics({
    required this.size,
    required this.opacity,
    required this.borderRadius,
  });

  factory ShapeMetrics.fromDto(ShapeMetricFactorsDto dto) {
    final width = (maxWidth - minWidth) * dto.width;
    final height = (maxHeight - minHeight) * dto.height;
    final size = Size(width, height);
    return ShapeMetrics(
      size: size,
      borderRadius: dto.borderRadius * size.shortestSide / 2,
      opacity: dto.opacity,
    );
  }

  ShapeMetrics copyWith({
    Size? size,
    double? opacity,
    double? borderRadius,
  }) {
    return ShapeMetrics(
      size: size ?? this.size,
      opacity: opacity ?? this.opacity,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
