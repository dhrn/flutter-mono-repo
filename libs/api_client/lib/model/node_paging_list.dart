//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/node.dart';
import 'package:api_client/model/node_entry.dart';
import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_paging_list.g.dart';

abstract class NodePagingList implements Built<NodePagingList, NodePagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<NodeEntry> get entries;

  @nullable
  @BuiltValueField(wireName: r'source')
  Node get source_;

  // Boilerplate code needed to wire-up generated code
  NodePagingList._();

  static void _initializeBuilder(NodePagingListBuilder b) => b;

  factory NodePagingList([void updates(NodePagingListBuilder b)]) = _$NodePagingList;
  static Serializer<NodePagingList> get serializer => _$nodePagingListSerializer;
}
