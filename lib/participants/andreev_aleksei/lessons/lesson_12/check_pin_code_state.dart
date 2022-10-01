import 'package:flutter/material.dart';

import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_state.dart';

class CheckPinCodeState implements PinCodeState {
  @override
  late String entered;
  @override
  late String pinCode;
  @override
  late int attemptsQuantity;
  @override
  String message = 'Введите пин-код';
  @override
  String errorMessage = '';

  CheckPinCodeState(this.pinCode);

  @override
  CheckPinCodeState copyWith(String val) {
    return CheckPinCodeState(pinCode)
      ..entered = entered + val
      ..attemptsQuantity = attemptsQuantity
      ..errorMessage = '';
  }

  @override
  PinCodeState clear() {
    return CheckPinCodeState(pinCode)
      ..entered = ''
      ..attemptsQuantity = attemptsQuantity
      ..errorMessage = '';
  }

  @override
  Color firstDotColor() {
    if (errorMessage != '') {
      return Colors.red;
    }
    return entered.isNotEmpty ? Colors.black : Colors.white;
  }

  @override
  Color secondDotColor() {
    if (errorMessage != '') {
      return Colors.red;
    }
    return entered.length > 1 ? Colors.black : Colors.white;
  }

  @override
  Color thirdDotColor() {
    if (errorMessage != '') {
      return Colors.red;
    }
    return entered.length > 2 ? Colors.black : Colors.white;
  }

  @override
  Color fourthDotColor() {
    if (errorMessage != '') {
      return Colors.red;
    }
    return entered.length > 3 ? Colors.black : Colors.white;
  }

  @override
  Color firstDotBackgroundColor() {
    if (errorMessage != '') {
      return Colors.red;
    }
    return Colors.black;
  }

  @override
  Color secondDotBackgroundColor() {
    if (errorMessage != '') {
      return Colors.red;
    }
    return Colors.black;
  }

  @override
  Color thirdDotBackgroundColor() {
    if (errorMessage != '') {
      return Colors.red;
    }
    return Colors.black;
  }

  @override
  Color fourthDotBackgroundColor() {
    if (errorMessage != '') {
      return Colors.red;
    }
    return Colors.black;
  }
}
