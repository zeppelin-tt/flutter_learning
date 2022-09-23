import 'package:flutter/material.dart';

class ShapeMetrics {
  final double height;
  final double width;
  final Color color;
  final double borderRadius;

  const ShapeMetrics({
    required this.height,
    required this.width,
    required this.color,
    required this.borderRadius,
  });

  ShapeMetrics copyWith({
    double? height,
    double? width,
    Color? color,
    double? borderRadius,
  }) {
    return ShapeMetrics(
      height: height ?? this.height,
      width: width ?? this.width,
      color: color ?? this.color,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
