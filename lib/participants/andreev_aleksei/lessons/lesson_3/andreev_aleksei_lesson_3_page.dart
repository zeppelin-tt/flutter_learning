//import 'dart:math';

import 'package:flutter/material.dart';

class AndreevAlekseiLesson3Page extends StatefulWidget {
  const AndreevAlekseiLesson3Page({
    Key? key,
  }) : super(key: key);

  @override
  State<AndreevAlekseiLesson3Page> createState() =>
      _AndreevAlekseiLesson3PageState();
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
        Expanded(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    displayText = addingNewDigit(displayText, '7');
                  });
                },
                child: const Text(
                  '7',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    displayText = addingNewDigit(displayText, '8');
                  });
                },
                child: const Text(
                  '8',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    displayText = addingNewDigit(displayText, '9');
                  });
                },
                child: const Text(
                  '9',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    displayText = addingNewDigit(displayText, '4');
                  });
                },
                child: const Text(
                  '4',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    displayText = addingNewDigit(displayText, '5');
                  });
                },
                child: const Text(
                  '5',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    displayText = addingNewDigit(displayText, '6');
                  });
                },
                child: const Text(
                  '6',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    displayText = addingNewDigit(displayText, '1');
                  });
                },
                child: const Text(
                  '1',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    displayText = addingNewDigit(displayText, '2');
                  });
                },
                child: const Text(
                  '2',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    displayText = addingNewDigit(displayText, '3');
                  });
                },
                child: const Text(
                  '3',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    displayText = '';
                  });
                },
                child: const Text(
                  'C',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    displayText = addingNewDigit(displayText, '0');
                  });
                },
                child: const Text(
                  '0',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}

String addingNewDigit(String displayingNumber, String newDigit) {
  if (displayingNumber.length <= 9) {
    final String result = '$displayingNumber$newDigit';
    return result;
  } else {
    return displayingNumber;
  }
}
