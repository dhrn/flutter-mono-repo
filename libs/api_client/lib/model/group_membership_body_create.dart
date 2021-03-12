//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_membership_body_create.g.dart';

abstract class GroupMembershipBodyCreate implements Built<GroupMembershipBodyCreate, GroupMembershipBodyCreateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'memberType')
  GroupMembershipBodyCreateMemberTypeEnum get memberType;
  // enum memberTypeEnum {  GROUP,  PERSON,  };

  // Boilerplate code needed to wire-up generated code
  GroupMembershipBodyCreate._();

  static void _initializeBuilder(GroupMembershipBodyCreateBuilder b) => b;

  factory GroupMembershipBodyCreate([void updates(GroupMembershipBodyCreateBuilder b)]) = _$GroupMembershipBodyCreate;
  static Serializer<GroupMembershipBodyCreate> get serializer => _$groupMembershipBodyCreateSerializer;
}

class GroupMembershipBodyCreateMemberTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GROUP')
  static const GroupMembershipBodyCreateMemberTypeEnum GROUP = _$groupMembershipBodyCreateMemberTypeEnum_GROUP;
  @BuiltValueEnumConst(wireName: r'PERSON')
  static const GroupMembershipBodyCreateMemberTypeEnum PERSON = _$groupMembershipBodyCreateMemberTypeEnum_PERSON;

  static Serializer<GroupMembershipBodyCreateMemberTypeEnum> get serializer =>
      _$groupMembershipBodyCreateMemberTypeEnumSerializer;

  const GroupMembershipBodyCreateMemberTypeEnum._(String name) : super(name);

  static BuiltSet<GroupMembershipBodyCreateMemberTypeEnum> get values =>
      _$groupMembershipBodyCreateMemberTypeEnumValues;
  static GroupMembershipBodyCreateMemberTypeEnum valueOf(String name) =>
      _$groupMembershipBodyCreateMemberTypeEnumValueOf(name);
}
