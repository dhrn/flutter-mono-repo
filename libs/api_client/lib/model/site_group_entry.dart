//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_group_entry.g.dart';

abstract class SiteGroupEntry implements Built<SiteGroupEntry, SiteGroupEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  SiteGroup get entry;

  // Boilerplate code needed to wire-up generated code
  SiteGroupEntry._();

  static void _initializeBuilder(SiteGroupEntryBuilder b) => b;

  factory SiteGroupEntry([void updates(SiteGroupEntryBuilder b)]) = _$SiteGroupEntry;
  static Serializer<SiteGroupEntry> get serializer => _$siteGroupEntrySerializer;
}
