import 'package:flutter/material.dart';

import 'participants/schennikov_maksim/lessons/lesson_5/schennikov_maksim_lesson_5_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SchennikovMaksimLesson5Page(),
    );
  }
}
