//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/group_member.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_member_entry.g.dart';

abstract class GroupMemberEntry implements Built<GroupMemberEntry, GroupMemberEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  GroupMember get entry;

  // Boilerplate code needed to wire-up generated code
  GroupMemberEntry._();

  static void _initializeBuilder(GroupMemberEntryBuilder b) => b;

  factory GroupMemberEntry([void updates(GroupMemberEntryBuilder b)]) = _$GroupMemberEntry;
  static Serializer<GroupMemberEntry> get serializer => _$groupMemberEntrySerializer;
}
