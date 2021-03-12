//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/deleted_node.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deleted_node_entry.g.dart';

abstract class DeletedNodeEntry implements Built<DeletedNodeEntry, DeletedNodeEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  DeletedNode get entry;

  // Boilerplate code needed to wire-up generated code
  DeletedNodeEntry._();

  static void _initializeBuilder(DeletedNodeEntryBuilder b) => b;

  factory DeletedNodeEntry([void updates(DeletedNodeEntryBuilder b)]) = _$DeletedNodeEntry;
  static Serializer<DeletedNodeEntry> get serializer => _$deletedNodeEntrySerializer;
}
