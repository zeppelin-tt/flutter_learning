import 'package:flutter/material.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      width: size.width / 4,
      height: size.width / 4,
      child: const Icon(
        Icons.adb,
        size: 35,
      ),
    );
  }
}
