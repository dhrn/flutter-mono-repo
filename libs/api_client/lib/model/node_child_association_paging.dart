//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/node_child_association_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_child_association_paging.g.dart';

abstract class NodeChildAssociationPaging
    implements Built<NodeChildAssociationPaging, NodeChildAssociationPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  NodeChildAssociationPagingList get list;

  // Boilerplate code needed to wire-up generated code
  NodeChildAssociationPaging._();

  static void _initializeBuilder(NodeChildAssociationPagingBuilder b) => b;

  factory NodeChildAssociationPaging([void updates(NodeChildAssociationPagingBuilder b)]) =
      _$NodeChildAssociationPaging;
  static Serializer<NodeChildAssociationPaging> get serializer => _$nodeChildAssociationPagingSerializer;
}
