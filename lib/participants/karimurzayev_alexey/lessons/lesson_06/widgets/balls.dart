

import 'package:flutter/material.dart';


class Balls extends StatelessWidget {
  final double top;
  final double left;
  final Color color;
  final double? size;
  final VoidCallback onTap;


  const Balls({
    super.key,
    required this.top,
    required this.left,
    required this.size,
    required this.color,
    required this.onTap,

  });

  @override
  Widget build(BuildContext context) {

    return Positioned(
      top: top,
      left: left,
      child: GestureDetector(
      onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(microseconds: 350),
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(200)),
          ),
        ),
      ),
    );
  }
}
