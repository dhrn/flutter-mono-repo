//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_body_update.g.dart';

abstract class SiteBodyUpdate implements Built<SiteBodyUpdate, SiteBodyUpdateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'description')
  String get description;

  @nullable
  @BuiltValueField(wireName: r'visibility')
  SiteBodyUpdateVisibilityEnum get visibility;
  // enum visibilityEnum {  PRIVATE,  MODERATED,  PUBLIC,  };

  // Boilerplate code needed to wire-up generated code
  SiteBodyUpdate._();

  static void _initializeBuilder(SiteBodyUpdateBuilder b) => b;

  factory SiteBodyUpdate([void updates(SiteBodyUpdateBuilder b)]) = _$SiteBodyUpdate;
  static Serializer<SiteBodyUpdate> get serializer => _$siteBodyUpdateSerializer;
}

class SiteBodyUpdateVisibilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PRIVATE')
  static const SiteBodyUpdateVisibilityEnum PRIVATE = _$siteBodyUpdateVisibilityEnum_PRIVATE;
  @BuiltValueEnumConst(wireName: r'MODERATED')
  static const SiteBodyUpdateVisibilityEnum MODERATED = _$siteBodyUpdateVisibilityEnum_MODERATED;
  @BuiltValueEnumConst(wireName: r'PUBLIC')
  static const SiteBodyUpdateVisibilityEnum PUBLIC = _$siteBodyUpdateVisibilityEnum_PUBLIC;

  static Serializer<SiteBodyUpdateVisibilityEnum> get serializer => _$siteBodyUpdateVisibilityEnumSerializer;

  const SiteBodyUpdateVisibilityEnum._(String name) : super(name);

  static BuiltSet<SiteBodyUpdateVisibilityEnum> get values => _$siteBodyUpdateVisibilityEnumValues;
  static SiteBodyUpdateVisibilityEnum valueOf(String name) => _$siteBodyUpdateVisibilityEnumValueOf(name);
}
