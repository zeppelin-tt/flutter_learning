import 'package:flutter/material.dart';

class RedWidget extends StatelessWidget {
  const RedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(width: 80, height: 80, color: Colors.red),
    );
  }
}
