import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_05/inherited_data_notifier.dart';

class AnimatedRectDependOnInherited extends StatelessWidget {
  final VoidCallback? onTap;

  const AnimatedRectDependOnInherited({
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isOval = InheritedDataNotifier.of(context)?.controller.isOval ?? true;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        height: isOval ? 300 : 200,
        width: isOval ? 200 : 300,
        decoration: BoxDecoration(
          borderRadius: isOval ? const BorderRadius.all(Radius.circular(200)) : BorderRadius.zero,
          color: isOval ? Colors.red : Colors.blue,
        ),
        child: const Center(
          child: Text(
            'push the button!',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 30,
              overflow: TextOverflow.fade,
            ),
            maxLines: 3,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
