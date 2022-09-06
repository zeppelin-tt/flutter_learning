import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_05/animated_rect_depend_on_inherited.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_05/inherited_data_provider.dart';

class InheritedWidgetExample extends StatefulWidget {
  const InheritedWidgetExample({
    super.key,
  });

  @override
  State<InheritedWidgetExample> createState() => _InheritedWidgetExampleState();
}

class _InheritedWidgetExampleState extends State<InheritedWidgetExample> {
  bool isOval = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: InheritedDataProvider(
          isOval: isOval,
          child: AnimatedRectDependOnInherited(
            onTap: () {
              setState(() {
                isOval = !isOval;
              });
            },
          ),
        ),
      ),
    );
  }
}
