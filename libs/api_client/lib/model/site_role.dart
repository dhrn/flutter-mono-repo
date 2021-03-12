//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/site.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_role.g.dart';

abstract class SiteRole implements Built<SiteRole, SiteRoleBuilder> {
  @nullable
  @BuiltValueField(wireName: r'site')
  Site get site;

  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'guid')
  String get guid;

  @nullable
  @BuiltValueField(wireName: r'role')
  SiteRoleRoleEnum get role;
  // enum roleEnum {  SiteConsumer,  SiteCollaborator,  SiteContributor,  SiteManager,  };

  // Boilerplate code needed to wire-up generated code
  SiteRole._();

  static void _initializeBuilder(SiteRoleBuilder b) => b;

  factory SiteRole([void updates(SiteRoleBuilder b)]) = _$SiteRole;
  static Serializer<SiteRole> get serializer => _$siteRoleSerializer;
}

class SiteRoleRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SiteConsumer')
  static const SiteRoleRoleEnum siteConsumer = _$siteRoleRoleEnum_siteConsumer;
  @BuiltValueEnumConst(wireName: r'SiteCollaborator')
  static const SiteRoleRoleEnum siteCollaborator = _$siteRoleRoleEnum_siteCollaborator;
  @BuiltValueEnumConst(wireName: r'SiteContributor')
  static const SiteRoleRoleEnum siteContributor = _$siteRoleRoleEnum_siteContributor;
  @BuiltValueEnumConst(wireName: r'SiteManager')
  static const SiteRoleRoleEnum siteManager = _$siteRoleRoleEnum_siteManager;

  static Serializer<SiteRoleRoleEnum> get serializer => _$siteRoleRoleEnumSerializer;

  const SiteRoleRoleEnum._(String name) : super(name);

  static BuiltSet<SiteRoleRoleEnum> get values => _$siteRoleRoleEnumValues;
  static SiteRoleRoleEnum valueOf(String name) => _$siteRoleRoleEnumValueOf(name);
}
