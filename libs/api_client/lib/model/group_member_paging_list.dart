//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/pagination.dart';
import 'package:api_client/model/group_member_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_member_paging_list.g.dart';

abstract class GroupMemberPagingList implements Built<GroupMemberPagingList, GroupMemberPagingListBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pagination')
  Pagination get pagination;

  @nullable
  @BuiltValueField(wireName: r'entries')
  BuiltList<GroupMemberEntry> get entries;

  // Boilerplate code needed to wire-up generated code
  GroupMemberPagingList._();

  static void _initializeBuilder(GroupMemberPagingListBuilder b) => b;

  factory GroupMemberPagingList([void updates(GroupMemberPagingListBuilder b)]) = _$GroupMemberPagingList;
  static Serializer<GroupMemberPagingList> get serializer => _$groupMemberPagingListSerializer;
}
