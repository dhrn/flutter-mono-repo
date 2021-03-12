//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'version_entry.g.dart';

abstract class VersionEntry implements Built<VersionEntry, VersionEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Version get entry;

  // Boilerplate code needed to wire-up generated code
  VersionEntry._();

  static void _initializeBuilder(VersionEntryBuilder b) => b;

  factory VersionEntry([void updates(VersionEntryBuilder b)]) = _$VersionEntry;
  static Serializer<VersionEntry> get serializer => _$versionEntrySerializer;
}
