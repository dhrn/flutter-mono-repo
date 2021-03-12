//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group.g.dart';

abstract class Group implements Built<Group, GroupBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: r'isRoot')
  bool get isRoot;

  @nullable
  @BuiltValueField(wireName: r'parentIds')
  BuiltList<String> get parentIds;

  @nullable
  @BuiltValueField(wireName: r'zones')
  BuiltList<String> get zones;

  // Boilerplate code needed to wire-up generated code
  Group._();

  static void _initializeBuilder(GroupBuilder b) => b..isRoot = true;

  factory Group([void updates(GroupBuilder b)]) = _$Group;
  static Serializer<Group> get serializer => _$groupSerializer;
}
