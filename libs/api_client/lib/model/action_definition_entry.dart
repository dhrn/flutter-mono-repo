//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/action_definition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action_definition_entry.g.dart';

abstract class ActionDefinitionEntry implements Built<ActionDefinitionEntry, ActionDefinitionEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  ActionDefinition get entry;

  // Boilerplate code needed to wire-up generated code
  ActionDefinitionEntry._();

  static void _initializeBuilder(ActionDefinitionEntryBuilder b) => b;

  factory ActionDefinitionEntry([void updates(ActionDefinitionEntryBuilder b)]) = _$ActionDefinitionEntry;
  static Serializer<ActionDefinitionEntry> get serializer => _$actionDefinitionEntrySerializer;
}
