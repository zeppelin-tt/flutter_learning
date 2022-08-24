import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SchennikovMaksimLesson7Page extends StatefulWidget {
  const SchennikovMaksimLesson7Page({
    Key? key,
  }) : super(key: key);

  @override
  State<SchennikovMaksimLesson7Page> createState() => _SchennikovMaksimLesson7PageState();
}

class _SchennikovMaksimLesson7PageState extends State<SchennikovMaksimLesson7Page> {
  final rnd = Random();
  Offset circleButtonOffset = const Offset(100, 100);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final widthFactor = constraints.biggest.width / 390;
        return SafeArea(
          child: Material(
            child: Stack(
              children: [
                Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 390 / 191,
                      child: ColoredBox(
                        color: const Color(0xFF51BECB),
                        child: Padding(
                          padding: EdgeInsets.only(left: widthFactor * 20, top: widthFactor * 37),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Рекомендации',
                                style: TextStyle(
                                  fontSize: (widthFactor * 32).floorToDouble(),
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                ),
                              ),
                              SizedBox(height: widthFactor * 24),
                              Text(
                                'вашего гигиениста\nАнны Николаевны Ершовой ',
                                style: TextStyle(
                                  fontSize: (widthFactor * 20).floorToDouble(),
                                  fontWeight: FontWeight.w400,
                                  height: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 191.w,
                      width: double.infinity,
                      color: Colors.yellow,
                      padding: EdgeInsets.only(left: 20.w, top: 37.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Рекомендации',
                            style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w500,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(height: 24.w),
                          Text(
                            'вашего гигиениста\nАнны Николаевны Ершовой ',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Center(
                //   child: ClipOval(
                //     child: Container(
                //       color: Colors.red,
                //       width: 30,
                //       height: 30,
                //     ),
                //   ),
                // ),
                AnimatedPositioned(
                  duration: const Duration(seconds: 1),
                  left: circleButtonOffset.dx,
                  top: circleButtonOffset.dy,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        circleButtonOffset = Offset(
                          rnd.nextDouble() * 1.sw - 30,
                          rnd.nextDouble() * 1.sh - 30,
                        );
                      });
                    },
                    child: ClipOval(
                      child: Container(
                        color: Colors.red,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
