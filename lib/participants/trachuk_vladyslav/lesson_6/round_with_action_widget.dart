
import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/trachuk_vladyslav/lesson_6/trachuk_vladyslav_lesson_6.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class RoundWithActionWidget extends StatelessWidget {
  final Color color;
  double size;
  VoidCallback? stop;
   bool deletedBubble;

  RoundWithActionWidget({
    required this.color,
    required this.size,
    required this.deletedBubble,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final roundModelEditorNotifier = context.watch<RoundModelEditorNotifier>();
    if(roundModelEditorNotifier.sizeLess){
      size = size * 0.98;
    }
    if(roundModelEditorNotifier.sizeMore){
      size = size * 1.03;
    }
    if(size > 0 && size < 0.05.sw){
      size = 0;
      deletedBubble = true;
    }

    return GestureDetector(
        onTap: () {
          size = size * 1.2;
          roundModelEditorNotifier.editSize(moreSize: false);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: size,
          width: size ,
          decoration: BoxDecoration(
            border:  const Border.fromBorderSide(BorderSide(color: Colors.yellowAccent)),
            borderRadius: BorderRadius.circular(size * 2),
            color: color,
          ),
          onEnd: () {
            if (size == 0 && deletedBubble) {
              roundModelEditorNotifier.editSize(moreSize: true);
            }
          },

        ),);
  }
}
