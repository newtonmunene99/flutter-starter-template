import 'package:logger/logger.dart';

/// An instance of [Logger]
final Logger logger = Logger(
  printer: PrettyPrinter(
    printTime: true,
  ),
);
