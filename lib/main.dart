import 'package:flutter/material.dart';
import 'package:flutter_learning/main_page.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_6/bubbles_behavior_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BubblesBehaviorModel(),
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        builder: (context, snapshot) {
          return const MaterialApp(
            home: MainPage(),
          );
        },
      ),
    );
  }
}