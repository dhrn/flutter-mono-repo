//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_body_create_association.g.dart';

abstract class NodeBodyCreateAssociation implements Built<NodeBodyCreateAssociation, NodeBodyCreateAssociationBuilder> {
  @nullable
  @BuiltValueField(wireName: r'assocType')
  String get assocType;

  // Boilerplate code needed to wire-up generated code
  NodeBodyCreateAssociation._();

  static void _initializeBuilder(NodeBodyCreateAssociationBuilder b) => b;

  factory NodeBodyCreateAssociation([void updates(NodeBodyCreateAssociationBuilder b)]) = _$NodeBodyCreateAssociation;
  static Serializer<NodeBodyCreateAssociation> get serializer => _$nodeBodyCreateAssociationSerializer;
}
