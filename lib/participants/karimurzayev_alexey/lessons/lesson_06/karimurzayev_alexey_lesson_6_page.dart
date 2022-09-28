import 'package:flutter/material.dart';

import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_06/widgets/list_generate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class KarimurzayevAlexeyLesson6Page extends StatelessWidget {
  const KarimurzayevAlexeyLesson6Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ListGenerate(),
      child: Consumer<ListGenerate>(
        builder: (context, model, child) {
          return Material(
            child: SafeArea(
              child: Container(
                height: 1.sh,
                width: 1.sw,
                color: Colors.black87,
                child: Stack(
                  children: model.setBallsList(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
