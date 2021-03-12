//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/person.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_member.g.dart';

abstract class SiteMember implements Built<SiteMember, SiteMemberBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'person')
  Person get person;

  @nullable
  @BuiltValueField(wireName: r'role')
  SiteMemberRoleEnum get role;
  // enum roleEnum {  SiteConsumer,  SiteCollaborator,  SiteContributor,  SiteManager,  };

  @nullable
  @BuiltValueField(wireName: r'isMemberOfGroup')
  bool get isMemberOfGroup;

  // Boilerplate code needed to wire-up generated code
  SiteMember._();

  static void _initializeBuilder(SiteMemberBuilder b) => b;

  factory SiteMember([void updates(SiteMemberBuilder b)]) = _$SiteMember;
  static Serializer<SiteMember> get serializer => _$siteMemberSerializer;
}

class SiteMemberRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SiteConsumer')
  static const SiteMemberRoleEnum siteConsumer = _$siteMemberRoleEnum_siteConsumer;
  @BuiltValueEnumConst(wireName: r'SiteCollaborator')
  static const SiteMemberRoleEnum siteCollaborator = _$siteMemberRoleEnum_siteCollaborator;
  @BuiltValueEnumConst(wireName: r'SiteContributor')
  static const SiteMemberRoleEnum siteContributor = _$siteMemberRoleEnum_siteContributor;
  @BuiltValueEnumConst(wireName: r'SiteManager')
  static const SiteMemberRoleEnum siteManager = _$siteMemberRoleEnum_siteManager;

  static Serializer<SiteMemberRoleEnum> get serializer => _$siteMemberRoleEnumSerializer;

  const SiteMemberRoleEnum._(String name) : super(name);

  static BuiltSet<SiteMemberRoleEnum> get values => _$siteMemberRoleEnumValues;
  static SiteMemberRoleEnum valueOf(String name) => _$siteMemberRoleEnumValueOf(name);
}
