//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/shared_link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shared_link_entry.g.dart';

abstract class SharedLinkEntry implements Built<SharedLinkEntry, SharedLinkEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  SharedLink get entry;

  // Boilerplate code needed to wire-up generated code
  SharedLinkEntry._();

  static void _initializeBuilder(SharedLinkEntryBuilder b) => b;

  factory SharedLinkEntry([void updates(SharedLinkEntryBuilder b)]) = _$SharedLinkEntry;
  static Serializer<SharedLinkEntry> get serializer => _$sharedLinkEntrySerializer;
}
