abstract class PinCodeEvent {}

class InitEvent extends PinCodeEvent {}

class NewDigitEvent extends PinCodeEvent {
  final String entered;

  NewDigitEvent({required this.entered});
}

class ButtonPressedEvent extends PinCodeEvent {}

class ClearEvent extends PinCodeEvent {}
