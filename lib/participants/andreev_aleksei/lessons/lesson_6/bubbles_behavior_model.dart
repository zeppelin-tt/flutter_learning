import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BubblesBehaviorModel extends ChangeNotifier {
  double radius = (0.05 + (Random().nextInt(100)) / 1000).sw;

  void increasingTheRadius(){
    radius = radius * 1.2;
    notifyListeners();
  }
}