//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/group_member_paging_list.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_member_paging.g.dart';

abstract class GroupMemberPaging implements Built<GroupMemberPaging, GroupMemberPagingBuilder> {
  @nullable
  @BuiltValueField(wireName: r'list')
  GroupMemberPagingList get list;

  // Boilerplate code needed to wire-up generated code
  GroupMemberPaging._();

  static void _initializeBuilder(GroupMemberPagingBuilder b) => b;

  factory GroupMemberPaging([void updates(GroupMemberPagingBuilder b)]) = _$GroupMemberPaging;
  static Serializer<GroupMemberPaging> get serializer => _$groupMemberPagingSerializer;
}
