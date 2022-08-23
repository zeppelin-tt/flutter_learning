import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AndreevAlekseiLesson4Page extends StatefulWidget {
  const AndreevAlekseiLesson4Page({
    Key? key,
  }) : super(key: key);

  @override
  State<AndreevAlekseiLesson4Page> createState() =>
      _AndreevAlekseiLesson4PageState();
}

class _AndreevAlekseiLesson4PageState extends State<AndreevAlekseiLesson4Page> {
  final textFieldController1 = TextEditingController();
  final textFieldController2 = TextEditingController();
  final textFieldController3 = TextEditingController();

  @override
  void dispose() {
    textFieldController1.dispose();
    textFieldController2.dispose();
    textFieldController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textFieldController1,
              inputFormatters: [
                NoSpacesTextInputFormatter(),
              ],
              onChanged: (text) {
                textFieldController3.text =
                '${textFieldController1.text} ${textFieldController2.text}';
              },
            ),
            TextField(
              controller: textFieldController2,
              inputFormatters: [
                NoSpacesTextInputFormatter(),
              ],
              onChanged: (text) {
                textFieldController3.text =
                '${textFieldController1.text} ${textFieldController2.text}';
              },
            ),
            TextField(
              controller: textFieldController3,
              inputFormatters: [
                SpaceProtectorInputFormatter(),
              ],
              onChanged: (text) {
                textFieldController1.text = currentTextReturner1(text);
                textFieldController2.text = currentTextReturner2(text);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NoSpacesTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    if (RegExp(r'\s').hasMatch(newText)) {
      return oldValue;
    }
    return newValue.copyWith(text: newText);
  }
}

class SpaceProtectorInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    if (RegExp(r'\s').allMatches(newText).length != 1) {
      return oldValue;
    }
    else{
      return newValue.copyWith(text: newText);
    }
  }
}

String currentTextReturner1(String text) {
  final spacePosition = text.indexOf(RegExp(r'\s'));
  final currentText = text.substring(0, spacePosition);
  return currentText;
}

String currentTextReturner2(String text) {
  final spacePosition = text.indexOf(RegExp(r'\s'));
  final currentText = text.substring(spacePosition+1);
  return currentText;
}
