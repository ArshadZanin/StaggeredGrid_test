import 'package:logger/logger.dart';

class SimpleLogPrinter extends LogPrinter {
  static int counter = 0;
  final String className;
  static DateTime dateTime = DateTime.now();

  final Map<Level, AnsiColor> levelColors = {
    Level.verbose: AnsiColor.fg(250),
    Level.debug: AnsiColor.fg(92),
    Level.info: AnsiColor.fg(12),
    Level.warning: AnsiColor.fg(214),
    Level.error: AnsiColor.fg(196),
    Level.wtf: AnsiColor.fg(199),
  };

  SimpleLogPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    DateTime dateTime = DateTime.now();
    double difference = dateTime
            .difference(
              SimpleLogPrinter.dateTime,
            )
            .inMilliseconds /
        1000;
    SimpleLogPrinter.dateTime = dateTime;
    String? message = event.message;
    AnsiColor? color = levelColors[event.level];
    String className = this.className;
    SimpleLogPrinter.counter += 1;
    int sequenceNumber = SimpleLogPrinter.counter;

    if (difference > 0.5) {
      color = AnsiColor.bg(101);
    }

    return [color!('$sequenceNumber. ($difference ms) [$className]: $message')];
  }
}

Logger getLogger(String className) {
  return Logger(
    printer: SimpleLogPrinter(className),
  );
}
