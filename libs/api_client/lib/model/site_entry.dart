//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_entry.g.dart';

abstract class SiteEntry implements Built<SiteEntry, SiteEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Site get entry;

  // Boilerplate code needed to wire-up generated code
  SiteEntry._();

  static void _initializeBuilder(SiteEntryBuilder b) => b;

  factory SiteEntry([void updates(SiteEntryBuilder b)]) = _$SiteEntry;
  static Serializer<SiteEntry> get serializer => _$siteEntrySerializer;
}
