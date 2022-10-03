import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_14/pin_code_page.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_14/pin_code_page_data.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_14/pin_code_page_model.dart';
import 'package:rxdart/rxdart.dart';

class PinCodePageWidgetModel extends WidgetModel<PinCodePage, PinCodePageModel> {
  final _pinCodeController = BehaviorSubject<PinCodePageData>.seeded(
    const PinCodePageData(
      entered: '',
      pinCode: '',
      attemptsQuantity: 3,
    ),
  );

  PinCodePageWidgetModel(super.model);

  Stream<PinCodePageData> get dataStream => _pinCodeController.stream;

  PinCodePageData get dataValue => _pinCodeController.value;

  @override
  void dispose() {
    super.dispose();
    unawaited(_pinCodeController.close());
  }

  void addingNewDigit(String entered) {
    if (dataValue.entered.length == 4) {
      _pinCodeController.add(dataValue.copyWith(entered: entered));
    } else if (dataValue.entered.length < 3) {
      _pinCodeController.add(dataValue.copyWith(entered: dataValue.entered + entered));
    } else if (dataValue.entered.length == 3 && dataValue.pinCode == '') {
      _pinCodeController.add(dataValue.copyWith(entered: '', pinCode: dataValue.entered + entered));
    } else if (dataValue.entered.length == 3 && dataValue.pinCode != '') {
      if ((dataValue.entered + entered) != dataValue.pinCode && dataValue.attemptsQuantity > 1) {
        _pinCodeController.add(
          dataValue.copyWith(entered: dataValue.entered + entered, attemptsQuantity: dataValue.attemptsQuantity - 1),
        );
      } else if ((dataValue.entered + entered) != dataValue.pinCode && dataValue.attemptsQuantity == 1) {
        _pinCodeController.add(
          dataValue.copyWith(entered: '', attemptsQuantity: 3),
        );
      } else if ((dataValue.entered + entered) == dataValue.pinCode) {
        _pinCodeController.add(dataValue.copyWith(entered: '', pinCode: '', attemptsQuantity: 3));
      }
    }
  }

  void clear() {
    if (dataValue.entered.isNotEmpty) {
      _pinCodeController.add(dataValue.copyWith(entered: dataValue.entered.substring(0, dataValue.entered.length - 1)));
    } else {
      _pinCodeController.add(dataValue.copyWith());
    }
  }

  Color firstDotColorSetting() {
    if (dataValue.entered.length == 4 && dataValue.entered != dataValue.pinCode) {
      return Colors.red;
    } else {
      return dataValue.entered.isNotEmpty ? Colors.black : Colors.white;
    }
  }

  Color secondDotColorSetting() {
    if (dataValue.entered.length == 4 && dataValue.entered != dataValue.pinCode) {
      return Colors.red;
    } else {
      return dataValue.entered.length > 1 ? Colors.black : Colors.white;
    }
  }

  Color thirdDotColorSetting() {
    if (dataValue.entered.length == 4 && dataValue.entered != dataValue.pinCode) {
      return Colors.red;
    } else {
      return dataValue.entered.length > 2 ? Colors.black : Colors.white;
    }
  }

  Color fourthDotColorSetting() {
    if (dataValue.entered.length == 4 && dataValue.entered != dataValue.pinCode) {
      return Colors.red;
    } else {
      return dataValue.entered.length > 3 ? Colors.black : Colors.white;
    }
  }

  Color firstDotBorderColorSetting() {
    return dataValue.entered.length == 4 && dataValue.entered != dataValue.pinCode ? Colors.red : Colors.black;
  }

  Color secondDotBorderColorSetting() {
    return dataValue.entered.length == 4 && dataValue.entered != dataValue.pinCode ? Colors.red : Colors.black;
  }

  Color thirdDotBorderColorSetting() {
    return dataValue.entered.length == 4 && dataValue.entered != dataValue.pinCode ? Colors.red : Colors.black;
  }

  Color fourthDotBorderColorSetting() {
    return dataValue.entered.length == 4 && dataValue.entered != dataValue.pinCode ? Colors.red : Colors.black;
  }

  String headerMessageSetting() {
    return dataValue.pinCode == '' ? 'Введите новый ПИН-код' : 'Введите ПИН-код';
  }

  String errorMessageSetting() {
    return dataValue.entered.length == 4 && dataValue.entered != dataValue.pinCode
        ? 'Неправильный ПИН-код. Осталось попыток: ${dataValue.attemptsQuantity}'
        : '';
  }
}
