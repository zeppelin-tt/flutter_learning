import 'package:flutter/material.dart';

class Lesson13Shape extends StatelessWidget {
  final double height;
  final double width;
  final double opacity;
  final double borderRadius;

  const Lesson13Shape({
    required this.height,
    required this.width,
    required this.opacity,
    required this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: SizedBox(
        height: height,
        width: width,
        child: Opacity(
          opacity: opacity,
          child: Image.network(
            'https://static01.nyt.com/images/2017/05/18/watching/twin-peaks-watching/twin-peaks-watching-mediumSquareAt3X-v2.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
