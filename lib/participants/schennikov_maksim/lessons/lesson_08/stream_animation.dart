import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class StreamAnimation extends StatefulWidget {
  const StreamAnimation({Key? key}) : super(key: key);

  @override
  State<StreamAnimation> createState() => _StreamAnimationState();
}

class _StreamAnimationState extends State<StreamAnimation> {
  final rnd = Random();
  final valueController = BehaviorSubject<int>.seeded(10);
  final textSizeController = BehaviorSubject<double>.seeded(24);
  final duration = const Duration(milliseconds: 1500);

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (valueController.value == 0) {
        timer.cancel();
        return;
      }
      valueController.add(valueController.value - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          StreamBuilder<int>(
            initialData: valueController.value,
            stream: valueController.stream,
            builder: (context, val) {
              return AnimatedContainer(
                duration: duration,
                color: val.requireData > 0 ? Colors.transparent : Colors.red,
              );
            },
          ),
          // StreamBuilder<double>(
          //   initialData: valueController.value,
          //   stream: valueController.stream,
          //   builder: (context, value) {
          //     return AnimatedCrossFade(
          //       duration: duration,
          //       crossFadeState: value.requireData > 50 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          //       firstChild: Image.network('https://hoteisea.ru/wp-content/uploads/2019/03/Sea-1280x720.jpg'),
          //       secondChild: Image.network(
          //           'https://kartinkin.net/uploads/posts/2022-02/1644897077_1-kartinkin-net-p-krasivie-kartinki-more-2.jpg'),
          //     );
          //   },
          // ),
          // StreamBuilder<double>(
          //   initialData: valueController.value,
          //   stream: valueController.stream,
          //   builder: (context, value) {
          //     return AnimatedOpacity(
          //       duration: duration,
          //       opacity: value.requireData > 50 ? 0 : 1,
          //       child: Image.network('https://hoteisea.ru/wp-content/uploads/2019/03/Sea-1280x720.jpg'),
          //     );
          //   },
          // ),
          Center(
            child: StreamBuilder<int>(
              initialData: valueController.value,
              stream: valueController.stream,
              builder: (context, value) {
                return AnimatedSwitcher(
                  duration: duration,
                  child: Text(
                    '${value.requireData.round()}',
                    key: ValueKey<int>(value.requireData),
                    style: const TextStyle(color: Colors.red, fontSize: 46),
                  ),
                );
              },
            ),
          ),
          // StreamBuilder<double>(
          //   initialData: valueController.value,
          //   stream: valueController.stream,
          //   builder: (context, value) {
          //     return AnimatedRotation(
          //       duration: duration,
          //       turns: value.requireData > 50 ? 0 : 1,
          //       child: Image.network('https://hoteisea.ru/wp-content/uploads/2019/03/Sea-1280x720.jpg'),
          //     );
          //   },
          // ),
          // TextButton(
          //   onPressed: () {
          //     valueController.add(rnd.nextDouble() * 100);
          //     textSizeController.add(15 + rnd.nextDouble() * 32);
          //   },
          //   child: StreamBuilder<double>(
          //     stream: textSizeController.stream,
          //     initialData: textSizeController.value,
          //     builder: (context, textSize) {
          //       return AnimatedDefaultTextStyle(
          //         style: TextStyle(color: Colors.black, fontSize: textSize.requireData),
          //         duration: const Duration(milliseconds: 500),
          //         child: const Text('Push'),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    valueController.close();
  }
}
