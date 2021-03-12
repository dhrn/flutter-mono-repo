//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'constraint.g.dart';

abstract class Constraint implements Built<Constraint, ConstraintBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  /// the type of the constraint
  @nullable
  @BuiltValueField(wireName: r'type')
  String get type;

  /// the human-readable constraint title
  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  /// the human-readable constraint description
  @nullable
  @BuiltValueField(wireName: r'description')
  String get description;

  @nullable
  @BuiltValueField(wireName: r'parameters')
  BuiltMap<String, JsonObject> get parameters;

  // Boilerplate code needed to wire-up generated code
  Constraint._();

  static void _initializeBuilder(ConstraintBuilder b) => b;

  factory Constraint([void updates(ConstraintBuilder b)]) = _$Constraint;
  static Serializer<Constraint> get serializer => _$constraintSerializer;
}
