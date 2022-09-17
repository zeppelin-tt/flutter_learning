import 'package:flutter/material.dart';

class PinCodeProvider extends ChangeNotifier {
  int attemptsQuantity = 3;

  String inputNumber = '';
  String pinCode = '';
  String error = '';

  Color color_1 = Colors.white;
  Color color_2 = Colors.white;
  Color color_3 = Colors.white;
  Color color_4 = Colors.white;

  Color borderColor_1 = Colors.black;
  Color borderColor_2 = Colors.black;
  Color borderColor_3 = Colors.black;
  Color borderColor_4 = Colors.black;

  void receivingDigit(String digit) {
    if (inputNumber.isEmpty) {
      receivingFirstDigit(digit);
      return;
    }
    if (inputNumber.length == 1) {
      receivingSecondDigit(digit);
      return;
    }
    if (inputNumber.length == 2) {
      receivingThirdDigit(digit);
      return;
    }
    if (inputNumber.length == 3) {
      receivingFourthDigit(digit);
      return;
    }
  }

  void receivingFirstDigit(String digit) {
    dotsCleaning();
    error = '';
    inputNumber = digit;
    color_1 = Colors.black;
    notifyListeners();
  }

  void receivingSecondDigit(String digit) {
    inputNumber = inputNumber + digit;
    color_2 = Colors.black;
    notifyListeners();
  }

  void receivingThirdDigit(String digit) {
    inputNumber = inputNumber + digit;
    color_3 = Colors.black;
    notifyListeners();
  }

  void receivingFourthDigit(String digit) {
    if (pinCode != '') {
      inputNumber = inputNumber + digit;
      color_4 = Colors.black;
      notifyListeners();
    } else {
      inputNumber = inputNumber + digit;
      pinCode = inputNumber;
      inputNumber = '';
      color_4 = Colors.black;
      notifyListeners();
    }
  }

  void newPinCode() {
    pinCode = '';
    inputNumber = '';
    attemptsQuantity = 3;
    dotsCleaning();
    notifyListeners();
  }

  void dotsCleaning() {
    color_1 = Colors.white;
    color_2 = Colors.white;
    color_3 = Colors.white;
    color_4 = Colors.white;

    borderColor_1 = Colors.black;
    borderColor_2 = Colors.black;
    borderColor_3 = Colors.black;
    borderColor_4 = Colors.black;
  }

  void errorDots() {
    color_1 = Colors.red;
    color_2 = Colors.red;
    color_3 = Colors.red;
    color_4 = Colors.red;

    borderColor_1 = Colors.red;
    borderColor_2 = Colors.red;
    borderColor_3 = Colors.red;
    borderColor_4 = Colors.red;
  }

  void pinCodeError() {
    attemptsQuantity--;
    error = 'Неправильный пин-код \n Осталось попыток: $attemptsQuantity';
    errorDots();
    inputNumber = '';
    notifyListeners();
  }

  void removingLastDigit() {
    inputNumber = inputNumber.substring(0, inputNumber.length - 1);
    if (inputNumber.isEmpty) {
      color_1 = Colors.white;
    }
    if (inputNumber.length == 1) {
      color_2 = Colors.white;
    }
    if (inputNumber.length == 2) {
      color_3 = Colors.white;
    }
    notifyListeners();
  }
}
