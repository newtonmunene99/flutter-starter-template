import 'package:flutter/material.dart';
import 'package:starter/config/example.dart';
import 'package:starter/utils/string_utils.dart';

/// App flavors
enum Flavor {
  /// The development environment flavor
  DEV,

  /// The quality assurance environment flavor
  QA,

  /// The production environment flavor
  PRODUCTION,
}

/// This class holds specific values for each flavor that we'd like to access globally
class FlavorValues {
  /// Initiate [FlavorValues] with the required parameters
  FlavorValues({
    @required this.exampleConfig,
  });

  /// The config for midaga
  final ExampleConfig exampleConfig;
}

/// [FlavorConfig] holds the configuration for each flavor
class FlavorConfig {
  /// The current [Flavor]
  final Flavor flavor;

  /// The name of the current flavor
  final String name;

  /// A color to associate with the current flavor.
  /// This is helpful to easily differentiate the flavors at runtime to alert the developer in case they are running the wrong flavor
  final Color color;

  /// [FlavorValues] that are to be passed to the application
  final FlavorValues values;

  static FlavorConfig _instance;

  /// Initiate [FlavorConfig] with required params
  factory FlavorConfig({
    @required Flavor flavor,
    @required FlavorValues values,
    Color color = Colors.blue,
  }) =>
      _instance ??= FlavorConfig._internal(
        flavor,
        StringUtils.enumName(flavor.toString()),
        color,
        values,
      );

  FlavorConfig._internal(this.flavor, this.name, this.color, this.values);

  /// Get the current instance of [FlavorConfig]
  static FlavorConfig get instance => _instance;

  /// Checks if the current flavor is [Flavor.PRODUCTION]
  static bool isProduction() => _instance.flavor == Flavor.PRODUCTION;

  /// Checks if the current flavor is [Flavor.DEV]
  static bool isDevelopment() => _instance.flavor == Flavor.DEV;

  /// Checks if the current flavor is [Flavor.QA]
  static bool isQA() => _instance.flavor == Flavor.QA;
}
