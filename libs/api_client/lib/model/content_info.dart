//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'content_info.g.dart';

abstract class ContentInfo implements Built<ContentInfo, ContentInfoBuilder> {
  @nullable
  @BuiltValueField(wireName: r'mimeType')
  String get mimeType;

  @nullable
  @BuiltValueField(wireName: r'mimeTypeName')
  String get mimeTypeName;

  @nullable
  @BuiltValueField(wireName: r'sizeInBytes')
  int get sizeInBytes;

  @nullable
  @BuiltValueField(wireName: r'encoding')
  String get encoding;

  // Boilerplate code needed to wire-up generated code
  ContentInfo._();

  static void _initializeBuilder(ContentInfoBuilder b) => b;

  factory ContentInfo([void updates(ContentInfoBuilder b)]) = _$ContentInfo;
  static Serializer<ContentInfo> get serializer => _$contentInfoSerializer;
}
