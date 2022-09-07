import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final Function(String) valueChangedOnTap;
  final VoidCallback onClean;

  const Keyboard({
    required this.valueChangedOnTap,
    required this.onClean,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        children: [
          TextButton(
            onPressed: () {
              valueChangedOnTap('7');
            },
            child: const Text(
              '7',
              style: TextStyle(fontSize: 40),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('8');
            },
            child: const Text(
              '8',
              style: TextStyle(fontSize: 40),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('9');
            },
            child: const Text(
              '9',
              style: TextStyle(fontSize: 40),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('4');
            },
            child: const Text(
              '4',
              style: TextStyle(fontSize: 40),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('5');
            },
            child: const Text(
              '5',
              style: TextStyle(fontSize: 40),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('6');
            },
            child: const Text(
              '6',
              style: TextStyle(fontSize: 40),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('1');
            },
            child: const Text(
              '1',
              style: TextStyle(fontSize: 40),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('2');
            },
            child: const Text(
              '2',
              style: TextStyle(fontSize: 40),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('3');
            },
            child: const Text(
              '3',
              style: TextStyle(fontSize: 40),
            ),
          ),
          TextButton(
            onPressed: onClean,
            child: const Text(
              'C',
              style: TextStyle(fontSize: 40),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('0');
            },
            child: const Text(
              '0',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}
