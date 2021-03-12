//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/node.dart';
import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/node_child_association_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_child_association_paging_list.g.dart';

abstract class NodeChildAssociationPagingList
    implements Built<NodeChildAssociationPagingList, NodeChildAssociationPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<NodeChildAssociationEntry> get entries;

  @nullable
  @BuiltValueField(wireName: r'source')
  Node get source_;

  // Boilerplate code needed to wire-up generated code
  NodeChildAssociationPagingList._();

  static void _initializeBuilder(NodeChildAssociationPagingListBuilder b) => b;

  factory NodeChildAssociationPagingList([void updates(NodeChildAssociationPagingListBuilder b)]) =
      _$NodeChildAssociationPagingList;
  static Serializer<NodeChildAssociationPagingList> get serializer => _$nodeChildAssociationPagingListSerializer;
}
