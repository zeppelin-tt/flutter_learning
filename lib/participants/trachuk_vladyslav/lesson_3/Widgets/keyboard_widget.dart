import 'package:flutter/material.dart';

class KeyboardWidget extends StatelessWidget {
  final Function(String) output;
  final VoidCallback delete;

  const KeyboardWidget({
    required this.output,
    required this.delete,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 440,
        height: 600,
        color: const Color(0xffc9baff),
        child: GridView(
          padding: const EdgeInsets.only(
            top: 50,
            left: 25,
            right: 25,
            bottom: 30,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          physics: const NeverScrollableScrollPhysics(),
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xffeaebed),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: delete,
                child: const Center(
                  child: Text(
                    'C',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xffeaebed),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('This button does not work');
                },
                child: const Center(
                  child: Text(
                    '()',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xffeaebed),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('%');
                },
                child: const Center(
                  child: Text(
                    '%',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xff6344d4),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('/');
                },
                child: const Center(
                  child: Text(
                    '/',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('7');
                },
                child: const Center(
                  child: Text(
                    '7',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('8');
                },
                child: const Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('9');
                },
                child: const Center(
                  child: Text(
                    '9',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xff6344d4),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('*');
                },
                child: const Center(
                  child: Text(
                    'x',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('4');
                },
                child: const Center(
                  child: Text(
                    '4',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('5');
                },
                child: const Center(
                  child: Text(
                    '5',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('6');
                },
                child: const Center(
                  child: Text(
                    '6',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xff6344d4),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('-');
                },
                child: const Center(
                  child: Text(
                    '-',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('1');
                },
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('2');
                },
                child: const Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('3');
                },
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xff6344d4),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('+');
                },
                child: const Center(
                  child: Text(
                    '+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('This button does not work');
                },
                child: const Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('0');
                },
                child: const Center(
                  child: Text(
                    '0',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                onPressed: () {
                  output('.');
                },
                child: const Center(
                  child: Text(
                    '.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  gradient: const LinearGradient(colors: [
                    Color(0xfffc1f80),
                    Color(0xffb42bee),
                  ], begin: Alignment.center)),
              child: TextButton(
                onPressed: () {
                  output('=');
                },
                child: const Center(
                  child: Text(
                    '=',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
