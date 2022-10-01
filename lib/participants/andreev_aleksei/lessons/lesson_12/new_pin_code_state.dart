import 'package:flutter/material.dart';

import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_state.dart';

class NewPinCodeState implements PinCodeState {
  @override
  late String entered;
  @override
  late String pinCode;
  @override
  late int attemptsQuantity;
  @override
  String message = 'Введите новый пин-код';
  @override
  String errorMessage = '';

  @override
  NewPinCodeState clear() {
    return NewPinCodeState()..entered = '';
  }

  @override
  NewPinCodeState copyWith(String val) {
    return NewPinCodeState()..entered = entered + val;
  }

  @override
  Color firstDotColor() {
    return entered.isNotEmpty ? Colors.black : Colors.white;
  }

  @override
  Color secondDotColor() {
    return entered.length > 1 ? Colors.black : Colors.white;
  }

  @override
  Color thirdDotColor() {
    return entered.length > 2 ? Colors.black : Colors.white;
  }

  @override
  Color fourthDotColor() {
    return entered.length > 3 ? Colors.black : Colors.white;
  }

  @override
  Color firstDotBackgroundColor() {
    return Colors.black;
  }

  @override
  Color secondDotBackgroundColor() {
    return Colors.black;
  }

  @override
  Color thirdDotBackgroundColor() {
    return Colors.black;
  }

  @override
  Color fourthDotBackgroundColor() {
    return Colors.black;
  }
}
