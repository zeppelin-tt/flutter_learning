class PinCodePageData {
  final String entered;
  final String pinCode;
  final int attemptsQuantity;

  const PinCodePageData({
    required this.entered,
    required this.pinCode,
    required this.attemptsQuantity,
  });

  PinCodePageData copyWith({
    String? entered,
    String? pinCode,
    int? attemptsQuantity,
  }) {
    return PinCodePageData(
      entered: entered ?? this.entered,
      pinCode: pinCode ?? this.pinCode,
      attemptsQuantity: attemptsQuantity ?? this.attemptsQuantity,
    );
  }
}
