//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/site_container.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_container_entry.g.dart';

abstract class SiteContainerEntry implements Built<SiteContainerEntry, SiteContainerEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  SiteContainer get entry;

  // Boilerplate code needed to wire-up generated code
  SiteContainerEntry._();

  static void _initializeBuilder(SiteContainerEntryBuilder b) => b;

  factory SiteContainerEntry([void updates(SiteContainerEntryBuilder b)]) = _$SiteContainerEntry;
  static Serializer<SiteContainerEntry> get serializer => _$siteContainerEntrySerializer;
}
