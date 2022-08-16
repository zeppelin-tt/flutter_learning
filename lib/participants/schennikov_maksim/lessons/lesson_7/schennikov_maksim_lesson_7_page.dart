import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SchennikovMaksimLesson7Page extends StatelessWidget {
  const SchennikovMaksimLesson7Page({
    Key? key,
  }) : super(key: key);

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
                Positioned(
                  left: 0.5.sw - 15,
                  top: 0.5.sh - ScreenUtil().statusBarHeight - 15,
                  child: ClipOval(
                    child: Container(
                      color: Colors.red,
                      width: 30,
                      height: 30,
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
