//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action_parameter_definition.g.dart';

abstract class ActionParameterDefinition implements Built<ActionParameterDefinition, ActionParameterDefinitionBuilder> {
  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: r'type')
  String get type;

  @nullable
  @BuiltValueField(wireName: r'multiValued')
  bool get multiValued;

  @nullable
  @BuiltValueField(wireName: r'mandatory')
  bool get mandatory;

  @nullable
  @BuiltValueField(wireName: r'displayLabel')
  String get displayLabel;

  // Boilerplate code needed to wire-up generated code
  ActionParameterDefinition._();

  static void _initializeBuilder(ActionParameterDefinitionBuilder b) => b;

  factory ActionParameterDefinition([void updates(ActionParameterDefinitionBuilder b)]) = _$ActionParameterDefinition;
  static Serializer<ActionParameterDefinition> get serializer => _$actionParameterDefinitionSerializer;
}
