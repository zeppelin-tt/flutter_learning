import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_5/custom_animated_container.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_5/inherited_data_model.dart';

class AnimatedTopRectDependOnInheritedModel extends StatelessWidget {
  final VoidCallback? onTap;

  const AnimatedTopRectDependOnInheritedModel({
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOval = InheritedDataModel.of(context, Shapes.top)?.isOvalTop ?? true;
    return CustomAnimatedContainer(
      isOval: isOval,
      onTap: onTap,
    );
  }
}