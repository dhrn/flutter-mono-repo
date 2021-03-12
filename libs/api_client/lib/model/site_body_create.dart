//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_body_create.g.dart';

abstract class SiteBodyCreate implements Built<SiteBodyCreate, SiteBodyCreateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'description')
  String get description;

  @nullable
  @BuiltValueField(wireName: r'visibility')
  SiteBodyCreateVisibilityEnum get visibility;
  // enum visibilityEnum {  PUBLIC,  PRIVATE,  MODERATED,  };

  // Boilerplate code needed to wire-up generated code
  SiteBodyCreate._();

  static void _initializeBuilder(SiteBodyCreateBuilder b) =>
      b..visibility = const SiteBodyCreateVisibilityEnum._('PUBLIC');

  factory SiteBodyCreate([void updates(SiteBodyCreateBuilder b)]) = _$SiteBodyCreate;
  static Serializer<SiteBodyCreate> get serializer => _$siteBodyCreateSerializer;
}

class SiteBodyCreateVisibilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PUBLIC')
  static const SiteBodyCreateVisibilityEnum PUBLIC = _$siteBodyCreateVisibilityEnum_PUBLIC;
  @BuiltValueEnumConst(wireName: r'PRIVATE')
  static const SiteBodyCreateVisibilityEnum PRIVATE = _$siteBodyCreateVisibilityEnum_PRIVATE;
  @BuiltValueEnumConst(wireName: r'MODERATED')
  static const SiteBodyCreateVisibilityEnum MODERATED = _$siteBodyCreateVisibilityEnum_MODERATED;

  static Serializer<SiteBodyCreateVisibilityEnum> get serializer => _$siteBodyCreateVisibilityEnumSerializer;

  const SiteBodyCreateVisibilityEnum._(String name) : super(name);

  static BuiltSet<SiteBodyCreateVisibilityEnum> get values => _$siteBodyCreateVisibilityEnumValues;
  static SiteBodyCreateVisibilityEnum valueOf(String name) => _$siteBodyCreateVisibilityEnumValueOf(name);
}
