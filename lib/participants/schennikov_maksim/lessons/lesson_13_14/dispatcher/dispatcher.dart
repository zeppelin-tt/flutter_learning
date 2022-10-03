import 'package:rxdart/rxdart.dart';

class Dispatcher<T> {
  final BehaviorSubject<T> _controller;

  Dispatcher({
    required T initialData,
  }) : _controller = BehaviorSubject<T>.seeded(initialData);

  Stream<T> get stream => _controller.stream;

  T get value => _controller.value;

  void add(T item) => _controller.add(item);

  Future<void> dispose() => _controller.close();
}
