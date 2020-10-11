import 'package:flutter/material.dart';
import 'package:starter/app.dart';
import 'package:starter/config/example.dart';

import 'package:starter/config/flavors.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.PRODUCTION,
    color: Colors.deepPurpleAccent,
    values: FlavorValues(
      exampleConfig: const ExampleConfig(
        exampleField: "",
      ),
    ),
  );

  runApp(MyApp());
}
