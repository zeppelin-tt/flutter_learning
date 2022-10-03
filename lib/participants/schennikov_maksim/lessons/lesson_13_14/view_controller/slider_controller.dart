import 'package:flutter_learning/participants/schennikov_maksim/lessons/lesson_13_14/dispatcher/dispatcher.dart';

class SliderController extends Dispatcher<double> {
  final Duration animateDuration;

  SliderController({
    required super.initialData,
    required this.animateDuration,
  });
}
