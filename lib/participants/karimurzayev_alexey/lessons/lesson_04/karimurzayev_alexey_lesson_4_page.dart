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
    hintText: 'First Text',
    hintStyle: TextStyle(color: Colors.yellowAccent),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: Color(0xff01b4e4)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: Color(0xff9380ec)),
    ),
  ); // Цвет бордера при фокусе.

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

  final denySpace = <TextInputFormatter>[FilteringTextInputFormatter.deny(RegExp(r'[\s]'))];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 80, right: 10, bottom: 10),
        child: Column(
          children: [
            TextField(
              inputFormatters: denySpace,
              style: const TextStyle(color: Colors.white),
              decoration: textFieldStyleOne,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              inputFormatters: denySpace,
              style: const TextStyle(color: Colors.white),
              decoration: textFieldStyleTwo,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                print('test');
              },
              child: const Text('Push me!'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              inputFormatters: denySpace,
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
