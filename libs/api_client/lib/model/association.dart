//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'association.g.dart';

abstract class Association implements Built<Association, AssociationBuilder> {
  @nullable
  @BuiltValueField(wireName: r'targetId')
  String get targetId;

  @nullable
  @BuiltValueField(wireName: r'assocType')
  String get assocType;

  // Boilerplate code needed to wire-up generated code
  Association._();

  static void _initializeBuilder(AssociationBuilder b) => b;

  factory Association([void updates(AssociationBuilder b)]) = _$Association;
  static Serializer<Association> get serializer => _$associationSerializer;
}
