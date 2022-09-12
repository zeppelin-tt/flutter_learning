import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_02/random/random_widget.dart';

class KarimurzayevAlexeyLesson2Page extends StatelessWidget {
  const KarimurzayevAlexeyLesson2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black87,
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
              RandomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
