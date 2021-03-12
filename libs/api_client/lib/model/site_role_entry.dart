//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_role_entry.g.dart';

abstract class SiteRoleEntry implements Built<SiteRoleEntry, SiteRoleEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  SiteRole get entry;

  // Boilerplate code needed to wire-up generated code
  SiteRoleEntry._();

  static void _initializeBuilder(SiteRoleEntryBuilder b) => b;

  factory SiteRoleEntry([void updates(SiteRoleEntryBuilder b)]) = _$SiteRoleEntry;
  static Serializer<SiteRoleEntry> get serializer => _$siteRoleEntrySerializer;
}
