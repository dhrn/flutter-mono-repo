//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'child_association_body.g.dart';

abstract class ChildAssociationBody implements Built<ChildAssociationBody, ChildAssociationBodyBuilder> {
  @nullable
  @BuiltValueField(wireName: r'childId')
  String get childId;

  @nullable
  @BuiltValueField(wireName: r'assocType')
  String get assocType;

  // Boilerplate code needed to wire-up generated code
  ChildAssociationBody._();

  static void _initializeBuilder(ChildAssociationBodyBuilder b) => b;

  factory ChildAssociationBody([void updates(ChildAssociationBodyBuilder b)]) = _$ChildAssociationBody;
  static Serializer<ChildAssociationBody> get serializer => _$childAssociationBodySerializer;
}
