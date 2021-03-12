//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_body_create.g.dart';

abstract class SiteMembershipBodyCreate implements Built<SiteMembershipBodyCreate, SiteMembershipBodyCreateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'role')
  SiteMembershipBodyCreateRoleEnum get role;
  // enum roleEnum {  SiteConsumer,  SiteCollaborator,  SiteContributor,  SiteManager,  };

  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  // Boilerplate code needed to wire-up generated code
  SiteMembershipBodyCreate._();

  static void _initializeBuilder(SiteMembershipBodyCreateBuilder b) => b;

  factory SiteMembershipBodyCreate([void updates(SiteMembershipBodyCreateBuilder b)]) = _$SiteMembershipBodyCreate;
  static Serializer<SiteMembershipBodyCreate> get serializer => _$siteMembershipBodyCreateSerializer;
}

class SiteMembershipBodyCreateRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SiteConsumer')
  static const SiteMembershipBodyCreateRoleEnum siteConsumer = _$siteMembershipBodyCreateRoleEnum_siteConsumer;
  @BuiltValueEnumConst(wireName: r'SiteCollaborator')
  static const SiteMembershipBodyCreateRoleEnum siteCollaborator = _$siteMembershipBodyCreateRoleEnum_siteCollaborator;
  @BuiltValueEnumConst(wireName: r'SiteContributor')
  static const SiteMembershipBodyCreateRoleEnum siteContributor = _$siteMembershipBodyCreateRoleEnum_siteContributor;
  @BuiltValueEnumConst(wireName: r'SiteManager')
  static const SiteMembershipBodyCreateRoleEnum siteManager = _$siteMembershipBodyCreateRoleEnum_siteManager;

  static Serializer<SiteMembershipBodyCreateRoleEnum> get serializer => _$siteMembershipBodyCreateRoleEnumSerializer;

  const SiteMembershipBodyCreateRoleEnum._(String name) : super(name);

  static BuiltSet<SiteMembershipBodyCreateRoleEnum> get values => _$siteMembershipBodyCreateRoleEnumValues;
  static SiteMembershipBodyCreateRoleEnum valueOf(String name) => _$siteMembershipBodyCreateRoleEnumValueOf(name);
}
