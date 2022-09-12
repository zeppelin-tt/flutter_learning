import 'package:flutter/material.dart';

class FifthWidget extends StatelessWidget {
  const FifthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      width: size.width / 4,
      height: size.width / 4,
      child: const Icon(
        Icons.thunderstorm,
        size: 35,
      ),
    );
  }
}
