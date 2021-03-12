//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:api_client/model/constraint.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'property.g.dart';

abstract class Property implements Built<Property, PropertyBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  /// the human-readable title
  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  /// the human-readable description
  @nullable
  @BuiltValueField(wireName: r'description')
  String get description;

  /// the default value
  @nullable
  @BuiltValueField(wireName: r'defaultValue')
  String get defaultValue;

  /// the name of the property type (i.g. d:text)
  @nullable
  @BuiltValueField(wireName: r'dataType')
  String get dataType;

  /// define if the property is multi-valued
  @nullable
  @BuiltValueField(wireName: r'isMultiValued')
  bool get isMultiValued;

  /// define if the property is mandatory
  @nullable
  @BuiltValueField(wireName: r'isMandatory')
  bool get isMandatory;

  /// define if the presence of mandatory properties is enforced
  @nullable
  @BuiltValueField(wireName: r'isMandatoryEnforced')
  bool get isMandatoryEnforced;

  /// define if the property is system maintained
  @nullable
  @BuiltValueField(wireName: r'isProtected')
  bool get isProtected;

  /// list of constraints defined for the property
  @nullable
  @BuiltValueField(wireName: r'constraints')
  BuiltList<Constraint> get constraints;

  // Boilerplate code needed to wire-up generated code
  Property._();

  static void _initializeBuilder(PropertyBuilder b) => b;

  factory Property([void updates(PropertyBuilder b)]) = _$Property;
  static Serializer<Property> get serializer => _$propertySerializer;
}
