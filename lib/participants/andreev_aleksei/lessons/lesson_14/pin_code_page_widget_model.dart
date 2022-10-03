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
        headerMessage: 'Введите ПИН-код',
        errorMessage: '',
        firstDotColor: Colors.white,
        secondDotColor: Colors.white,
        thirdDotColor: Colors.white,
        fourthDotColor: Colors.white,
        firstDotBorderColor: Colors.black,
        secondDotBorderColor: Colors.black,
        thirdDotBorderColor: Colors.black,
        fourthDotBorderColor: Colors.black,),
  );

  PinCodePageWidgetModel(super.model);

  Stream<PinCodePageData> get dataStream => _pinCodeController.stream;

  PinCodePageData get dataValue => _pinCodeController.value;

  @override
  void dispose() {
    super.dispose();
    unawaited(_pinCodeController.close());
  }

  void addingNewDigit (String entered){
    _pinCodeController.add(dataValue.copyWith(entered: entered));
  }

}
