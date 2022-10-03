import 'package:flutter/material.dart';

abstract class PinCodeState {
  late String entered;
  late String pinCode;
  late int attemptsQuantity;
  late String message;
  String errorMessage = '';

  Color firstDotColor();

  Color firstDotBorderColor();

  Color secondDotColor();

  Color secondDotBorderColor();

  Color thirdDotColor();

  Color thirdDotBorderColor();

  Color fourthDotColor();

  Color fourthDotBorderColor();

  PinCodeState copyWith(String val);

  PinCodeState clear();
}
