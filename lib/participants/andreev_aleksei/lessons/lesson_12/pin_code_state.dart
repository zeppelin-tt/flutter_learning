import 'package:flutter/material.dart';

abstract class PinCodeState {
  late String entered;
  late String pinCode;
  late int attemptsQuantity;
  late String message;
  String errorMessage = '';

  Color firstDotColor();

  Color firstDotBackgroundColor();

  Color secondDotColor();

  Color secondDotBackgroundColor();

  Color thirdDotColor();

  Color thirdDotBackgroundColor();

  Color fourthDotColor();

  Color fourthDotBackgroundColor();

  PinCodeState copyWith(String val);

  PinCodeState clear();
}
