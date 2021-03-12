//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_body_move.g.dart';

abstract class NodeBodyMove implements Built<NodeBodyMove, NodeBodyMoveBuilder> {
  @nullable
  @BuiltValueField(wireName: r'targetParentId')
  String get targetParentId;

  /// The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character . must not be used at the end of the name.
  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  // Boilerplate code needed to wire-up generated code
  NodeBodyMove._();

  static void _initializeBuilder(NodeBodyMoveBuilder b) => b;

  factory NodeBodyMove([void updates(NodeBodyMoveBuilder b)]) = _$NodeBodyMove;
  static Serializer<NodeBodyMove> get serializer => _$nodeBodyMoveSerializer;
}
