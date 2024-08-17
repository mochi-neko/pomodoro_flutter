import 'package:logger/logger.dart';

Logger createLogger() {
  // return Logger(
  //   filter: CustomLogFilter(),
  //   printer: CustomLogPrinter(),
  //   output: CustomLogOutput(),
  //   level: Level.debug,
  // );
  return Logger();
}

class CustomLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

class CustomLogPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    throw UnimplementedError();
  }
}

class CustomLogOutput extends LogOutput {
  @override
  void output(OutputEvent event) {}
}
