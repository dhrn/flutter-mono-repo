//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/node_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'node_paging.g.dart';

abstract class NodePaging implements Built<NodePaging, NodePagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  NodePagingList get list;

  // Boilerplate code needed to wire-up generated code
  NodePaging._();

  static void _initializeBuilder(NodePagingBuilder b) => b;

  factory NodePaging([void updates(NodePagingBuilder b)]) = _$NodePaging;
  static Serializer<NodePaging> get serializer => _$nodePagingSerializer;
}
