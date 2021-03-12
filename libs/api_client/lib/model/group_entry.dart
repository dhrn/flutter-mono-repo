//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_entry.g.dart';

abstract class GroupEntry implements Built<GroupEntry, GroupEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Group get entry;

  // Boilerplate code needed to wire-up generated code
  GroupEntry._();

  static void _initializeBuilder(GroupEntryBuilder b) => b;

  factory GroupEntry([void updates(GroupEntryBuilder b)]) = _$GroupEntry;
  static Serializer<GroupEntry> get serializer => _$groupEntrySerializer;
}
