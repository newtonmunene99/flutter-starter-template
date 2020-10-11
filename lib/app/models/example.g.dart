// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExampleClass> _$exampleClassSerializer =
    new _$ExampleClassSerializer();

class _$ExampleClassSerializer implements StructuredSerializer<ExampleClass> {
  @override
  final Iterable<Type> types = const [ExampleClass, _$ExampleClass];
  @override
  final String wireName = 'ExampleClass';

  @override
  Iterable<Object> serialize(Serializers serializers, ExampleClass object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'exampleValue',
      serializers.serialize(object.exampleValue,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ExampleClass deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExampleClassBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'exampleValue':
          result.exampleValue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ExampleClass extends ExampleClass {
  @override
  final String exampleValue;

  factory _$ExampleClass([void Function(ExampleClassBuilder) updates]) =>
      (new ExampleClassBuilder()..update(updates)).build();

  _$ExampleClass._({this.exampleValue}) : super._() {
    if (exampleValue == null) {
      throw new BuiltValueNullFieldError('ExampleClass', 'exampleValue');
    }
  }

  @override
  ExampleClass rebuild(void Function(ExampleClassBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExampleClassBuilder toBuilder() => new ExampleClassBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExampleClass && exampleValue == other.exampleValue;
  }

  @override
  int get hashCode {
    return $jf($jc(0, exampleValue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExampleClass')
          ..add('exampleValue', exampleValue))
        .toString();
  }
}

class ExampleClassBuilder
    implements Builder<ExampleClass, ExampleClassBuilder> {
  _$ExampleClass _$v;

  String _exampleValue;
  String get exampleValue => _$this._exampleValue;
  set exampleValue(String exampleValue) => _$this._exampleValue = exampleValue;

  ExampleClassBuilder();

  ExampleClassBuilder get _$this {
    if (_$v != null) {
      _exampleValue = _$v.exampleValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExampleClass other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExampleClass;
  }

  @override
  void update(void Function(ExampleClassBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExampleClass build() {
    final _$result = _$v ?? new _$ExampleClass._(exampleValue: exampleValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
