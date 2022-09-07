// TODO(maxim):  [18.08.2022]
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DefaultTextStyle(
      style: TextStyle(color: Colors.black, fontSize: 24),
      child: Text('Push'),
    );
  }
}
