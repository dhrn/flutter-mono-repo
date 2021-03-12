//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'child_association.g.dart';

abstract class ChildAssociation implements Built<ChildAssociation, ChildAssociationBuilder> {
  @nullable
  @BuiltValueField(wireName: r'childId')
  String get childId;

  @nullable
  @BuiltValueField(wireName: r'assocType')
  String get assocType;

  // Boilerplate code needed to wire-up generated code
  ChildAssociation._();

  static void _initializeBuilder(ChildAssociationBuilder b) => b;

  factory ChildAssociation([void updates(ChildAssociationBuilder b)]) = _$ChildAssociation;
  static Serializer<ChildAssociation> get serializer => _$childAssociationSerializer;
}
