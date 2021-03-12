//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_body_update.g.dart';

abstract class GroupBodyUpdate implements Built<GroupBodyUpdate, GroupBodyUpdateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  // Boilerplate code needed to wire-up generated code
  GroupBodyUpdate._();

  static void _initializeBuilder(GroupBodyUpdateBuilder b) => b;

  factory GroupBodyUpdate([void updates(GroupBodyUpdateBuilder b)]) = _$GroupBodyUpdate;
  static Serializer<GroupBodyUpdate> get serializer => _$groupBodyUpdateSerializer;
}
