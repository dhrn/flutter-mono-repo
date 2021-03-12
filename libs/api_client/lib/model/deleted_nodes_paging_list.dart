//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/deleted_node_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deleted_nodes_paging_list.g.dart';

abstract class DeletedNodesPagingList implements Built<DeletedNodesPagingList, DeletedNodesPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<DeletedNodeEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  DeletedNodesPagingList._();

  static void _initializeBuilder(DeletedNodesPagingListBuilder b) => b;

  factory DeletedNodesPagingList([void updates(DeletedNodesPagingListBuilder b)]) = _$DeletedNodesPagingList;
  static Serializer<DeletedNodesPagingList> get serializer => _$deletedNodesPagingListSerializer;
}
