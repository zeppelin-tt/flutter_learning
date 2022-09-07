import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_05/animated_rect_depend_on_inherited.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_05/data_model_notifier.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_05/inherited_data_notifier.dart';

class InheritedNotifierExample extends StatefulWidget {
  const InheritedNotifierExample({
    super.key,
  });

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
