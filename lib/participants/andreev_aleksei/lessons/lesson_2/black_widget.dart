import 'package:flutter/material.dart';

class BlackWidget extends StatelessWidget {
  const BlackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      color: Colors.black,
      margin: const EdgeInsets.all(10),
    );
  }
}
