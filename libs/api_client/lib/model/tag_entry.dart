//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/tag.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_entry.g.dart';

abstract class TagEntry implements Built<TagEntry, TagEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Tag get entry;

  // Boilerplate code needed to wire-up generated code
  TagEntry._();

  static void _initializeBuilder(TagEntryBuilder b) => b;

  factory TagEntry([void updates(TagEntryBuilder b)]) = _$TagEntry;
  static Serializer<TagEntry> get serializer => _$tagEntrySerializer;
}
