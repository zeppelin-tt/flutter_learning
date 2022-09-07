import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlackWidget extends StatelessWidget {
  const BlackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      color: Colors.black,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}
