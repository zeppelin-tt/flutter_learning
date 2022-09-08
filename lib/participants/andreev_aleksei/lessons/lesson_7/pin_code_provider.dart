import 'package:flutter/material.dart';

class PinCodeProvider extends ChangeNotifier {
  bool pinCodeReceived = false;
  bool isCorrectPinCode = false;
  bool pinCodeChecked = false;
  bool isNewAttempt = false;

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

  bool isCheckingPage = false;

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
    if (isNewAttempt) {
      clear();
      pinCodeChecked = false;
      error = '';
      notifyListeners();
    }
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
    inputNumber = inputNumber + digit;
    pinCode = inputNumber;
    inputNumber = '';
    color_4 = Colors.black;
    if (pinCode != '') {
      checkingPinCode();
    }
    notifyListeners();
  }

  void clear() {
    inputNumber = '';
    dotsCleaning();
    notifyListeners();
  }

  void checkingPinCode() {
    pinCodeChecked = true;
    if (inputNumber == pinCode) {
      isCorrectPinCode = true;
    } else {
      isCorrectPinCode = false;
    }
    notifyListeners();
  }

  void pinCodeCheckingError() {
    attemptsQuantity--;
    error = 'Неверный пин-код \n Осталось  попыток: $attemptsQuantity';
    inputNumber = '';
    isNewAttempt = true;
    notifyListeners();
  }

  void newPinCode() {
    pinCodeReceived = false;
    isCorrectPinCode = false;
    pinCodeChecked = false;
    isNewAttempt = false;
    attemptsQuantity = 3;
    inputNumber = '';
    pinCode = '';
    error = '';
  }

  void anotherAttempt() {
    attemptsQuantity = 3;
    error = '';
    pinCodeChecked = false;
    clear();
  }

  void dotsCleaning(){
    color_1 = Colors.white;
    color_2 = Colors.white;
    color_3 = Colors.white;
    color_4 = Colors.white;

    borderColor_1 = Colors.black;
    borderColor_2 = Colors.black;
    borderColor_3 = Colors.black;
    borderColor_4 = Colors.black;
  }
}
