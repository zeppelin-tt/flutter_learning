import 'package:flutter/material.dart';

class InheritedDataProvider extends InheritedWidget {
  static InheritedDataProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedDataProvider>();
  }

  final bool isOval;

  const InheritedDataProvider({
    required super.child,
    required this.isOval,
    super.key,
  });

  @override
  bool updateShouldNotify(InheritedDataProvider oldWidget) => isOval != oldWidget.isOval;
}
