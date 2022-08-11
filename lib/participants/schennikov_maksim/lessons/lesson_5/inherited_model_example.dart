import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_5/animated_bottom_rect_depend_on_inhereted_model.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_5/animated_top_rect_depend_on_inhereted_model.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_5/inherited_data_model.dart';

class InheritedModelExample extends StatefulWidget {
  const InheritedModelExample({
    Key? key,
  }) : super(key: key);

  @override
  State<InheritedModelExample> createState() => _InheritedModelExampleState();
}

class _InheritedModelExampleState extends State<InheritedModelExample> {
  bool isOvalBottom = true;
  bool isOvalTop = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: InheritedDataModel(
          isOvalBottom: isOvalBottom,
          isOvalTop: isOvalTop,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTopRectDependOnInheritedModel(
                onTap: () {
                  setState(() {
                    isOvalTop = !isOvalTop;
                  });
                },
              ),
              AnimatedBottomRectDependOnInheritedModel(
                onTap: () {
                  setState(() {
                    isOvalBottom = !isOvalBottom;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
