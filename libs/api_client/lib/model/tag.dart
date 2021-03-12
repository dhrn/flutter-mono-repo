//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag.g.dart';

abstract class Tag implements Built<Tag, TagBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'tag')
  String get tag;

  @nullable
  @BuiltValueField(wireName: r'count')
  num get count;

  // Boilerplate code needed to wire-up generated code
  Tag._();

  static void _initializeBuilder(TagBuilder b) => b;

  factory Tag([void updates(TagBuilder b)]) = _$Tag;
  static Serializer<Tag> get serializer => _$tagSerializer;
}
