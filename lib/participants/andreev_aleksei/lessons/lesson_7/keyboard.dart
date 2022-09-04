import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/andreev_aleksei/lessons/lesson_7/pin_code_provider.dart';
import 'package:provider/provider.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pinCodeProvider = context.watch<PinCodeProvider>();

    return Expanded(
        child: GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: [
        TextButton(
          onPressed: () {
            if (!pinCodeProvider.keyboardisBlocked) {
              pinCodeProvider.receivingDigit('7');
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
          child: const Text(
            '7',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {
            if (!pinCodeProvider.keyboardisBlocked) {
              pinCodeProvider.receivingDigit('8');
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
          child: const Text(
            '8',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {
            if (!pinCodeProvider.keyboardisBlocked) {
              pinCodeProvider.receivingDigit('9');
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
          child: const Text(
            '9',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {
            if (!pinCodeProvider.keyboardisBlocked) {
              pinCodeProvider.receivingDigit('4');
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
          child: const Text(
            '4',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {
            if (!pinCodeProvider.keyboardisBlocked) {
              pinCodeProvider.receivingDigit('5');
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
          child: const Text(
            '5',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {
            if (!pinCodeProvider.keyboardisBlocked) {
              pinCodeProvider.receivingDigit('6');
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
          child: const Text(
            '6',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {
            if (!pinCodeProvider.keyboardisBlocked) {
              pinCodeProvider.receivingDigit('1');
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
          child: const Text(
            '1',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {
            if (!pinCodeProvider.keyboardisBlocked) {
              pinCodeProvider.receivingDigit('2');
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
          child: const Text(
            '2',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {
            if (!pinCodeProvider.keyboardisBlocked) {
              pinCodeProvider.receivingDigit('3');
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
          child: const Text(
            '3',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
          child: const Text(
            '',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
        TextButton(
          onPressed: () {
            if (!pinCodeProvider.keyboardisBlocked) {
              pinCodeProvider.receivingDigit('0');
            }
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
          child: const Text(
            '0',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
        IconButton(
          onPressed: () {
            if (!pinCodeProvider.keyboardisBlocked) {
              pinCodeProvider.clear();
            }
          },
          icon: const Icon(Icons.arrow_back),
          iconSize: 35,
          splashRadius: 70,
          splashColor: Colors.black12,
        ),
      ],
    ));
  }
}
