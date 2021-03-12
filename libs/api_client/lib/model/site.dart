//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site.g.dart';

abstract class Site implements Built<Site, SiteBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'guid')
  String get guid;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'description')
  String get description;

  @nullable
  @BuiltValueField(wireName: r'visibility')
  SiteVisibilityEnum get visibility;
  // enum visibilityEnum {  PRIVATE,  MODERATED,  PUBLIC,  };

  @nullable
  @BuiltValueField(wireName: r'preset')
  String get preset;

  @nullable
  @BuiltValueField(wireName: r'role')
  SiteRoleEnum get role;
  // enum roleEnum {  SiteConsumer,  SiteCollaborator,  SiteContributor,  SiteManager,  };

  // Boilerplate code needed to wire-up generated code
  Site._();

  static void _initializeBuilder(SiteBuilder b) => b;

  factory Site([void updates(SiteBuilder b)]) = _$Site;
  static Serializer<Site> get serializer => _$siteSerializer;
}

class SiteVisibilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PRIVATE')
  static const SiteVisibilityEnum PRIVATE = _$siteVisibilityEnum_PRIVATE;
  @BuiltValueEnumConst(wireName: r'MODERATED')
  static const SiteVisibilityEnum MODERATED = _$siteVisibilityEnum_MODERATED;
  @BuiltValueEnumConst(wireName: r'PUBLIC')
  static const SiteVisibilityEnum PUBLIC = _$siteVisibilityEnum_PUBLIC;

  static Serializer<SiteVisibilityEnum> get serializer => _$siteVisibilityEnumSerializer;

  const SiteVisibilityEnum._(String name) : super(name);

  static BuiltSet<SiteVisibilityEnum> get values => _$siteVisibilityEnumValues;
  static SiteVisibilityEnum valueOf(String name) => _$siteVisibilityEnumValueOf(name);
}

class SiteRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SiteConsumer')
  static const SiteRoleEnum siteConsumer = _$siteRoleEnum_siteConsumer;
  @BuiltValueEnumConst(wireName: r'SiteCollaborator')
  static const SiteRoleEnum siteCollaborator = _$siteRoleEnum_siteCollaborator;
  @BuiltValueEnumConst(wireName: r'SiteContributor')
  static const SiteRoleEnum siteContributor = _$siteRoleEnum_siteContributor;
  @BuiltValueEnumConst(wireName: r'SiteManager')
  static const SiteRoleEnum siteManager = _$siteRoleEnum_siteManager;

  static Serializer<SiteRoleEnum> get serializer => _$siteRoleEnumSerializer;

  const SiteRoleEnum._(String name) : super(name);

  static BuiltSet<SiteRoleEnum> get values => _$siteRoleEnumValues;
  static SiteRoleEnum valueOf(String name) => _$siteRoleEnumValueOf(name);
}
