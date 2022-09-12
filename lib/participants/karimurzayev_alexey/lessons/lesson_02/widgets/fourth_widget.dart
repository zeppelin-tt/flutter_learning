import 'package:flutter/material.dart';

class FourthWidget extends StatelessWidget {
  const FourthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      width: size.width / 4,
      height: size.width / 4,
      child: const Icon(
        Icons.radar,
        size: 35,
      ),
    );
  }
}
