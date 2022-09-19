import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Lesson6());
}

class Lesson6 extends StatelessWidget {
  const Lesson6({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AnimationModel(),
      child: Material(
        color: Colors.blue.shade100,
        child: Consumer<AnimationModel>(builder: (context, model, child) {
          return LayoutBuilder(
            builder: (context, constraints) {
              final maxWidth = constraints.biggest.width;
              final maxHeight = constraints.biggest.height;
              return Stack(
                children: [
                  Stack(
                    children: model.listOfBalls,
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        model.fillStack(maxWidth, maxHeight);
                      },
                      child: const Text('Generate balls'),
                    ),
                  ),
                ],
              );
            },
          );
        }),
      ),
    );
  }
}

class _BallWidget extends StatelessWidget {
  final double top;
  final double left;
  final double width;
  final double height;
  final Color color;
  final VoidCallback onTap;
  final int index;
  final double maxWidth;
  final double maxHeight;

  const _BallWidget({
    required this.top,
    required this.left,
    required this.width,
    required this.height,
    required this.color,
    required this.onTap,
    required this.index,
    required this.maxWidth,
    required this.maxHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          width: width,
          height: height,
          decoration: BoxDecoration(
            border: const Border.fromBorderSide(BorderSide(color: Colors.green)),
            borderRadius: const BorderRadius.all(Radius.circular(200)),
            color: color,
          ),
          duration: const Duration(milliseconds: 350),
        ),
      ),
    );
  }
}

class AnimationModel extends ChangeNotifier {
  List<_BallWidget> listOfBalls = [];

  void setSizeUp(int index) {
    final tempList = <_BallWidget>[];
    for (final element in listOfBalls) {
      if (element.index == index) {
        addIncreasedElement(tempList, element);
      } else {
        addDecreasedElement(tempList, element);
      }
      listOfBalls = tempList;
    }

    notifyListeners();
  }

  void addDecreasedElement(List<_BallWidget> tempList, _BallWidget element) {
    if (element.top + element.height > element.maxHeight || element.left + element.width > element.maxWidth) {
      return;
    } else {
      tempList.add(_BallWidget(
        top: element.top,
        left: element.left,
        width: element.width - element.width * 0.02,
        height: element.height - element.height * 0.02,
        color: element.color,
        onTap: () {
          setSizeUp(element.index);
        },
        index: element.index,
        maxWidth: element.maxWidth,
        maxHeight: element.maxHeight,
      ));
    }
  }

  void addIncreasedElement(List<_BallWidget> tempList, _BallWidget element) {
    if (element.top + element.height + (element.height * 0.2) > element.maxHeight ||
        element.left + element.width + (element.width * 0.2) > element.maxWidth) {
      return;
    } else {
      tempList.add(_BallWidget(
        top: element.top,
        left: element.left,
        width: element.width + element.width * 0.2,
        height: element.height + element.height * 0.2,
        color: element.color,
        onTap: () {
          setSizeUp(element.index);
        },
        index: element.index,
        maxWidth: element.maxWidth,
        maxHeight: element.maxHeight,
      ));
    }
  }

  void fillStack(double maxWidth, double maxHeight) {
    listOfBalls.clear();
    for (var iterator = 0; iterator != 69; iterator++) {
      final randomWidth = maxWidth * (0.05 + Random().nextInt(15).toDouble() / 100);

      listOfBalls.add(_BallWidget(
        top: Random().nextDouble() * (maxHeight - randomWidth),
        left: Random().nextDouble() * (maxWidth - randomWidth),
        width: randomWidth,
        height:randomWidth,
        color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 0.7),
        onTap: () {
          setSizeUp(iterator);
        },
        index: iterator,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      ));
    }
    notifyListeners();
  }
}
