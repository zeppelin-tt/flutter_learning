import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BubblesBehaviorModel extends ChangeNotifier {
  double radiusCoefficient = 1;

  double setPrimaryRadius() {
    return (0.05 + Random().nextInt(100) / 1000).sw;
  }

  double setTopCoordinate() {
    return (Random().nextInt(85) / 100).sh;
  }

  double setLeftCoordinate() {
    return (Random().nextInt(70) / 100).sw;
  }

  void decreasingTheRadius() {
    radiusCoefficient = 0.98;
    notifyListeners();
  }

  void increasingRadius() {
    radiusCoefficient = 1.03;
    notifyListeners();
  }
}
