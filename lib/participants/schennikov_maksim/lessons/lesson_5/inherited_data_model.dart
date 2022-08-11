
import 'package:flutter/material.dart';

enum Shapes { top, bottom }

class InheritedDataModel extends InheritedModel<Shapes> {
  final bool isOvalTop;
  final bool isOvalBottom;

  const InheritedDataModel({
    required Widget child,
    required this.isOvalTop,
    required this.isOvalBottom,
    Key? key,
  }) : super(key: key, child: child);

  static InheritedDataModel? of(BuildContext context, Shapes aspect) {
    return InheritedModel.inheritFrom<InheritedDataModel>(context, aspect: aspect);
  }

  @override
  bool updateShouldNotifyDependent(InheritedDataModel oldWidget, Set<Shapes> dependencies) {
    final isTopUpdated =  isOvalTop != oldWidget.isOvalTop && dependencies.contains(Shapes.top);
    final isBottomUpdated =  isOvalBottom != oldWidget.isOvalBottom && dependencies.contains(Shapes.bottom);
    return isTopUpdated || isBottomUpdated;
  }

  @override
  bool updateShouldNotify(InheritedDataModel oldWidget) {
    return isOvalTop != oldWidget.isOvalTop || isOvalBottom != oldWidget.isOvalBottom;
  }
}
