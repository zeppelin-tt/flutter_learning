import 'package:flutter/material.dart';
import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_05/data_model_notifier.dart';

class InheritedDataNotifier extends InheritedNotifier<DataModelNotifier> {
  static InheritedDataNotifier? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedDataNotifier>();
  }

  final DataModelNotifier controller;

  const InheritedDataNotifier({
    required super.child,
    required this.controller,
    super.key,
  }) : super(notifier: controller);
}
