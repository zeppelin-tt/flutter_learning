import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

final columnList = <Widget>[];

late double _maxWidth;

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: LayoutBuilder(
          builder: (context, constraints) {
            _maxWidth = constraints.biggest.width * 0.25;
            final list = ListOfWidgets();
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: list.fillColumn(),
              ),
            );
          },
        ),
      ),
    );
  }
}

final List<Widget> listOfWidgets = [
  const _ListItem(
    color: Colors.red,
    iconItem: Icon(
      Icons.home,
      size: 50,
      color: Colors.yellow,
    ),
  ),
  const _ListItem(
    color: Colors.yellow,
    iconItem: Icon(
      Icons.newspaper,
      size: 50,
      color: Colors.orange,
    ),
  ),
  const _ListItem(
    color: Colors.blue,
    iconItem: Icon(
      Icons.chat,
      size: 50,
      color: Colors.pink,
    ),
  ),
  const _ListItem(
    color: Colors.green,
    iconItem: Icon(
      Icons.umbrella,
      size: 50,
      color: Colors.orange,
    ),
  ),
  const _ListItem(
    color: Colors.purple,
    iconItem: Icon(
      Icons.cabin,
      size: 50,
      color: Colors.yellowAccent,
    ),
  ),
];

class ListOfWidgets {
  List<Widget> rowList = <Widget>[];

  List<Widget> fillColumn() {
    for (var item = 0; item != 19; item++) {
      for (var item = 0; item < 3; item++) {
        rowList.add(listOfWidgets[Random().nextInt(4)]);
      }

      columnList.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: rowList,
      ));
      rowList = [];
    }
    return columnList;
  }
}

class _ListItem extends StatelessWidget {
  final Color color;
  final Icon iconItem;
  const _ListItem({required this.color, required this.iconItem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: _maxWidth,
      child: Container(
        color: color,
        width: 100,
        height: 100,
        child: iconItem,
      ),
    );
  }
}
