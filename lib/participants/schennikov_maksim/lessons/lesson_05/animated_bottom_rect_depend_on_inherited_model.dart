import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_05/custom_animated_container.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_05/inherited_data_model.dart';

class AnimatedBottomRectDependOnInheritedModel extends StatelessWidget {
  final VoidCallback? onTap;

  const AnimatedBottomRectDependOnInheritedModel({
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isOval = InheritedDataModel.of(context, Shapes.bottom)?.isOvalBottom ?? true;
    return CustomAnimatedContainer(
      isOval: isOval,
      onTap: onTap,
    );
  }
}
