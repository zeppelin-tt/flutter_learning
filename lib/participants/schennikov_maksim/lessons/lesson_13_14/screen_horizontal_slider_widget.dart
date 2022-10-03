import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/view_controller/slider_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenHorizontalSliderWidget extends StatefulWidget {
  final Size indicatorSize;
  final Color color;
  final Duration duration;
  final SliderController controller;

  const ScreenHorizontalSliderWidget({
    required this.indicatorSize,
    required this.color,
    required this.duration,
    required this.controller,
    super.key,
  });

  @override
  State<ScreenHorizontalSliderWidget> createState() => _ScreenHorizontalSliderWidgetState();
}

class _ScreenHorizontalSliderWidgetState extends State<ScreenHorizontalSliderWidget> {
  late final double maxScrollWidth;
  late final ScrollController scrollController;
  final screenWidth = 1.sw;
  double currentFactor = 0;

  @override
  void initState() {
    super.initState();
    maxScrollWidth = screenWidth - widget.indicatorSize.width;
    scrollController = ScrollController(initialScrollOffset: maxScrollWidth);
    widget.controller.stream.listen((factor) {
      if (factor != currentFactor) {
        unawaited(scrollController.animateTo(
          factor * maxScrollWidth,
          duration: widget.controller.animateDuration,
          curve: Curves.linear,
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (notice) {
        if (notice is ScrollUpdateNotification) {
          currentFactor = (maxScrollWidth - notice.metrics.pixels) / maxScrollWidth;
          widget.controller.add(currentFactor);
        }
        return true;
      },
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: scrollController,
        child: Row(
          children: [
            Container(
              width: maxScrollWidth,
              height: widget.indicatorSize.height,
              color: Colors.transparent,
            ),
            AnimatedContainer(
              duration: widget.duration,
              width: widget.indicatorSize.width,
              height: widget.indicatorSize.height,
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.all(Radius.circular(3.w)),
              ),
            ),
            Container(
              width: maxScrollWidth,
              height: widget.indicatorSize.height,
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
