import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'participants/schennikov_maksim/lessons/lesson_10/schennikov_maksim_lesson_10_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (context, snapshot) {
        return const MaterialApp(
          home: SchennikovMaksimLesson10Page(),
        );
      },
    );
  }
}
