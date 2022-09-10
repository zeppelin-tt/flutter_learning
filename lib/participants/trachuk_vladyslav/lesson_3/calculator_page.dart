import 'package:flutter/material.dart';

import 'Widgets/keyboard_widget.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<CalculatorPage> createState() {
    return _CalculatorPage();
  }
}

class _CalculatorPage extends State<CalculatorPage> {
  String mainDisplay = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: const Color(0xffc9baff),
        child: Column(
          children: [
            Container(
              width: 500,
              height: 200,
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              alignment: Alignment.centerRight,
              color: Colors.white,
              child: Text(
                mainDisplay,
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1b232b),
                ),
              ),
            ),
            Container(
              width: 450,
              height: 10,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xfffc1f80),
                  Color(0xffb42bee),
                ], begin: Alignment.center),
              ),
            ),
            KeyboardWidget(
              delete: () {
                setState(
                  () {
                    mainDisplay = '';
                  },
                );
              },
              output: (outputValue) {
                setState(
                  () {
                    if (mainDisplay.length <= 10) {
                      mainDisplay = mainDisplay + outputValue;
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
