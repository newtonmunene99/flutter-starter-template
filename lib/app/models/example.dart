import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'example.g.dart';

/// Data model for example class
abstract class ExampleClass
    implements Built<ExampleClass, ExampleClassBuilder> {
  /// Example
  String get exampleValue;

  /// Data model for example class
  factory ExampleClass([void Function(ExampleClassBuilder) updates]) =
      _$ExampleClass;

  ExampleClass._();

  /// Serializer for [ExampleClass]
  static Serializer<ExampleClass> get serializer => _$exampleClassSerializer;
}
