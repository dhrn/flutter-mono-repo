//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_body_create.g.dart';

abstract class GroupBodyCreate implements Built<GroupBodyCreate, GroupBodyCreateBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: r'parentIds')
  BuiltList<String> get parentIds;

  // Boilerplate code needed to wire-up generated code
  GroupBodyCreate._();

  static void _initializeBuilder(GroupBodyCreateBuilder b) => b;

  factory GroupBodyCreate([void updates(GroupBodyCreateBuilder b)]) = _$GroupBodyCreate;
  static Serializer<GroupBodyCreate> get serializer => _$groupBodyCreateSerializer;
}
