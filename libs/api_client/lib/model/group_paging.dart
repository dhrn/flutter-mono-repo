//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/group_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_paging.g.dart';

abstract class GroupPaging implements Built<GroupPaging, GroupPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  GroupPagingList get list;

  // Boilerplate code needed to wire-up generated code
  GroupPaging._();

  static void _initializeBuilder(GroupPagingBuilder b) => b;

  factory GroupPaging([void updates(GroupPagingBuilder b)]) = _$GroupPaging;
  static Serializer<GroupPaging> get serializer => _$groupPagingSerializer;
}
