import 'package:logger/logger.dart';

class TLoggerHelper{
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    //Customize the log Levels based on your Needs
    level: Level.debug,
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void error(String message, [dynamic error]) {
    _logger.w(message, error: error, stackTrace: StackTrace.current );
  }
}