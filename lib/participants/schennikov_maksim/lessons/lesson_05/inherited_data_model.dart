import 'package:flutter/material.dart';

class InheritedDataModel extends InheritedModel<Shapes> {
  static InheritedDataModel? of(BuildContext context, Shapes aspect) {
    return InheritedModel.inheritFrom<InheritedDataModel>(context, aspect: aspect);
  }

  final bool isOvalTop;
  final bool isOvalBottom;

  const InheritedDataModel({
    required super.child,
    required this.isOvalTop,
    required this.isOvalBottom,
    super.key,
  });

  @override
  bool updateShouldNotifyDependent(InheritedDataModel oldWidget, Set<Shapes> dependencies) {
    final isTopUpdated = isOvalTop != oldWidget.isOvalTop && dependencies.contains(Shapes.top);
    final isBottomUpdated = isOvalBottom != oldWidget.isOvalBottom && dependencies.contains(Shapes.bottom);
    return isTopUpdated || isBottomUpdated;
  }

  @override
  bool updateShouldNotify(InheritedDataModel oldWidget) {
    return isOvalTop != oldWidget.isOvalTop || isOvalBottom != oldWidget.isOvalBottom;
  }
}

enum Shapes { top, bottom }
