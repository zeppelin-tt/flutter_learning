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
    if (entered.isNotEmpty) {
      return CheckPinCodeState(pinCode)
        ..entered = entered.substring(0, entered.length - 1)
        ..attemptsQuantity = attemptsQuantity
        ..errorMessage = '';
    }
    else{
      return CheckPinCodeState(pinCode)
        ..entered = ''
        ..attemptsQuantity = attemptsQuantity
        ..errorMessage = '';
    }
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
  Color firstDotBorderColor() {
    if (errorMessage != '') {
      return Colors.red;
    }
    return Colors.black;
  }

  @override
  Color secondDotBorderColor() {
    if (errorMessage != '') {
      return Colors.red;
    }
    return Colors.black;
  }

  @override
  Color thirdDotBorderColor() {
    if (errorMessage != '') {
      return Colors.red;
    }
    return Colors.black;
  }

  @override
  Color fourthDotBorderColor() {
    if (errorMessage != '') {
      return Colors.red;
    }
    return Colors.black;
  }
}
