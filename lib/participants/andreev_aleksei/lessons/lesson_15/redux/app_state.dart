import 'package:flutter/material.dart';

class AppState{

  final String entered;
  final String pinCode;
  late String message;

  AppState({required this.entered, required this.pinCode});

  Color firstDotColor() {
    return entered.isNotEmpty ? Colors.black : Colors.white;
  }

  Color secondDotColor() {
    return entered.length > 1 ? Colors.black : Colors.white;
  }

  Color thirdDotColor() {
    return entered.length > 2 ? Colors.black : Colors.white;
  }

  Color fourthDotColor() {
    return entered.length > 3 ? Colors.black : Colors.white;
  }

  Color firstDotBackgroundColor() {
    return Colors.black;
  }

  Color secondDotBackgroundColor() {
    return Colors.black;
  }

  Color thirdDotBackgroundColor() {
    return Colors.black;
  }

  Color fourthDotBackgroundColor() {
    return Colors.black;
  }
}