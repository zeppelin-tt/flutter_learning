import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatelessWidget {
  final VoidCallback? onTap;
  final bool isOval;

  const CustomAnimatedContainer({
    required this.isOval,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
