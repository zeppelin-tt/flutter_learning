import 'dart:math';

import 'package:flutter/material.dart';

class AndreevAlekseiLesson2Page extends StatelessWidget {
  const AndreevAlekseiLesson2Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(

        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  randomWidget(),
                  randomWidget(),
                  randomWidget(),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class _BlackWidget extends StatelessWidget {
  const _BlackWidget({
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

class _RedWidget extends StatelessWidget {
  const _RedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: 80,
        height: 80,
        color: Colors.red,
      ),
    );
  }
}

class _GreenShadowedWidget extends StatelessWidget {
  const _GreenShadowedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.green,
        boxShadow: [
          BoxShadow(
              color: Colors.green, blurRadius: 25, offset: Offset(10, 10)),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}

class _GradientedWidget extends StatelessWidget {
  const _GradientedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 60,
      decoration: const BoxDecoration(
        //color: Colors.black,
        gradient: LinearGradient(colors: [Colors.black87, Colors.black12]),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    );
  }
}

class _YellowWidget extends StatelessWidget {
  const _YellowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.yellow,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}

Widget randomWidget() {
  final num = Random().nextInt(5);

  if (num == 0) {
    return const _BlackWidget();
  }
  if (num == 1) {
    return const _RedWidget();
  }
  if (num == 2) {
    return const _GreenShadowedWidget();
  }
  if (num == 3) {
    return const _GradientedWidget();
  }
  else {
    return const _YellowWidget();
  }
}
