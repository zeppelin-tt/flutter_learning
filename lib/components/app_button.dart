import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final bool isInverted;
  final Color backgroundColor;
  final Color textColor;

  const AppButton({
    required this.text,
    required this.onPressed,
    required this.width,
    this.isInverted = false,
    this.backgroundColor = const Color(0xFFD0E060),
    this.textColor = const Color(0xFF373A35),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: isInverted ? textColor : backgroundColor,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: isInverted ? backgroundColor : textColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
