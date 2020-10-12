import 'package:flutter/material.dart';

import 'package:logging/logging.dart';
import 'package:starter/app.dart';
import 'package:starter/config/example.dart';
import 'package:starter/config/flavors.dart';

void main() {
  _setupLogging();

  FlavorConfig(
    flavor: Flavor.DEV,
    color: Colors.red,
    values: FlavorValues(
      exampleConfig: const ExampleConfig(
        exampleField: "",
      ),
    ),
  );

  runApp(MyApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print("${rec.level.name}: ${rec.time}: ${rec.message}");
  });
}
