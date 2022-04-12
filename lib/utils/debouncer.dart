
import 'package:flutter/foundation.dart';
import 'dart:async';

class Debouncer {
  Timer? _timer;

  void run(VoidCallback action) {
    if (_timer != null) _timer!.cancel();

    _timer = Timer(const Duration(seconds: 1), action);
  }
}
