import 'dart:async';
import 'package:daily_cocoda_008_with_flutter/calculator_key.dart';

class KeyEvent {
  KeyEvent(this.key);
  final CalculatorKey key;
}

abstract class KeyController {
  static StreamController _controller = StreamController();
  static Stream get _stream => _controller.stream;

  static StreamSubscription listen(Function handler) =>
      _stream.listen(handler as dynamic);
  static void fire(KeyEvent event) => _controller.add(event);

  static dispose() => _controller.close();
}
