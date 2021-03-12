//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rendition_body_create.g.dart';

abstract class RenditionBodyCreate implements Built<RenditionBodyCreate, RenditionBodyCreateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  // Boilerplate code needed to wire-up generated code
  RenditionBodyCreate._();

  static void _initializeBuilder(RenditionBodyCreateBuilder b) => b;

  factory RenditionBodyCreate([void updates(RenditionBodyCreateBuilder b)]) = _$RenditionBodyCreate;
  static Serializer<RenditionBodyCreate> get serializer => _$renditionBodyCreateSerializer;
}
