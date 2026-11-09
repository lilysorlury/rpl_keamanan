import 'package:flutter/foundation.dart';

class Logger {
  // Method untuk menampilkan log
  static void _log(String level, String message) {
    if (kDebugMode) {
      debugPrint('[$level] $message');
    }
  }

  // Log level DEBUG
  static void debug(String message) {
    _log('DEBUG', message);
  }

  // Log level INFO
  static void info(String message) {
    _log('INFO', message);
  }

  // Log level WARNING
  static void warning(String message) {
    _log('WARNING', message);
  }

  // Log level ERROR
  static void error(String message) {
    _log('ERROR', message);
  }
}
