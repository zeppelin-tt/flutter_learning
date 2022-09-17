import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AndreevAlekseiLesson4Page extends StatefulWidget {
  const AndreevAlekseiLesson4Page({
    super.key,
  });

  @override
  State<AndreevAlekseiLesson4Page> createState() => _AndreevAlekseiLesson4PageState();
}

class _AndreevAlekseiLesson4PageState extends State<AndreevAlekseiLesson4Page> {
  final textFieldController1 = TextEditingController();
  final textFieldController2 = TextEditingController();
  final textFieldController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              controller: textFieldController1,
              inputFormatters: [
                NoSpacesTextInputFormatter(),
              ],
              decoration: const InputDecoration(
                hintText: 'print some letters here',
              ),
              onChanged: (text) {
                textFieldController3.text = '${textFieldController1.text} ${textFieldController2.text}';
              },
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              controller: textFieldController2,
              inputFormatters: [
                NoSpacesTextInputFormatter(),
              ],
              decoration: const InputDecoration(
                hintText: 'and here too!',
              ),
              onChanged: (text) {
                textFieldController3.text = '${textFieldController1.text} ${textFieldController2.text}';
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              controller: textFieldController3,
              inputFormatters: [
                SpaceProtectorInputFormatter(),
              ],
              decoration: const InputDecoration(
                helperText: 'this is fine!',
                border: OutlineInputBorder(),
              ),
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

  @override
  void dispose() {
    textFieldController1.dispose();
    textFieldController2.dispose();
    textFieldController3.dispose();
    super.dispose();
  }
}

class NoSpacesTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    if (RegExp(r'\s').hasMatch(newText)) {
      return oldValue;
    }
    return newValue.copyWith(text: newText);
  }
}

class SpaceProtectorInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    return RegExp(r'\s').allMatches(newText).length != 1 ? oldValue : newValue.copyWith(text: newText);
  }
}

String currentTextReturner1(String text) {
  final spacePosition = text.indexOf(RegExp(r'\s'));
  return text.substring(0, spacePosition);
}

String currentTextReturner2(String text) {
  final spacePosition = text.indexOf(RegExp(r'\s'));
  return text.substring(spacePosition + 1);
}
