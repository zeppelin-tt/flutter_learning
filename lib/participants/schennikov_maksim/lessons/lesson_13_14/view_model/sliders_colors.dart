import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/dto/sliders_color_factors_dto.dart';

class SlidersColors {
  final Color opacity;
  final Color borderRadius;
  final Color height;
  final Color width;

  const SlidersColors({
    required this.height,
    required this.width,
    required this.opacity,
    required this.borderRadius,
  });

  factory SlidersColors.fromDto(SlidersColorFactorsDto dto) {
    return SlidersColors(
      width: Color((dto.width * 0xFFFFFF).toInt()).withOpacity(1),
      height: Color((dto.height * 0xFFFFFF).toInt()).withOpacity(1),
      borderRadius: Color((dto.borderRadius * 0xFFFFFF).toInt()).withOpacity(1),
      opacity: Color((dto.opacity * 0xFFFFFF).toInt()).withOpacity(1),
    );
  }

  SlidersColors copyWith({
    Color? opacity,
    Color? borderRadius,
    Color? height,
    Color? width,
  }) {
    return SlidersColors(
      opacity: opacity ?? this.opacity,
      borderRadius: borderRadius ?? this.borderRadius,
      height: height ?? this.height,
      width: width ?? this.width,
    );
  }
}
