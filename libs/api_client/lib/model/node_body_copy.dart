//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_body_copy.g.dart';

abstract class NodeBodyCopy implements Built<NodeBodyCopy, NodeBodyCopyBuilder> {
  @nullable
  @BuiltValueField(wireName: r'targetParentId')
  String get targetParentId;

  /// The name must not contain spaces or the following special characters: * \" < > \\ / ? : and |. The character . must not be used at the end of the name.
  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  // Boilerplate code needed to wire-up generated code
  NodeBodyCopy._();

  static void _initializeBuilder(NodeBodyCopyBuilder b) => b;

  factory NodeBodyCopy([void updates(NodeBodyCopyBuilder b)]) = _$NodeBodyCopy;
  static Serializer<NodeBodyCopy> get serializer => _$nodeBodyCopySerializer;
}
