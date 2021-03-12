//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/direct_access_url.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'direct_access_url_entry.g.dart';

abstract class DirectAccessUrlEntry implements Built<DirectAccessUrlEntry, DirectAccessUrlEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  DirectAccessUrl get entry;

  // Boilerplate code needed to wire-up generated code
  DirectAccessUrlEntry._();

  static void _initializeBuilder(DirectAccessUrlEntryBuilder b) => b;

  factory DirectAccessUrlEntry([void updates(DirectAccessUrlEntryBuilder b)]) = _$DirectAccessUrlEntry;
  static Serializer<DirectAccessUrlEntry> get serializer => _$directAccessUrlEntrySerializer;
}
