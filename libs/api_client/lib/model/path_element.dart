//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'path_element.g.dart';

abstract class PathElement implements Built<PathElement, PathElementBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: r'nodeType')
  String get nodeType;

  @nullable
  @BuiltValueField(wireName: r'aspectNames')
  BuiltList<String> get aspectNames;

  // Boilerplate code needed to wire-up generated code
  PathElement._();

  static void _initializeBuilder(PathElementBuilder b) => b;

  factory PathElement([void updates(PathElementBuilder b)]) = _$PathElement;
  static Serializer<PathElement> get serializer => _$pathElementSerializer;
}
