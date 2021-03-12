//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/group_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_paging_list.g.dart';

abstract class GroupPagingList implements Built<GroupPagingList, GroupPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<GroupEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  GroupPagingList._();

  static void _initializeBuilder(GroupPagingListBuilder b) => b;

  factory GroupPagingList([void updates(GroupPagingListBuilder b)]) = _$GroupPagingList;
  static Serializer<GroupPagingList> get serializer => _$groupPagingListSerializer;
}
