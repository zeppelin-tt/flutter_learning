import 'actions.dart';
import 'app_state.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is AddDigitAction) {
    return AppState(entered: action.entered, pinCode: state.pinCode);
  } else {
    return state;
  }
}