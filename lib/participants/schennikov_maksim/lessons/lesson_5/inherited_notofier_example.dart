import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_5/data_model_notifier.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_5/inherited_data_notifier.dart';

import 'animated_rect_depend_on_inhereted.dart';

class InheritedNotifierExample extends StatefulWidget {
  const InheritedNotifierExample({
    Key? key,
  }) : super(key: key);

  @override
  State<InheritedNotifierExample> createState() => _InheritedNotifierExampleState();
}

class _InheritedNotifierExampleState extends State<InheritedNotifierExample> {
  final controller = DataModelNotifier(isOval: true);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: InheritedDataNotifier(
          controller: controller,
          child: AnimatedRectDependOnInherited(
            onTap: () {
              controller.setIsOval(isOval: !controller.isOval);
            },
          ),
        ),
      ),
    );
  }
}
