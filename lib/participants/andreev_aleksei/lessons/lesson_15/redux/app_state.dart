import 'package:flutter/material.dart';

class AppState {
  late String entered;
  late String pinCode;
  String errorMessage = '';
  int attemptsQuantity = 3;
  bool goingToButtonPage = false;

  AppState initialState() {
    return AppState()
      ..entered = ''
      ..pinCode = '';
  }

  AppState checkPinCode(String val) {
    if ((entered + val) == pinCode) {
      return initialState();
    } else {
      if (attemptsQuantity == 1) {
        return AppState()
          ..entered = ''
          ..pinCode = pinCode
          ..attemptsQuantity = 3
          ..errorMessage = ''
          ..goingToButtonPage = true;
      } else {
        return AppState()
          ..entered = ''
          ..pinCode = pinCode
          ..attemptsQuantity = attemptsQuantity - 1
          ..errorMessage = 'Неправильный ПИН-код\nОсталось попыток: ${attemptsQuantity - 1}';
      }
    }
  }

  AppState clear() {
    if (entered.isNotEmpty) {
      return AppState()
        ..entered = entered.substring(0, entered.length - 1)
        ..pinCode = pinCode
        ..attemptsQuantity = 3
        ..errorMessage = errorMessage
        ..attemptsQuantity = attemptsQuantity;
    } else {
      return AppState()
        ..entered = entered
        ..pinCode = pinCode
        ..attemptsQuantity = 3
        ..errorMessage = errorMessage
        ..attemptsQuantity = attemptsQuantity;
    }
  }

  AppState copyWith(String val) {
    return AppState()
      ..entered = entered + val
      ..pinCode = pinCode
      ..attemptsQuantity = attemptsQuantity;
  }

  AppState rememberPinCode(String val) {
    return AppState()
      ..pinCode = entered + val
      ..entered = ''
      ..goingToButtonPage = true;
  }

  String mainMessage() {
    return pinCode == '' ? 'Введите новый ПИН-код' : 'Введите ПИН-код';
  }

  Color firstDotColor() {
    return errorMessage != ''
        ? Colors.red
        : entered.isNotEmpty
            ? Colors.black
            : Colors.white;
  }

  Color secondDotColor() {
    return errorMessage != ''
        ? Colors.red
        : entered.length > 1
            ? Colors.black
            : Colors.white;
  }

  Color thirdDotColor() {
    return errorMessage != ''
        ? Colors.red
        : entered.length > 2
            ? Colors.black
            : Colors.white;
  }

  Color fourthDotColor() {
    return errorMessage != ''
        ? Colors.red
        : entered.length > 3
            ? Colors.black
            : Colors.white;
  }

  Color firstDotBorderColor() {
    return errorMessage != '' ? Colors.red : Colors.black;
  }

  Color secondDotBorderColor() {
    return errorMessage != '' ? Colors.red : Colors.black;
  }

  Color thirdDotBorderColor() {
    return errorMessage != '' ? Colors.red : Colors.black;
  }

  Color fourthDotBorderColor() {
    return errorMessage != '' ? Colors.red : Colors.black;
  }
}
