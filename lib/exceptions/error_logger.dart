import 'package:flutter/foundation.dart';
import 'package:lorcana_collection/exceptions/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'error_logger.g.dart';

class ErrorLogger {
  void logError(Object error, StackTrace? stackTrace) {
    // * This can be replaced with a call to a crash reporting tool of choice
    debugPrint('$error, $stackTrace');
  }

  void logAppException(AppException exception) {
    // * This can be replaced with a call to a crash reporting tool of choice
    debugPrint('$exception');
  }
}

@riverpod
ErrorLogger errorLogger(ErrorLoggerRef ref) {
  return ErrorLogger();
}
