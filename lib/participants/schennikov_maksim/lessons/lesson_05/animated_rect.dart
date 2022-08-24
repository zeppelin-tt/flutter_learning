import 'package:flutter/material.dart';

class AnimatedRect extends StatelessWidget {
  final VoidCallback? onTap;
  final bool isOval;

  const AnimatedRect({
    required this.isOval,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        height: isOval ? 300 : 200,
        width: isOval ? 200 : 300,
        decoration: BoxDecoration(
          borderRadius: isOval ? BorderRadius.circular(200) : BorderRadius.zero,
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
