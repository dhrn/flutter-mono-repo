//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_membership_body_update.g.dart';

abstract class SiteMembershipBodyUpdate implements Built<SiteMembershipBodyUpdate, SiteMembershipBodyUpdateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'role')
  SiteMembershipBodyUpdateRoleEnum get role;
  // enum roleEnum {  SiteConsumer,  SiteCollaborator,  SiteContributor,  SiteManager,  };

  // Boilerplate code needed to wire-up generated code
  SiteMembershipBodyUpdate._();

  static void _initializeBuilder(SiteMembershipBodyUpdateBuilder b) => b;

  factory SiteMembershipBodyUpdate([void updates(SiteMembershipBodyUpdateBuilder b)]) = _$SiteMembershipBodyUpdate;
  static Serializer<SiteMembershipBodyUpdate> get serializer => _$siteMembershipBodyUpdateSerializer;
}

class SiteMembershipBodyUpdateRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SiteConsumer')
  static const SiteMembershipBodyUpdateRoleEnum siteConsumer = _$siteMembershipBodyUpdateRoleEnum_siteConsumer;
  @BuiltValueEnumConst(wireName: r'SiteCollaborator')
  static const SiteMembershipBodyUpdateRoleEnum siteCollaborator = _$siteMembershipBodyUpdateRoleEnum_siteCollaborator;
  @BuiltValueEnumConst(wireName: r'SiteContributor')
  static const SiteMembershipBodyUpdateRoleEnum siteContributor = _$siteMembershipBodyUpdateRoleEnum_siteContributor;
  @BuiltValueEnumConst(wireName: r'SiteManager')
  static const SiteMembershipBodyUpdateRoleEnum siteManager = _$siteMembershipBodyUpdateRoleEnum_siteManager;

  static Serializer<SiteMembershipBodyUpdateRoleEnum> get serializer => _$siteMembershipBodyUpdateRoleEnumSerializer;

  const SiteMembershipBodyUpdateRoleEnum._(String name) : super(name);

  static BuiltSet<SiteMembershipBodyUpdateRoleEnum> get values => _$siteMembershipBodyUpdateRoleEnumValues;
  static SiteMembershipBodyUpdateRoleEnum valueOf(String name) => _$siteMembershipBodyUpdateRoleEnumValueOf(name);
}
