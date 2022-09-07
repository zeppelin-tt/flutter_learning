import 'package:flutter/material.dart';

class AnimatedRectLesson6 extends StatelessWidget {
  final VoidCallback? onTap;
  final double height;
  final double width;
  final bool isOval;
  final Color color;

  const AnimatedRectLesson6({
    required this.height,
    required this.width,
    required this.isOval,
    required this.color,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: isOval ? const BorderRadius.all(Radius.circular(200)) : BorderRadius.zero,
          color: color,
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
