//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/group_member.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_group.g.dart';

abstract class SiteGroup implements Built<SiteGroup, SiteGroupBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'group')
  GroupMember get group;

  @nullable
  @BuiltValueField(wireName: r'role')
  SiteGroupRoleEnum get role;
  // enum roleEnum {  SiteConsumer,  SiteCollaborator,  SiteContributor,  SiteManager,  };

  // Boilerplate code needed to wire-up generated code
  SiteGroup._();

  static void _initializeBuilder(SiteGroupBuilder b) => b;

  factory SiteGroup([void updates(SiteGroupBuilder b)]) = _$SiteGroup;
  static Serializer<SiteGroup> get serializer => _$siteGroupSerializer;
}

class SiteGroupRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SiteConsumer')
  static const SiteGroupRoleEnum siteConsumer = _$siteGroupRoleEnum_siteConsumer;
  @BuiltValueEnumConst(wireName: r'SiteCollaborator')
  static const SiteGroupRoleEnum siteCollaborator = _$siteGroupRoleEnum_siteCollaborator;
  @BuiltValueEnumConst(wireName: r'SiteContributor')
  static const SiteGroupRoleEnum siteContributor = _$siteGroupRoleEnum_siteContributor;
  @BuiltValueEnumConst(wireName: r'SiteManager')
  static const SiteGroupRoleEnum siteManager = _$siteGroupRoleEnum_siteManager;

  static Serializer<SiteGroupRoleEnum> get serializer => _$siteGroupRoleEnumSerializer;

  const SiteGroupRoleEnum._(String name) : super(name);

  static BuiltSet<SiteGroupRoleEnum> get values => _$siteGroupRoleEnumValues;
  static SiteGroupRoleEnum valueOf(String name) => _$siteGroupRoleEnumValueOf(name);
}
