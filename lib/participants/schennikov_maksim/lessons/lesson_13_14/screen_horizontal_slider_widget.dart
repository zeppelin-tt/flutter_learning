import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenHorizontalSliderWidget extends StatefulWidget {
  final Size indicatorSize;
  final Color color;
  final ValueChanged<double> onScrollUpdate;

  const ScreenHorizontalSliderWidget({
    required this.indicatorSize,
    required this.color,
    required this.onScrollUpdate,
    super.key,
  });

  @override
  State<ScreenHorizontalSliderWidget> createState() => _ScreenHorizontalSliderWidgetState();
}

class _ScreenHorizontalSliderWidgetState extends State<ScreenHorizontalSliderWidget> {
  late final double maxScrollWidth;
  late final ScrollController controller;
  final screenWidth = 1.sw;

  @override
  void initState() {
    super.initState();
    maxScrollWidth = screenWidth - widget.indicatorSize.width;
    controller = ScrollController(initialScrollOffset: maxScrollWidth);
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (notice) {
        if (notice is ScrollUpdateNotification) {
          widget.onScrollUpdate((maxScrollWidth - notice.metrics.pixels) / maxScrollWidth);
        }
        return true;
      },
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        child: Row(
          children: [
            Container(
              width: maxScrollWidth,
              height: widget.indicatorSize.height,
              color: Colors.transparent,
            ),
            Container(
              width: widget.indicatorSize.width,
              height: widget.indicatorSize.height,
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.all(Radius.circular(3.w)),
              ),
            ),
            Container(
              width: maxScrollWidth,
              height: widget.indicatorSize.height,
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
