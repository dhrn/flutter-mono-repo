//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:api_client/model/action_definition.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action_definition_list_list.g.dart';

abstract class ActionDefinitionListList implements Built<ActionDefinitionListList, ActionDefinitionListListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<ActionDefinition> get entries;

  // Boilerplate code needed to wire-up generated code
  ActionDefinitionListList._();

  static void _initializeBuilder(ActionDefinitionListListBuilder b) => b;

  factory ActionDefinitionListList([void updates(ActionDefinitionListListBuilder b)]) = _$ActionDefinitionListList;
  static Serializer<ActionDefinitionListList> get serializer => _$actionDefinitionListListSerializer;
}
