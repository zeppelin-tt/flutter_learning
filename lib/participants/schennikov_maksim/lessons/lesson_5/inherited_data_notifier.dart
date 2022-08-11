
import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_5/data_model_notifier.dart';

class InheritedDataNotifier extends InheritedNotifier<DataModelNotifier> {
  final DataModelNotifier controller;

  const InheritedDataNotifier({
    required Widget child,
    required this.controller,
    Key? key,
  }) : super(key: key, child: child, notifier: controller);

  static InheritedDataNotifier? of(BuildContext context) {
   return context.dependOnInheritedWidgetOfExactType<InheritedDataNotifier>();
  }
}
