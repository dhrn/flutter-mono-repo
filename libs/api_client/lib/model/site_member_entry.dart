//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_member.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_member_entry.g.dart';

abstract class SiteMemberEntry implements Built<SiteMemberEntry, SiteMemberEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  SiteMember get entry;

  // Boilerplate code needed to wire-up generated code
  SiteMemberEntry._();

  static void _initializeBuilder(SiteMemberEntryBuilder b) => b;

  factory SiteMemberEntry([void updates(SiteMemberEntryBuilder b)]) = _$SiteMemberEntry;
  static Serializer<SiteMemberEntry> get serializer => _$siteMemberEntrySerializer;
}
