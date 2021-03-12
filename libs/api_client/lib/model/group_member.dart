//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_member.g.dart';

abstract class GroupMember implements Built<GroupMember, GroupMemberBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: r'memberType')
  GroupMemberMemberTypeEnum get memberType;
  // enum memberTypeEnum {  GROUP,  PERSON,  };

  // Boilerplate code needed to wire-up generated code
  GroupMember._();

  static void _initializeBuilder(GroupMemberBuilder b) => b;

  factory GroupMember([void updates(GroupMemberBuilder b)]) = _$GroupMember;
  static Serializer<GroupMember> get serializer => _$groupMemberSerializer;
}

class GroupMemberMemberTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GROUP')
  static const GroupMemberMemberTypeEnum GROUP = _$groupMemberMemberTypeEnum_GROUP;
  @BuiltValueEnumConst(wireName: r'PERSON')
  static const GroupMemberMemberTypeEnum PERSON = _$groupMemberMemberTypeEnum_PERSON;

  static Serializer<GroupMemberMemberTypeEnum> get serializer => _$groupMemberMemberTypeEnumSerializer;

  const GroupMemberMemberTypeEnum._(String name) : super(name);

  static BuiltSet<GroupMemberMemberTypeEnum> get values => _$groupMemberMemberTypeEnumValues;
  static GroupMemberMemberTypeEnum valueOf(String name) => _$groupMemberMemberTypeEnumValueOf(name);
}
