import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_15/redux/actions.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_15/redux/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is AddDigitAction) {
    if (state.entered.length == 3 && state.pinCode == '') {
      return state.rememberPinCode(action.entered);
    } else if (state.entered.length == 3 && state.pinCode != '') {
      return state.checkPinCode(action.entered);
    } else {
      return state.copyWith(action.entered);
    }
  } else if (action is ButtonPressedAction) {
    return state.copyWith('');
  } else if (action is ClearAction) {
    return state.clear();
  } else {
    return state;
  }
}
