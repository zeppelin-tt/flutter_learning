import 'dart:ui';

class PinCodePageData {
  final String entered;
  final String pinCode;
  final String headerMessage;
  final String errorMessage;
  final Color firstDotColor;
  final Color secondDotColor;
  final Color thirdDotColor;
  final Color fourthDotColor;
  final Color firstDotBorderColor;
  final Color secondDotBorderColor;
  final Color thirdDotBorderColor;
  final Color fourthDotBorderColor;

  const PinCodePageData({
    required this.entered,
    required this.pinCode,
    required this.headerMessage,
    required this.errorMessage,
    required this.firstDotColor,
    required this.secondDotColor,
    required this.thirdDotColor,
    required this.fourthDotColor,
    required this.firstDotBorderColor,
    required this.secondDotBorderColor,
    required this.thirdDotBorderColor,
    required this.fourthDotBorderColor,
  });

  PinCodePageData copyWith({
    String? entered,
    String? pinCode,
    String? headerMessage,
    String? errorMessage,
    Color? firstDotColor,
    Color? secondDotColor,
    Color? thirdDotColor,
    Color? fourthDotColor,
    Color? firstDotBorderColor,
    Color? secondDotBorderColor,
    Color? thirdDotBorderColor,
    Color? fourthDotBorderColor,
  }) {
    return PinCodePageData(
      entered: entered ?? this.entered,
      pinCode: pinCode ?? this.pinCode,
      headerMessage: headerMessage ?? this.headerMessage,
      errorMessage: errorMessage ?? this.errorMessage,
      firstDotColor: firstDotColor ?? this.firstDotColor,
      secondDotColor: secondDotColor ?? this.secondDotColor,
      thirdDotColor: thirdDotColor ?? this.thirdDotColor,
      fourthDotColor: fourthDotColor ?? this.fourthDotColor,
      firstDotBorderColor: firstDotBorderColor ?? this.firstDotBorderColor,
      secondDotBorderColor: secondDotBorderColor ?? this.secondDotBorderColor,
      thirdDotBorderColor: thirdDotBorderColor ?? this.thirdDotBorderColor,
      fourthDotBorderColor: fourthDotBorderColor ?? this.fourthDotBorderColor,);
  }
}
