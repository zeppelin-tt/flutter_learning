import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_10/animated_rects_lesson_10.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetForAnimationLesson10 extends StatefulWidget {
  const WidgetForAnimationLesson10({
    super.key,
  });

  @override
  State<WidgetForAnimationLesson10> createState() => _WidgetForAnimationLesson10State();
}

class _WidgetForAnimationLesson10State extends State<WidgetForAnimationLesson10> with TickerProviderStateMixin {
  static const rectSize = Size(50, 50);
  final angleTween = Tween<double>(begin: 0, end: pi * 2);
  final rnd = Random();
  final colorTween = ColorTween(begin: Colors.red, end: Colors.blue);
  final maxRadius = 0.5.sw;
  final scrollController = ScrollController();
  final scrollItemWidth = 90.0;
  final maxScrollOffset = 11 * 90 - 1.sw;
  late final double radius;
  late final Animation<double> animation;
  late AnimationController controller;
  late Offset offset;
  late Offset offset2;

  @override
  void initState() {
    super.initState();
    radius = maxRadius * 0.8;
    offset = Offset(
      maxRadius + radius * cos(0) - rectSize.width / 2,
      maxRadius + radius * sin(0) - rectSize.width / 2,
    );
    offset2 = Offset(
      maxRadius + radius * cos(pi + 0) - rectSize.width / 2,
      maxRadius + radius * sin(pi + 0) - rectSize.width / 2,
    );
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 16));
    controller.addListener(() {
      if (controller.isCompleted) {
        controller.repeat();
      }
      if (controller.isDismissed) {
        controller.forward();
      }
    });
    animation = angleTween.animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 10),
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: 1.sw,
              child: AnimatedRectsLesson10(
                controller: controller,
                maxRadius: maxRadius,
                radius: radius,
                rectSize: rectSize,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: scrollController,
            builder: (context, _) {
              final color = scrollController.hasClients
                  ? colorTween.lerp(scrollController.position.pixels / maxScrollOffset)
                  : colorTween.begin;
              return Row(
                children: [
                  SizedBox(width: 0.1.sw),
                  Expanded(
                    child: GestureDetector(
                      onTapDown: (_) => controller.forward(),
                      onTapCancel: controller.stop,
                      onTapUp: (_) => controller.stop(),
                      child: Container(
                        color: color,
                        height: 60,
                        child: const Center(
                          child: Text('forward', style: TextStyle(color: Colors.yellow, fontSize: 26)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 0.1.sw),
                  Expanded(
                    child: GestureDetector(
                      onTapDown: (_) => controller.reverse(),
                      onTapCancel: controller.stop,
                      onTapUp: (_) => controller.stop(),
                      child: Container(
                        color: color,
                        height: 60,
                        child: const Center(
                          child: Text('reverse', style: TextStyle(color: Colors.yellow, fontSize: 26)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 0.1.sw),
                ],
              );
            },
          ),
          SizedBox(
            height: 60,
            child: ListView(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (_) {
                return Container(
                  width: scrollItemWidth,
                  color: Color((rnd.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    scrollController.dispose();
  }
}
