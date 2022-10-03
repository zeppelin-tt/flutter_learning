import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/button_state.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/check_pin_code_state.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/new_pin_code_state.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_event.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_12/pin_code_state.dart';

class PinCodeBloc extends Bloc<PinCodeEvent, PinCodeState> {
  PinCodeBloc() : super(NewPinCodeState().clear());

  @override
  Stream<PinCodeState> mapEventToState(PinCodeEvent event) async* {
    if (event is InitEvent) {
      yield NewPinCodeState().clear();
    } else if (event is NewDigitEvent) {
      yield addingNewDigit(event.entered);
      if (state is NewPinCodeState) {
        if (state.entered.length == 4) {
          yield ButtonState()..pinCode = state.entered;
        }
      } else {
        if (state.pinCode == state.entered) {
          yield NewPinCodeState()..entered = '';
        }
        if (state.entered.length == 4 && state.pinCode != state.entered) {
          if (state.attemptsQuantity == 1) {
            yield ButtonState()..pinCode = state.pinCode;
          } else {
            yield wrongPinCode();
          }
        }
      }
    } else if (event is ButtonPressedEvent) {
      yield rememberingPinCode(state.pinCode);
    } else if (event is ClearEvent) {
      yield state.clear();
    }
  }

  PinCodeState addingNewDigit(String val) {
    return state.copyWith(val);
  }

  PinCodeState rememberingPinCode(String pinCode) {
    return CheckPinCodeState(pinCode)
      ..entered = ''
      ..attemptsQuantity = 3
      ..errorMessage = '';
  }

  PinCodeState wrongPinCode() {
    return CheckPinCodeState(state.pinCode)
      ..entered = ''
      ..attemptsQuantity = (state.attemptsQuantity - 1)
      ..errorMessage = 'Неправильный пин-код.\nОсталось попыток: ${state.attemptsQuantity - 1}';
  }

  PinCodeState clean() {
    return state..entered = '';
  }
}
