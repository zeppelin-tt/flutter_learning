import 'package:flutter/material.dart';

class SchennikovMaksimLesson2Page extends StatelessWidget {
  const SchennikovMaksimLesson2Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            color: Colors.black,
            height: 170,
            width: 170,
            margin: const EdgeInsets.all(40),
            child: Center(
              child: ClipOval(
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.red,
                  child:  const Center(
                    child: Text(
                      'Вам понравилось? Вам понравилось? Вам понравилось? Вам понравилось? Вам понравилось?',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 30,
                        overflow: TextOverflow.fade,
                      ),
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const _CustomWidget(),
        ],
      ),
    );
  }
}

class _CustomWidget extends StatelessWidget {
  const _CustomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.blueAccent, width: 5),
          borderRadius: BorderRadius.circular(735),
          boxShadow: const [
            BoxShadow(color: Colors.blue, blurRadius: 25, offset: Offset(20, 20)),
            BoxShadow(color: Colors.black26, blurRadius: 40, offset: Offset(40, 40)),
          ],
          gradient: const LinearGradient(colors: [Colors.red, Colors.white])),
      child: const ColoredBox(
        color: Colors.amber,
      ),
    );
  }
}
