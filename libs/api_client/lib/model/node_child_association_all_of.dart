//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/child_association_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_child_association_all_of.g.dart';

abstract class NodeChildAssociationAllOf implements Built<NodeChildAssociationAllOf, NodeChildAssociationAllOfBuilder> {
  @nullable
  @BuiltValueField(wireName: r'association')
  ChildAssociationInfo get association;

  // Boilerplate code needed to wire-up generated code
  NodeChildAssociationAllOf._();

  static void _initializeBuilder(NodeChildAssociationAllOfBuilder b) => b;

  factory NodeChildAssociationAllOf([void updates(NodeChildAssociationAllOfBuilder b)]) = _$NodeChildAssociationAllOf;
  static Serializer<NodeChildAssociationAllOf> get serializer => _$nodeChildAssociationAllOfSerializer;
}
