//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/node_association_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_association_paging.g.dart';

abstract class NodeAssociationPaging implements Built<NodeAssociationPaging, NodeAssociationPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  NodeAssociationPagingList get list;

  // Boilerplate code needed to wire-up generated code
  NodeAssociationPaging._();

  static void _initializeBuilder(NodeAssociationPagingBuilder b) => b;

  factory NodeAssociationPaging([void updates(NodeAssociationPagingBuilder b)]) = _$NodeAssociationPaging;
  static Serializer<NodeAssociationPaging> get serializer => _$nodeAssociationPagingSerializer;
}
