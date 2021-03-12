//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:api_client/model/content_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rendition.g.dart';

abstract class Rendition implements Built<Rendition, RenditionBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'content')
  ContentInfo get content;

  @nullable
  @BuiltValueField(wireName: r'status')
  RenditionStatusEnum get status;
  // enum statusEnum {  CREATED,  NOT_CREATED,  };

  // Boilerplate code needed to wire-up generated code
  Rendition._();

  static void _initializeBuilder(RenditionBuilder b) => b;

  factory Rendition([void updates(RenditionBuilder b)]) = _$Rendition;
  static Serializer<Rendition> get serializer => _$renditionSerializer;
}

class RenditionStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CREATED')
  static const RenditionStatusEnum CREATED = _$renditionStatusEnum_CREATED;
  @BuiltValueEnumConst(wireName: r'NOT_CREATED')
  static const RenditionStatusEnum NOT_CREATED = _$renditionStatusEnum_NOT_CREATED;

  static Serializer<RenditionStatusEnum> get serializer => _$renditionStatusEnumSerializer;

  const RenditionStatusEnum._(String name) : super(name);

  static BuiltSet<RenditionStatusEnum> get values => _$renditionStatusEnumValues;
  static RenditionStatusEnum valueOf(String name) => _$renditionStatusEnumValueOf(name);
}
