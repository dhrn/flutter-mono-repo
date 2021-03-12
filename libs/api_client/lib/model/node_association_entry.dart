//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/node_association.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_association_entry.g.dart';

abstract class NodeAssociationEntry implements Built<NodeAssociationEntry, NodeAssociationEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  NodeAssociation get entry;

  // Boilerplate code needed to wire-up generated code
  NodeAssociationEntry._();

  static void _initializeBuilder(NodeAssociationEntryBuilder b) => b;

  factory NodeAssociationEntry([void updates(NodeAssociationEntryBuilder b)]) = _$NodeAssociationEntry;
  static Serializer<NodeAssociationEntry> get serializer => _$nodeAssociationEntrySerializer;
}
