import 'dart:ui';

import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_state.dart';

class ButtonState implements PinCodeState {
  @override
  late String pinCode;

  @override
  late int attemptsQuantity;

  @override
  late String entered;

  @override
  late String errorMessage;

  @override
  late String message;

  @override
  PinCodeState copyWith(String val) {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  Color firstDotBorderColor() {
    // TODO: implement firstDotBackgroundColor
    throw UnimplementedError();
  }

  @override
  Color firstDotColor() {
    // TODO: implement firstDotColor
    throw UnimplementedError();
  }

  @override
  Color fourthDotBorderColor() {
    // TODO: implement fourthDotBackgroundColor
    throw UnimplementedError();
  }

  @override
  Color fourthDotColor() {
    // TODO: implement fourthDotColor
    throw UnimplementedError();
  }

  @override
  Color secondDotBorderColor() {
    // TODO: implement secondDotBackgroundColor
    throw UnimplementedError();
  }

  @override
  Color secondDotColor() {
    // TODO: implement secondDotColor
    throw UnimplementedError();
  }

  @override
  Color thirdDotBorderColor() {
    // TODO: implement thirdDotBackgroundColor
    throw UnimplementedError();
  }

  @override
  Color thirdDotColor() {
    // TODO: implement thirdDotColor
    throw UnimplementedError();
  }

  @override
  PinCodeState clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }
}
