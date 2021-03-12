//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_body.g.dart';

abstract class TagBody implements Built<TagBody, TagBodyBuilder> {
  @nullable
  @BuiltValueField(wireName: r'tag')
  String get tag;

  // Boilerplate code needed to wire-up generated code
  TagBody._();

  static void _initializeBuilder(TagBodyBuilder b) => b;

  factory TagBody([void updates(TagBodyBuilder b)]) = _$TagBody;
  static Serializer<TagBody> get serializer => _$tagBodySerializer;
}
