//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/property.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'definition.g.dart';

abstract class Definition implements Built<Definition, DefinitionBuilder> {
  /// List of property definitions effective for this node as the result of combining the type with all aspects.
  @nullable
  @BuiltValueField(wireName: r'properties')
  BuiltList<Property> get properties;

  // Boilerplate code needed to wire-up generated code
  Definition._();

  static void _initializeBuilder(DefinitionBuilder b) => b;

  factory Definition([void updates(DefinitionBuilder b)]) = _$Definition;
  static Serializer<Definition> get serializer => _$definitionSerializer;
}
