//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/deleted_nodes_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deleted_nodes_paging.g.dart';

abstract class DeletedNodesPaging implements Built<DeletedNodesPaging, DeletedNodesPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  DeletedNodesPagingList get list;

  // Boilerplate code needed to wire-up generated code
  DeletedNodesPaging._();

  static void _initializeBuilder(DeletedNodesPagingBuilder b) => b;

  factory DeletedNodesPaging([void updates(DeletedNodesPagingBuilder b)]) = _$DeletedNodesPaging;
  static Serializer<DeletedNodesPaging> get serializer => _$deletedNodesPagingSerializer;
}
