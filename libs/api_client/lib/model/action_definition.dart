//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/action_parameter_definition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action_definition.g.dart';

abstract class ActionDefinition implements Built<ActionDefinition, ActionDefinitionBuilder> {
  /// Identifier of the action definition — used for example when executing an action
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  /// name of the action definition, e.g. \"move\"
  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  /// title of the action definition, e.g. \"Move\"
  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  /// describes the action definition, e.g. \"This will move the matched item to another space.\"
  @nullable
  @BuiltValueField(wireName: r'description')
  String get description;

  /// QNames of the types this action applies to
  @nullable
  @BuiltValueField(wireName: r'applicableTypes')
  BuiltList<String> get applicableTypes;

  /// whether the basic action definition supports action tracking or not
  @nullable
  @BuiltValueField(wireName: r'trackStatus')
  bool get trackStatus;

  @nullable
  @BuiltValueField(wireName: r'parameterDefinitions')
  BuiltList<ActionParameterDefinition> get parameterDefinitions;

  // Boilerplate code needed to wire-up generated code
  ActionDefinition._();

  static void _initializeBuilder(ActionDefinitionBuilder b) => b;

  factory ActionDefinition([void updates(ActionDefinitionBuilder b)]) = _$ActionDefinition;
  static Serializer<ActionDefinition> get serializer => _$actionDefinitionSerializer;
}
