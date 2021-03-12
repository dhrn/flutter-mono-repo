//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/path_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'path_info.g.dart';

abstract class PathInfo implements Built<PathInfo, PathInfoBuilder> {
  @nullable
  @BuiltValueField(wireName: r'elements')
  BuiltList<PathElement> get elements;

  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: r'isComplete')
  bool get isComplete;

  // Boilerplate code needed to wire-up generated code
  PathInfo._();

  static void _initializeBuilder(PathInfoBuilder b) => b;

  factory PathInfo([void updates(PathInfoBuilder b)]) = _$PathInfo;
  static Serializer<PathInfo> get serializer => _$pathInfoSerializer;
}
