import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Lesson4());
}

class Lesson4 extends StatelessWidget {
  final streamController = StreamController<String>();

  Lesson4({super.key});

  @override
  Widget build(BuildContext context) {
    final textController1 = TextEditingController();
    final textController2 = TextEditingController();
    final textController3 = TextEditingController();
    const divider = '_';
    return MaterialApp(
      home: Material(
        color: const Color(0xFFF2F1F6),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border.fromBorderSide(BorderSide.none),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: StreamBuilder<Object>(
                      stream: streamController.stream,
                      builder: (context, snapshot) {
                        return Column(
                          children: [
                            _AppleTextField(
                              hintText: 'Apple ID',
                              prefixText: 'Apple ID',
                              textController: textController1,
                              addEvent: (text) {
                                textController3.text = '${textController1.text}$divider${textController2.text}';
                              },
                            ),
                            const Divider(color: Colors.grey, height: 1),
                            _AppleTextField(
                              hintText: 'Required',
                              prefixText: 'Password',
                              textController: textController2,
                              addEvent: (text) {
                                textController3.text = '${textController1.text}$divider${textController2.text}';
                              },
                            ),
                            TextField(
                              inputFormatters: [
                                FilteringTextInputFormatter(RegExp('[^A-Za-z, А-Яа-я, 0-9], _'), allow: false),
                                FilteringTextInputFormatter(RegExp(' '), allow: false),
                              ],
                              controller: textController3,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                border: OutlineInputBorder(borderSide: BorderSide.none),
                                icon: Icon(Icons.home),
                              ),
                              onChanged: (text) {
                                List<String> tempList;
                                if (!textController3.text.contains(divider)) {
                                  textController3.text = textController1.text + divider + textController2.text;
                                  tempList = textController3.text.split(divider);
                                  textController1.text = tempList.first;
                                  textController2.text = tempList.last;
                                }
                                tempList = textController3.text.split(divider);
                                textController1.text = tempList.first;
                                textController2.text = tempList.last;
                              },
                              onTap: (){
                                if (!textController3.text.contains(divider)){
                                  textController3.text = textController1.text + divider + textController2.text;
                                }
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.fromBorderSide(BorderSide(color: Colors.transparent)),
                      borderRadius: BorderRadius.all(Radius.circular(200)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future dispose() async {
    await streamController.close();
  }
}

class _AppleTextField extends StatelessWidget {
  final String prefixText;
  final String hintText;
  final Function(String) addEvent;
  final TextEditingController textController;
  const _AppleTextField({
    required this.hintText,
    required this.prefixText,
    required this.textController,
    required this.addEvent,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: [
        FilteringTextInputFormatter(RegExp('[^A-Za-z, А-Яа-я, 0-9]'), allow: false),
        FilteringTextInputFormatter(RegExp(' '), allow: false),
      ],
      onChanged: addEvent,
      style: const TextStyle(color: Colors.black, fontSize: 18),
      controller: textController,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xFFBFBEC0), fontSize: 18),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        prefixIcon: SizedBox(
          width: 90,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            child: Text(prefixText, style: const TextStyle(color: Colors.black, fontSize: 18)),
          ),
        ),
      ),
    );
  }
}
