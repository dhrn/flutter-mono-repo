//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/node.dart';
import 'package:api_client/model/node_association_entry.dart';
import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_association_paging_list.g.dart';

abstract class NodeAssociationPagingList implements Built<NodeAssociationPagingList, NodeAssociationPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<NodeAssociationEntry> get entries;

  @nullable
  @BuiltValueField(wireName: r'source')
  Node get source_;

  // Boilerplate code needed to wire-up generated code
  NodeAssociationPagingList._();

  static void _initializeBuilder(NodeAssociationPagingListBuilder b) => b;

  factory NodeAssociationPagingList([void updates(NodeAssociationPagingListBuilder b)]) = _$NodeAssociationPagingList;
  static Serializer<NodeAssociationPagingList> get serializer => _$nodeAssociationPagingListSerializer;
}
