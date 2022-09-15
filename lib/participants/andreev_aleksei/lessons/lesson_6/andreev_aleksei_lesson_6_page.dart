import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'animated_bubble.dart';

class AndreevAlekseiLesson6Page extends StatelessWidget {
  const AndreevAlekseiLesson6Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ChangeNotifierProvider(
        create: (_) => BubblesBehaviorModel(),
        child: SafeArea(
          child: Stack(
            children: List.generate(
              68,
              (index) => Positioned(
                left: (0.02 + Random().nextInt(68) / 100).sw,
                top: (0.02 + Random().nextInt(80) / 100).sh,
                child: AnimatedBubble(
                  color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1),
                  radius: (0.05 + (Random().nextInt(100)) / 1000).sw,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BubblesBehaviorModel extends ChangeNotifier {
  bool radiusIsIncreased = false;
  bool radiusIsDecreased = false;

  double radius = (0.05 + (Random().nextInt(100)) / 1000).sw;

  void increasingTheRadius(){
    radius = radius * 1.2;
  }
}
