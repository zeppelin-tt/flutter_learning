import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/trachuk_vladyslav/lesson_6/round_with_action_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class TrachukVladyslavLesson6 extends StatelessWidget {
  const TrachukVladyslavLesson6({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffa9a7e3),
            Color(0xff8165f6),
            Color(0xffb42bee),
            Color(0xffb9a9fa),
          ],
          begin: Alignment.bottomCenter,
        ),
      ),
      child: ChangeNotifierProvider(
        create: (exemplar) => RoundModelEditorNotifier(),
        child: SafeArea(
          child: Stack(
            children: [
              for (var index = 0; index < 69; index++)
                Positioned(
                  right: (0.02 + Random().nextInt(69) / 100).sw,
                  top: (0.02 + Random().nextInt(69) / 100).sh,
                  child: RoundWithActionWidget(
                    color: Color.fromRGBO(Random().nextInt(900), Random().nextInt(10), Random().nextInt(600), 3),
                    size: 60,
                    deletedBubble: false,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundModelEditorNotifier extends ChangeNotifier {
  bool sizeMore = false;
  bool sizeLess = false;

  void editSize({required bool moreSize}) {
    sizeMore = false;
    sizeLess = false;
    if (moreSize) {
      sizeMore = true;
      notifyListeners();
    } else {
      sizeLess = true;
      notifyListeners();
    }
  }
}
