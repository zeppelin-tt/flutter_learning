import 'package:elementary/elementary.dart';

class AppErrorHandler extends ErrorHandler{
  @override
  void handleError(Object error, {StackTrace? stackTrace}) {
    print(error);
  }
}
