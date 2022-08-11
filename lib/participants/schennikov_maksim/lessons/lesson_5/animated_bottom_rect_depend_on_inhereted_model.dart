import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_5/custom_animated_container.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_5/inherited_data_model.dart';

class AnimatedBottomRectDependOnInheritedModel extends StatelessWidget {
  final VoidCallback? onTap;

  const AnimatedBottomRectDependOnInheritedModel({
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOval = InheritedDataModel.of(context, Shapes.bottom)?.isOvalBottom ?? true;
    return CustomAnimatedContainer(
      isOval: isOval,
      onTap: onTap,
    );
  }
}
