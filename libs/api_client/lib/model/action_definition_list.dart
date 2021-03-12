//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/action_definition_list_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action_definition_list.g.dart';

abstract class ActionDefinitionList implements Built<ActionDefinitionList, ActionDefinitionListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  ActionDefinitionListList get list;

  // Boilerplate code needed to wire-up generated code
  ActionDefinitionList._();

  static void _initializeBuilder(ActionDefinitionListBuilder b) => b;

  factory ActionDefinitionList([void updates(ActionDefinitionListBuilder b)]) = _$ActionDefinitionList;
  static Serializer<ActionDefinitionList> get serializer => _$actionDefinitionListSerializer;
}
