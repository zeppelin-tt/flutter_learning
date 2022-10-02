import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final Function(String) valueChangedOnTap;
  final VoidCallback onClean;

  const Keyboard({
    super.key,
    required this.valueChangedOnTap,
    required this.onClean,
  });

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
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.black12),
            ),
            child: const Text(
              '7',
              style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.normal),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('8');
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.black12),
            ),
            child: const Text(
              '8',
              style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.normal),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('9');
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.black12),
            ),
            child: const Text(
              '9',
              style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.normal),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('4');
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.black12),
            ),
            child: const Text(
              '4',
              style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.normal),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('5');
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.black12),
            ),
            child: const Text(
              '5',
              style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.normal),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('6');
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.black12),
            ),
            child: const Text(
              '6',
              style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.normal),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('1');
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.black12),
            ),
            child: const Text(
              '1',
              style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.normal),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('2');
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.black12),
            ),
            child: const Text(
              '2',
              style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.normal),
            ),
          ),
          TextButton(
            onPressed: () {
              valueChangedOnTap('3');
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.black12),
            ),
            child: const Text(
              '3',
              style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.normal),
            ),
          ),
          Container(),
          TextButton(
            onPressed: () {
              valueChangedOnTap('0');
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.black12),
            ),
            child: const Text(
              '0',
              style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.normal),
            ),
          ),
          IconButton(
            onPressed: onClean,
            icon: const Icon(Icons.arrow_back),
            iconSize: 35,
            splashRadius: 70,
            splashColor: Colors.black12,
          ),
        ],
      ),
    );
  }
}
