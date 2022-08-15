import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_6/schennikov_maksim_lesson_6_page.dart';
import 'package:provider/provider.dart';

class CommandButtonsLesson6 extends StatelessWidget {
  const CommandButtonsLesson6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rectModel = context.watch<RectModel>();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: rectModel.setSizeDown,
              child: const Text('Size down', style: TextStyle(color: Colors.black, fontSize: 24)),
            ),
            TextButton(
              onPressed: rectModel.setSizeUp,
              child: const Text('Size up', style: TextStyle(color: Colors.black, fontSize: 24)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: rectModel.setRandomColor,
              child: const Text('Change color', style: TextStyle(color: Colors.black, fontSize: 24)),
            ),
             TextButton(
              onPressed: () => rectModel.setIsOval(isOval: !rectModel.isOval),
              child: const Text('Change shape', style: TextStyle(color: Colors.black, fontSize: 24)),
            ),
          ],
        ),
      ],
    );
  }
}
