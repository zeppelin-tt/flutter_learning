import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/karimurzayev_alexey/lessons/lesson_03/widgets/colors.dart';

class KeyboardButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback buttonClick;

  const KeyboardButton({super.key, required this.text, this.color = MyColors.colorDigit, required this.buttonClick});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Color(0xFF4E5967),
        borderRadius: BorderRadius.all(Radius.circular(11)),
      ),
      child: TextButton(
        onPressed: buttonClick,
        style: const ButtonStyle(),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ),
    );
  }
}
