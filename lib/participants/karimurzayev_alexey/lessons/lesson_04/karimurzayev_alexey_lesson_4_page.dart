import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const KarimurzayevAlexeyLesson4Page());
}

class KarimurzayevAlexeyLesson4Page extends StatefulWidget {
  const KarimurzayevAlexeyLesson4Page({super.key});

  @override
  State<KarimurzayevAlexeyLesson4Page> createState() => _KarimurzayevAlexeyLesson4PageState();
}

class _KarimurzayevAlexeyLesson4PageState extends State<KarimurzayevAlexeyLesson4Page> {
  final textFieldStyleOne = const InputDecoration(
    labelText: 'First Text',
    labelStyle: TextStyle(fontSize: 18, color: Color(0xff9380ec), fontWeight: FontWeight.w500),
    hintText: 'First Text',
    hintStyle: TextStyle(color: Colors.yellowAccent),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: Color(0xff01b4e4)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: Color(0xff9380ec)),
    ),
  );

  final textFieldStyleTwo = const InputDecoration(
    labelText: 'SECOND Text',
    labelStyle: TextStyle(fontSize: 22, color: Colors.yellowAccent, fontWeight: FontWeight.w800),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    floatingLabelAlignment: FloatingLabelAlignment.center,
    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 4, color: Colors.redAccent)),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 4, color: Color(0xff9380ec)),
      borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
    ),
    icon: Icon(Icons.text_fields),
    suffixIcon: Icon(Icons.telegram),
    filled: true,
    fillColor: Colors.orangeAccent,
  );

  final textFieldStyleThree = const InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 12),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(width: 2, color: Color(0xff9380ec), strokeAlign: StrokeAlign.outside),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: Color(0xff9380ec)),
      borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
    ),
  );

  final denySpace = <TextInputFormatter>[
    FilteringTextInputFormatter.deny(RegExp(r'\s')),
  ]; // Запретил пробел, можно использовать например при валидации и тд.
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final textController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 80, right: 10, bottom: 10),
        child: Column(
          children: [
            TextField(
              controller: textController1,
              onChanged: (text) {
                textController3.text = '${textController1.text} ${textController2.text}';
              },
              //maxLength: 8,
              inputFormatters: denySpace,
              style: const TextStyle(color: Colors.white),
              decoration: textFieldStyleOne,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: textController2,
              onChanged: (text) {
                textController3.text = '${textController1.text} ${textController2.text}';
              },
             // maxLength: 8,
              inputFormatters: denySpace,
              style: const TextStyle(color: Colors.white),
              decoration: textFieldStyleTwo,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: textController3,
              onChanged: (text) {
                textController3.text.length < 9
                    ? textController1.text = textController3.text
                    : textController2.text = textController3.text.substring(8);
              },
              //maxLength: 16,
              inputFormatters: [WhiteSpaceManager()],
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
              decoration: textFieldStyleThree,
            ),
          ],
        ),
      ),
    );
  }


}

class WhiteSpaceManager extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    return RegExp(r'\s').allMatches(newText).length != 1 ? oldValue : newValue.copyWith(text: newText);
  }
}


// Не пойму как автоматически добавить пробел в 3 поле, для логичного разделения текста для 1 и 2 полей
