//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/node.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_entry.g.dart';

abstract class NodeEntry implements Built<NodeEntry, NodeEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Node get entry;

  // Boilerplate code needed to wire-up generated code
  NodeEntry._();

  static void _initializeBuilder(NodeEntryBuilder b) => b;

  factory NodeEntry([void updates(NodeEntryBuilder b)]) = _$NodeEntry;
  static Serializer<NodeEntry> get serializer => _$nodeEntrySerializer;
}
