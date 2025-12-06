import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class BaseViewModel<T> extends StateNotifier<T> {
  final Logger logger = Logger();

  BaseViewModel(super.state);

  void logInfo(String message) {
    logger.i(message);
  }

  void logError(String message, [dynamic error, StackTrace? stackTrace]) {
    logger.e(message, error: error, stackTrace: stackTrace);
  }
}
