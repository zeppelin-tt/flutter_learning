import 'package:flutter/material.dart';

class AnimatedRectLesson9 extends AnimatedWidget {
  final double maxValue;

  const AnimatedRectLesson9({
    required AnimationController controller,
    required this.maxValue,
    super.key,
  }) : super(listenable: controller);

  Animation<double> get radius => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: maxValue * 2,
      width: maxValue * 2,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(maxValue - radius.value),
            bottomRight: Radius.circular(radius.value),
            topLeft: Radius.circular(maxValue - radius.value),
            topRight: Radius.circular(radius.value),
          ),
        ),
      ),
    );
  }
}
