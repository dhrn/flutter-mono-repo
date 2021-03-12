//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/association_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_association_all_of.g.dart';

abstract class NodeAssociationAllOf implements Built<NodeAssociationAllOf, NodeAssociationAllOfBuilder> {
  @nullable
  @BuiltValueField(wireName: r'association')
  AssociationInfo get association;

  // Boilerplate code needed to wire-up generated code
  NodeAssociationAllOf._();

  static void _initializeBuilder(NodeAssociationAllOfBuilder b) => b;

  factory NodeAssociationAllOf([void updates(NodeAssociationAllOfBuilder b)]) = _$NodeAssociationAllOf;
  static Serializer<NodeAssociationAllOf> get serializer => _$nodeAssociationAllOfSerializer;
}
