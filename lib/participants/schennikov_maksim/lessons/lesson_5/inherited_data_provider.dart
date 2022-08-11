import 'package:flutter/material.dart';

class InheritedDataProvider extends InheritedWidget {
  final bool isOval;

  const InheritedDataProvider({
    required Widget child,
    required this.isOval,
    Key? key,
  }) : super(key: key, child: child);

  static InheritedDataProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedDataProvider>();
  }

  @override
  bool updateShouldNotify(InheritedDataProvider oldWidget) => isOval != oldWidget.isOval;
}
