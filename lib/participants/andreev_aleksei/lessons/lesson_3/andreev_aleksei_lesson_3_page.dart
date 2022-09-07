//import 'dart:math';

import 'package:flutter/material.dart';

import 'keyboard.dart';

class AndreevAlekseiLesson3Page extends StatefulWidget {
  const AndreevAlekseiLesson3Page({
    Key? key,
  }) : super(key: key);

  @override
  State<AndreevAlekseiLesson3Page> createState() => _AndreevAlekseiLesson3PageState();
}

class _AndreevAlekseiLesson3PageState extends State<AndreevAlekseiLesson3Page> {
  String displayText = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      color: Colors.white,
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerRight,
          color: Colors.blue,
          child: Text(
            displayText,
            style: const TextStyle(
              fontSize: 60,
              color: Colors.white,
            ),
          ),
        ),
        Keyboard(
          onClean: () {
            setState(() {
              displayText = '';
            });
          },
          valueChangedOnTap: (val) {
            if (displayText.length <= 9) {
              setState(() {
                {
                  displayText = displayText + val;
                }
              });
            }
          },
        ),
      ]),
    ));
  }
}
