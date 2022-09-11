import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_02/widgets/first_widgets.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_02/widgets/second_widget.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_02/widgets/third_widget.dart';

class KarimurzayevAlexeyLesson2Page extends StatelessWidget {
  const KarimurzayevAlexeyLesson2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  FirstWidget(),
                  SecondWidget(),
                  ThirdWidget()
                ],
              ),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
