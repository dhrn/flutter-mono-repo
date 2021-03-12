//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/rendition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rendition_entry.g.dart';

abstract class RenditionEntry implements Built<RenditionEntry, RenditionEntryBuilder> {
  @nullable
  @BuiltValueField(wireName: r'entry')
  Rendition get entry;

  // Boilerplate code needed to wire-up generated code
  RenditionEntry._();

  static void _initializeBuilder(RenditionEntryBuilder b) => b;

  factory RenditionEntry([void updates(RenditionEntryBuilder b)]) = _$RenditionEntry;
  static Serializer<RenditionEntry> get serializer => _$renditionEntrySerializer;
}
