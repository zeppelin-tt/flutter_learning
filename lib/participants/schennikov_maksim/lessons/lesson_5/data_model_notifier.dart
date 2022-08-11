import 'package:flutter/material.dart';

class DataModelNotifier extends ChangeNotifier {
  bool isOval;

  DataModelNotifier({
    required this.isOval,
  });

  void setIsOval({required bool isOval}) {
    if (this.isOval != isOval) {
      this.isOval = isOval;
      notifyListeners();
    }
  }
}