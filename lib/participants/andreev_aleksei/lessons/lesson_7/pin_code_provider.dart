import 'package:flutter/cupertino.dart';

class PinCodeProvider extends ChangeNotifier {
  bool gotFirst = false;
  bool gotSecond = false;
  bool gotThird = false;
  bool gotFourth = false;
  bool pinCodeReceived = false;
  bool isCorrectPinCode = false;
  bool pinCodeChecked = false;
  bool isNewAttempt = false;
  bool keyboardisBlocked = false;
  bool isReturningError = false;

  int attemptsQuantity = 3;

  String inputNumber = '';
  String pinCode = '';
  String error = '';

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
    } else {}
  }

  void receivingFirstDigit(String digit) {
    if (isNewAttempt) {
      clear();
      pinCodeChecked = false;
      error = '';
      notifyListeners();
    }
    inputNumber = digit;
    gotFirst = true;
    notifyListeners();
  }

  void receivingSecondDigit(String digit) {
    inputNumber = inputNumber + digit;
    gotSecond = true;
    notifyListeners();
  }

  void receivingThirdDigit(String digit) {
    inputNumber = inputNumber + digit;
    gotThird = true;
    notifyListeners();
  }

  void receivingFourthDigit(String digit) {
    inputNumber = inputNumber + digit;
    gotFourth = true;
    if (pinCode != '') {
      checkingPinCode();
    }
    notifyListeners();
  }

  void clear() {
    inputNumber = '';
    gotFirst = false;
    gotSecond = false;
    gotThird = false;
    gotFourth = false;
    notifyListeners();
  }

  void rememberPinCode() {
    pinCode = inputNumber;
    clear();
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

    if (attemptsQuantity == 0) {
      error = 'Все пропало!';
      keyboardisBlocked = true;
    }
    notifyListeners();
  }

  void newPinCode() {
    gotFirst = false;
    gotSecond = false;
    gotThird = false;
    gotFourth = false;
    pinCodeReceived = false;
    isCorrectPinCode = false;
    pinCodeChecked = false;
    isNewAttempt = false;
    attemptsQuantity = 3;
    inputNumber = '';
    pinCode = '';
    error = '';
  }
}
