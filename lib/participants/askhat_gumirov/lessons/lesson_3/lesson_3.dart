import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Lesson3());
}

class Lesson3 extends StatelessWidget {
  const Lesson3({super.key});

  @override
  Widget build(BuildContext context) {
    final gridViewList = <Widget>[];
    gridViewFill(gridViewList);
    return MaterialApp(
      home: Material(
        color: Colors.black,
        child: LayoutBuilder(builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              Expanded(
                child: Container(),
              ),
              Row(
                children: const [
                  Spacer(),
                  Text('25', style: TextStyle(fontSize: 80, color: Colors.white)),
                ],
              ),
              Expanded(
                flex: 3,
                child: GridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  children: gridViewList,
                ),
              ),
            ]),
          );
        }),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final Color color;
  final Widget widget;
  const _Button({required this.color, required this.widget});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(200)),
        color: color,
      ),
      child: widget,
    );
  }
}

List gridViewFill(List<Widget> gridViewList) {
  var elementOfList = 3;
  addFirstRow(gridViewList);
  for (var element = 1; element < 4; element++) {
    var number = 9 - element * 3;
    for (var secondElement = 0; secondElement < 3; secondElement++) {
      number++;
      addButtonToList(
        const Color(0xFF313131),
        Center(child: Text('$number', style: textStyle)),
        gridViewList,
      );
    }
    addButtonToList(
      const Color(0xFFF69906),
      listOfIcons[elementOfList],
      gridViewList,
    );
    elementOfList++;
  }
  addLastRow(gridViewList);
  return gridViewList;
}

void addButtonToList(Color color, Widget widget, List<Widget> gridViewList) {
  gridViewList.add(_Button(color: color, widget: widget));
}

void addFirstRow(List<Widget> gridViewList) {
  addButtonToList(
    const Color(0xFFA0A0A0),
    const Center(child: Text('AC', style: TextStyle(fontSize: 50))),
    gridViewList,
  );
  for (var element = 0; element < 2; element++) {
    addButtonToList(const Color(0xFFA0A0A0), listOfIcons[element], gridViewList);
  }
  addButtonToList(const Color(0xFFF69906), listOfIcons[2], gridViewList);
}

void addLastRow(List<Widget> gridViewList) {
  gridViewList.add(const SizedBox());
  addButtonToList(
    const Color(0xFF313131),
    const Center(
      child: Text(
        '0',
        style: textStyle,
      ),
    ),
    gridViewList,
  );
  addButtonToList(
    const Color(0xFF313131),
    const Center(
      child: Text(
        '.',
        style: textStyle,
      ),
    ),
    gridViewList,
  );
  addButtonToList(const Color(0xFFF69906), listOfIcons.last, gridViewList);
}

const List<Widget> listOfIcons = [
  Icon(CupertinoIcons.plus_slash_minus, size: 50),
  Icon(CupertinoIcons.percent, size: 50),
  Icon(CupertinoIcons.divide, size: 50, color: Colors.white),
  Icon(CupertinoIcons.multiply, size: 50, color: Colors.white),
  Icon(CupertinoIcons.minus, size: 50, color: Colors.white),
  Icon(CupertinoIcons.plus, size: 50, color: Colors.white),
  Icon(CupertinoIcons.equal, size: 50, color: Colors.white),
];

const TextStyle textStyle = TextStyle(fontSize: 50, color: Colors.white);
