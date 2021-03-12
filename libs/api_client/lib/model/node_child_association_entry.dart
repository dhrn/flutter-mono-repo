//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/node_child_association.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_child_association_entry.g.dart';

abstract class NodeChildAssociationEntry implements Built<NodeChildAssociationEntry, NodeChildAssociationEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  NodeChildAssociation get entry;

  // Boilerplate code needed to wire-up generated code
  NodeChildAssociationEntry._();

  static void _initializeBuilder(NodeChildAssociationEntryBuilder b) => b;

  factory NodeChildAssociationEntry([void updates(NodeChildAssociationEntryBuilder b)]) = _$NodeChildAssociationEntry;
  static Serializer<NodeChildAssociationEntry> get serializer => _$nodeChildAssociationEntrySerializer;
}
