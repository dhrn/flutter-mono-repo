//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info.g.dart';

abstract class UserInfo implements Built<UserInfo, UserInfoBuilder> {
  @nullable
  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  // Boilerplate code needed to wire-up generated code
  UserInfo._();

  static void _initializeBuilder(UserInfoBuilder b) => b;

  factory UserInfo([void updates(UserInfoBuilder b)]) = _$UserInfo;
  static Serializer<UserInfo> get serializer => _$userInfoSerializer;
}
