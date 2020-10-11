import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:starter/app/models/example.dart';

part 'serializers.g.dart';

/// All Built Value Serializers
@SerializersFor(
  [ExampleClass],
)
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
