import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_05/animated_rect_depend_on_inherited.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_05/inherited_data_provider.dart';

class SetStateExample extends StatefulWidget {
  const SetStateExample({
    super.key,
  });

  @override
  State<SetStateExample> createState() => _SetStateExampleState();
}

class _SetStateExampleState extends State<SetStateExample> {
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
