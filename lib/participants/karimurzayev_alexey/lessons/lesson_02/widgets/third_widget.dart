import 'package:flutter/material.dart';

class ThirdWidget extends StatelessWidget {
  const ThirdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      width: size.width / 4,
      height: size.width / 4,
      child: const Icon(Icons.ac_unit),
    );
  }
}
