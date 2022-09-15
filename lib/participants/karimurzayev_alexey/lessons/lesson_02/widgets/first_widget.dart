import 'package:flutter/material.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(25),
      ),
      width: size.width / 4,
      height: size.width / 4,
      child: const Icon(
        Icons.ice_skating,
        size: 35,
      ),
    );
  }
}
