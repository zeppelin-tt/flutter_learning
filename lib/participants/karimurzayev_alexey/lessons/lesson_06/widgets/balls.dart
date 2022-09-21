import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Balls extends StatelessWidget {
  final double top;
  final double left;
  final double height;
  final double width;
  final Color color;
  final int index;

  const Balls({
    super.key,
    required this.top,
    required this.left,
    required this.height,
    required this.width,
    required this.color,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: AnimatedContainer(
        duration: const Duration(microseconds: 350),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(200)),
        ),
        child: Center(child: Text(index.toString(), style: const TextStyle(fontSize: 22,
        color: Colors.white,),)),
      ),
    );
  }
}
