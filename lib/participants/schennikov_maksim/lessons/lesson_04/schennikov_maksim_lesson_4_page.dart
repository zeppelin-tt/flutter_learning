import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SchennikovMaksimLesson4Page extends StatefulWidget {
  const SchennikovMaksimLesson4Page({
    Key? key,
  }) : super(key: key);

  @override
  State<SchennikovMaksimLesson4Page> createState() => _SchennikovMaksimLesson4PageState();
}

class _SchennikovMaksimLesson4PageState extends State<SchennikovMaksimLesson4Page> {
  // String textValue = '';
  // final textController = TextEditingController();
  final streamTextController = StreamController<String>.broadcast();
  final focusNode = FocusNode();
  String currentText = '';

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      print('focusNode.hasFocus: ${focusNode.hasFocus}');
    });
    // textController.addListener(() => print(textController.selection));
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
            StreamBuilder<String>(
                initialData: '',
                stream: streamTextController.stream,
                builder: (context, snapshot) {
                  return TextField(
                    style: const TextStyle(color: Colors.black, fontSize: 25),
                    focusNode: focusNode,
                    textAlign: TextAlign.center,
                    maxLines: 5,
                    inputFormatters: [
                      OnlyNumericTextInputFormatter(),
                    ],
                    decoration: InputDecoration(
                      hintText: 'Hint Text',
                      helperText: 'Helper Text 5',
                      counterText: snapshot.requireData.length.toString(),
                      border: const OutlineInputBorder(),
                    ),
                    onChanged: (text) {
                      currentText = text;
                      streamTextController.add(text);
                    },
                  );
                }),
            TextField(
              style: const TextStyle(color: Colors.black, fontSize: 25),
              // focusNode: focusNode,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                currentText = text;
                streamTextController.add(text);
              },
            ),
            const SizedBox(height: 10),
            StreamBuilder<String>(
              stream: streamTextController.stream,
              builder: (context, textData) {
                if (!textData.hasData) {
                  return const SizedBox.shrink();
                }
                return Text(
                  textData.requireData,
                  style: const TextStyle(color: Colors.red, fontSize: 25),
                );
              },
            ),
            TextButton(
              onPressed: focusNode.requestFocus,
              child: const Text(
                'requestFocus to first field',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
    // textController.dispose();
  }
}

class OnlyNumericTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    if (RegExp(r'^\d+$').hasMatch(newText)) {
      return newValue.copyWith(text: newText);
    }
    return oldValue;
  }
}
