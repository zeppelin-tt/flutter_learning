import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_06/animated_rect_lesson_6.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_06/command_%20buttons_lesson_6.dart';
import 'package:provider/provider.dart';

class SchennikovMaksimLesson6Page extends StatelessWidget {
  const SchennikovMaksimLesson6Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RectModel(isOval: true, color: Colors.blue, width: 200, height: 200)),
        ProxyProvider<RectModel, DescriptionModel>(update: (_, rectModel, __) {
          return DescriptionModel(rectModel.commandName);
        }),
      ],
      child: Material(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Consumer<RectModel>(
                builder: (context, rectModel, child) {
                  return AnimatedRectLesson6(
                    color: rectModel.color,
                    width: rectModel.width,
                    height: rectModel.height,
                    isOval: rectModel.isOval,
                  );
                },
              ),
              const Spacer(),
              Consumer<DescriptionModel>(
                builder: (context, descriptionModel, _) {
                  return Text(
                    descriptionModel.description,
                    style: const TextStyle(color: Colors.blue, fontSize: 20),
                    textAlign: TextAlign.center,
                  );
                },
              ),
              const SizedBox(height: 15),
              const CommandButtonsLesson6(),
              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}

class DescriptionModel {
  final String _commandName;

  DescriptionModel(
    this._commandName,
  );

  String get description => _commandName.isEmpty ? '' : 'Вы применили команду: $_commandName';
}

class RectModel extends ChangeNotifier {
  final _rnd = Random();

  bool isOval;
  double height;
  double width;
  Color color;
  String commandName;

  RectModel({
    required this.isOval,
    required this.height,
    required this.color,
    required this.width,
    this.commandName = '',
  });

  void setIsOval({required bool isOval}) {
    if (isOval != this.isOval) {
      this.isOval = isOval;
      commandName = 'Изменеие БордерРадиуса';
      notifyListeners();
    }
  }

  void setSizeUp() {
    height = height + 20;
    width = width + 20;
    commandName = 'Увеличение размера';
    notifyListeners();
  }

  void setSizeDown() {
    height = height - 20;
    width = width - 20;
    commandName = 'Уменьшение размера';
    notifyListeners();
  }

  void setRandomColor() {
    color = Color.fromRGBO(_rnd.nextInt(255), _rnd.nextInt(255), _rnd.nextInt(255), 1);
    commandName = 'Изменение цвета';
    notifyListeners();
  }
}
